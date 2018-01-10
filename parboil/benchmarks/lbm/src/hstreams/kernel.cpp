/* $Id: lbm.c,v 1.1 2008/03/04 17:30:02 stratton Exp $ */

/*############################################################################*/

#include "lbm.h"
#include <math.h>
#include <stdlib.h>
#include <stdio.h>


#include <omp.h>
#include <sink/COIPipeline_sink.h>


/*############################################################################*/
#define DFL1 (1.0/ 3.0)
#define DFL2 (1.0/18.0)
#define DFL3 (1.0/36.0)


void LBM_performStreamCollide( LBM_Grid srcGrid, LBM_Grid dstGrid , int sub_Z) {
	SWEEP_VAR

	float ux, uy, uz, u2, rho;

	/*voption indep*/
#if !defined(SPEC_CPU)
#ifdef _OPENMP
#pragma omp parallel for private( ux, uy, uz, u2, rho )
#endif
#endif
	SWEEP_START( 0, 0, 0, 0, 0, sub_Z)
		if( TEST_FLAG_SWEEP( srcGrid, OBSTACLE )) {
			DST_C ( dstGrid ) = SRC_C ( srcGrid );
			DST_S ( dstGrid ) = SRC_N ( srcGrid );
			DST_N ( dstGrid ) = SRC_S ( srcGrid );
			DST_W ( dstGrid ) = SRC_E ( srcGrid );
			DST_E ( dstGrid ) = SRC_W ( srcGrid );
			DST_B ( dstGrid ) = SRC_T ( srcGrid );
			DST_T ( dstGrid ) = SRC_B ( srcGrid );
			DST_SW( dstGrid ) = SRC_NE( srcGrid );
			DST_SE( dstGrid ) = SRC_NW( srcGrid );
			DST_NW( dstGrid ) = SRC_SE( srcGrid );
			DST_NE( dstGrid ) = SRC_SW( srcGrid );
			DST_SB( dstGrid ) = SRC_NT( srcGrid );
			DST_ST( dstGrid ) = SRC_NB( srcGrid );
			DST_NB( dstGrid ) = SRC_ST( srcGrid );
			DST_NT( dstGrid ) = SRC_SB( srcGrid );
			DST_WB( dstGrid ) = SRC_ET( srcGrid );
			DST_WT( dstGrid ) = SRC_EB( srcGrid );
			DST_EB( dstGrid ) = SRC_WT( srcGrid );
			DST_ET( dstGrid ) = SRC_WB( srcGrid );
			continue;
		}

		rho = + SRC_C ( srcGrid ) + SRC_N ( srcGrid )
		      + SRC_S ( srcGrid ) + SRC_E ( srcGrid )
		      + SRC_W ( srcGrid ) + SRC_T ( srcGrid )
		      + SRC_B ( srcGrid ) + SRC_NE( srcGrid )
		      + SRC_NW( srcGrid ) + SRC_SE( srcGrid )
		      + SRC_SW( srcGrid ) + SRC_NT( srcGrid )
		      + SRC_NB( srcGrid ) + SRC_ST( srcGrid )
		      + SRC_SB( srcGrid ) + SRC_ET( srcGrid )
		      + SRC_EB( srcGrid ) + SRC_WT( srcGrid )
		      + SRC_WB( srcGrid );

		ux = + SRC_E ( srcGrid ) - SRC_W ( srcGrid )
		     + SRC_NE( srcGrid ) - SRC_NW( srcGrid )
		     + SRC_SE( srcGrid ) - SRC_SW( srcGrid )
		     + SRC_ET( srcGrid ) + SRC_EB( srcGrid )
		     - SRC_WT( srcGrid ) - SRC_WB( srcGrid );
		uy = + SRC_N ( srcGrid ) - SRC_S ( srcGrid )
		     + SRC_NE( srcGrid ) + SRC_NW( srcGrid )
		     - SRC_SE( srcGrid ) - SRC_SW( srcGrid )
		     + SRC_NT( srcGrid ) + SRC_NB( srcGrid )
		     - SRC_ST( srcGrid ) - SRC_SB( srcGrid );
		uz = + SRC_T ( srcGrid ) - SRC_B ( srcGrid )
		     + SRC_NT( srcGrid ) - SRC_NB( srcGrid )
		     + SRC_ST( srcGrid ) - SRC_SB( srcGrid )
		     + SRC_ET( srcGrid ) - SRC_EB( srcGrid )
		     + SRC_WT( srcGrid ) - SRC_WB( srcGrid );

		ux /= rho;
		uy /= rho;
		uz /= rho;

		if( TEST_FLAG_SWEEP( srcGrid, ACCEL )) {
			ux = 0.005f;
			uy = 0.002f;
			uz = 0.000f;
		}

		u2 = 1.5f * (ux*ux + uy*uy + uz*uz);
		DST_C ( dstGrid ) = (1.0f-OMEGA)*SRC_C ( srcGrid ) + DFL1*OMEGA*rho*(1.0f                                 - u2);

		DST_N ( dstGrid ) = (1.0f-OMEGA)*SRC_N ( srcGrid ) + DFL2*OMEGA*rho*(1.0f +       uy*(4.5f*uy       + 3.0f) - u2);
		DST_S ( dstGrid ) = (1.0f-OMEGA)*SRC_S ( srcGrid ) + DFL2*OMEGA*rho*(1.0f +       uy*(4.5f*uy       - 3.0f) - u2);
		DST_E ( dstGrid ) = (1.0f-OMEGA)*SRC_E ( srcGrid ) + DFL2*OMEGA*rho*(1.0f +       ux*(4.5f*ux       + 3.0f) - u2);
		DST_W ( dstGrid ) = (1.0f-OMEGA)*SRC_W ( srcGrid ) + DFL2*OMEGA*rho*(1.0f +       ux*(4.5f*ux       - 3.0f) - u2);
		DST_T ( dstGrid ) = (1.0f-OMEGA)*SRC_T ( srcGrid ) + DFL2*OMEGA*rho*(1.0f +       uz*(4.5f*uz       + 3.0f) - u2);
		DST_B ( dstGrid ) = (1.0f-OMEGA)*SRC_B ( srcGrid ) + DFL2*OMEGA*rho*(1.0f +       uz*(4.5f*uz       - 3.0f) - u2);

		DST_NE( dstGrid ) = (1.0f-OMEGA)*SRC_NE( srcGrid ) + DFL3*OMEGA*rho*(1.0f + (+ux+uy)*(4.5f*(+ux+uy) + 3.0f) - u2);
		DST_NW( dstGrid ) = (1.0f-OMEGA)*SRC_NW( srcGrid ) + DFL3*OMEGA*rho*(1.0f + (-ux+uy)*(4.5f*(-ux+uy) + 3.0f) - u2);
		DST_SE( dstGrid ) = (1.0f-OMEGA)*SRC_SE( srcGrid ) + DFL3*OMEGA*rho*(1.0f + (+ux-uy)*(4.5f*(+ux-uy) + 3.0f) - u2);
		DST_SW( dstGrid ) = (1.0f-OMEGA)*SRC_SW( srcGrid ) + DFL3*OMEGA*rho*(1.0f + (-ux-uy)*(4.5f*(-ux-uy) + 3.0f) - u2);
		DST_NT( dstGrid ) = (1.0f-OMEGA)*SRC_NT( srcGrid ) + DFL3*OMEGA*rho*(1.0f + (+uy+uz)*(4.5f*(+uy+uz) + 3.0f) - u2);
		DST_NB( dstGrid ) = (1.0f-OMEGA)*SRC_NB( srcGrid ) + DFL3*OMEGA*rho*(1.0f + (+uy-uz)*(4.5f*(+uy-uz) + 3.0f) - u2);
		DST_ST( dstGrid ) = (1.0f-OMEGA)*SRC_ST( srcGrid ) + DFL3*OMEGA*rho*(1.0f + (-uy+uz)*(4.5f*(-uy+uz) + 3.0f) - u2);
		DST_SB( dstGrid ) = (1.0f-OMEGA)*SRC_SB( srcGrid ) + DFL3*OMEGA*rho*(1.0f + (-uy-uz)*(4.5f*(-uy-uz) + 3.0f) - u2);
		DST_ET( dstGrid ) = (1.0f-OMEGA)*SRC_ET( srcGrid ) + DFL3*OMEGA*rho*(1.0f + (+ux+uz)*(4.5f*(+ux+uz) + 3.0f) - u2);
		DST_EB( dstGrid ) = (1.0f-OMEGA)*SRC_EB( srcGrid ) + DFL3*OMEGA*rho*(1.0f + (+ux-uz)*(4.5f*(+ux-uz) + 3.0f) - u2);
		DST_WT( dstGrid ) = (1.0f-OMEGA)*SRC_WT( srcGrid ) + DFL3*OMEGA*rho*(1.0f + (-ux+uz)*(4.5f*(-ux+uz) + 3.0f) - u2);
		DST_WB( dstGrid ) = (1.0f-OMEGA)*SRC_WB( srcGrid ) + DFL3*OMEGA*rho*(1.0f + (-ux-uz)*(4.5f*(-ux-uz) + 3.0f) - u2);
	SWEEP_END
}

COINATIVELIBEXPORT
void kernel (uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3)
{
	int t;
	int nTimeSteps = (int) arg0;	
	int sub_Z = (int) arg1;	
	float *srcGrid = (float *) arg2;
	float *dstGrid = (float *) arg3;
	float *tmp;
	srcGrid += 2*SIZE_X*SIZE_Y*N_CELL_ENTRIES;
	dstGrid += 2*SIZE_X*SIZE_Y*N_CELL_ENTRIES;
       for( t = 1; t <= nTimeSteps; t++ ) {

         LBM_performStreamCollide( srcGrid, dstGrid , sub_Z);
	tmp = srcGrid;
	srcGrid = dstGrid;
	dstGrid = tmp;
       }
}
