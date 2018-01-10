; ModuleID = 'main'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux"

; Function Attrs: noduplicate nounwind
declare void @__opencl_cutoff_potential_lattice_before.AddImplicitArgs(i32, i32, <4 x float> addrspace(1)* nocapture readonly, i32, float, float, float, float addrspace(1)* nocapture, i32, i32 addrspace(2)* nocapture readonly, <4 x i32> addrspace(2)* nocapture readonly) #0

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_num_groupsj(i32) #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) #1

; Function Attrs: noduplicate
declare void @_Z7barrierj(i32) #2

; Function Attrs: noduplicate nounwind
declare void @____Vectorized_.opencl_cutoff_potential_lattice_before.AddImplicitArgs(i32, i32, <4 x float> addrspace(1)* nocapture readonly, i32, float, float, float, float addrspace(1)* nocapture, i32, i32 addrspace(2)* nocapture readonly, <4 x i32> addrspace(2)* nocapture readonly) #0

declare i1 @__ocl_allOne(i1)

declare i1 @__ocl_allZero(i1)

declare <4 x i32> @masked_load_align16_0(i1, <4 x i32> addrspace(2)*)

declare float @masked_load_align4_1(i1, float addrspace(1)*)

declare void @masked_store_align4_0(i1, float, float addrspace(3)*)

declare float @masked_load_align4_2(i1, float addrspace(1)*)

declare void @masked_store_align4_1(i1, float, float addrspace(3)*)

declare <4 x i32> @masked_load_align16_3(i1, <4 x i32> addrspace(2)*)

declare float @masked_load_align4_4(i1, float addrspace(1)*)

declare void @masked_store_align4_2(i1, float, float addrspace(3)*)

declare float @masked_load_align4_5(i1, float addrspace(1)*)

declare void @masked_store_align4_3(i1, float, float addrspace(3)*)

declare <4 x i32> @masked_load_align16_6(i1, <4 x i32> addrspace(2)*)

declare float @masked_load_align4_7(i1, float addrspace(1)*)

declare void @masked_store_align4_4(i1, float, float addrspace(3)*)

declare float @masked_load_align4_8(i1, float addrspace(1)*)

declare void @masked_store_align4_5(i1, float, float addrspace(3)*)

declare <4 x i32> @masked_load_align16_9(i1, <4 x i32> addrspace(2)*)

declare float @masked_load_align4_10(i1, float addrspace(1)*)

declare void @masked_store_align4_6(i1, float, float addrspace(3)*)

declare float @masked_load_align4_11(i1, float addrspace(1)*)

declare void @masked_store_align4_7(i1, float, float addrspace(3)*)

; Function Attrs: nounwind readnone
declare i1 @__ocl_allZero_v8(<8 x i1>) #3

; Function Attrs: nounwind readnone
declare i1 @__ocl_allOne_v8(<8 x i1>) #3

declare void @dummybarrier.()

; Function Attrs: nounwind readnone
declare i8* @get_special_buffer.() #3

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) #3

; Function Attrs: alwaysinline noduplicate nounwind
declare void @__opencl_cutoff_potential_lattice_separated_args(i32, i32, <4 x float> addrspace(1)* nocapture readonly, i32, float, float, float, float addrspace(1)* nocapture, i32, i32 addrspace(2)* nocapture readonly, <4 x i32> addrspace(2)* nocapture readonly, i8 addrspace(3)* noalias, { i64, [3 x i64], [3 x i64], [2 x [3 x i64]], [3 x i64], {}*, {}* }* noalias, i64* noalias, [4 x i64], i8* noalias, {}* noalias) #4

; Function Attrs: alwaysinline noduplicate nounwind
declare void @____Vectorized_.opencl_cutoff_potential_lattice_separated_args(i32, i32, <4 x float> addrspace(1)* nocapture readonly, i32, float, float, float, float addrspace(1)* nocapture, i32, i32 addrspace(2)* nocapture readonly, <4 x i32> addrspace(2)* nocapture readonly, i8 addrspace(3)* noalias, { i64, [3 x i64], [3 x i64], [2 x [3 x i64]], [3 x i64], {}*, {}* }* noalias, i64* noalias, [4 x i64], i8* noalias, {}* noalias) #4

; Function Attrs: nounwind readnone
declare i32 @llvm.x86.avx.ptestc.256(<4 x i64>, <4 x i64>) #3

; Function Attrs: nounwind readnone
declare i32 @llvm.x86.avx.ptestz.256(<4 x i64>, <4 x i64>) #3

; Function Attrs: nounwind readnone
declare <8 x float> @llvm.x86.avx.sqrt.ps.256(<8 x float>) #3

; Function Attrs: nounwind readnone
declare i32 @llvm.x86.avx.movmsk.ps.256(<8 x float>) #3

; Function Attrs: nounwind readnone
declare <8 x i32> @_Z21__ocl_helper_shuffle2Dv4_iS_Dv8_j(<4 x i32>, <4 x i32>, <8 x i32>) #1

; Function Attrs: nounwind readnone
declare <8 x i32> @_Z21__ocl_helper_shuffle2Dv8_iS_Dv8_j(<8 x i32>, <8 x i32>, <8 x i32>) #1

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.x86.sse.sqrt.ps(<4 x float>) #3

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.x86.sse41.round.ps(<4 x float>, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

define void @opencl_cutoff_potential_lattice(i8* noalias %pUniformArgs, i64* noalias %pWGId, {}* noalias %RuntimeHandle) {
wrapper_entry:
  %pLocalIds.i = alloca [3 x i64], align 8
  %0 = bitcast i8* %pUniformArgs to i32*
  %explicit_0 = load i32* %0, align 4
  %1 = getelementptr i8* %pUniformArgs, i64 4
  %2 = bitcast i8* %1 to i32*
  %explicit_1 = load i32* %2, align 4
  %3 = getelementptr i8* %pUniformArgs, i64 8
  %4 = bitcast i8* %3 to <4 x float> addrspace(1)**
  %explicit_2 = load <4 x float> addrspace(1)** %4, align 8
  %5 = getelementptr i8* %pUniformArgs, i64 16
  %6 = bitcast i8* %5 to i32*
  %explicit_3 = load i32* %6, align 4
  %7 = getelementptr i8* %pUniformArgs, i64 20
  %8 = bitcast i8* %7 to float*
  %explicit_4 = load float* %8, align 4
  %9 = getelementptr i8* %pUniformArgs, i64 24
  %10 = bitcast i8* %9 to float*
  %explicit_5 = load float* %10, align 4
  %11 = getelementptr i8* %pUniformArgs, i64 28
  %12 = bitcast i8* %11 to float*
  %explicit_6 = load float* %12, align 4
  %13 = getelementptr i8* %pUniformArgs, i64 32
  %14 = bitcast i8* %13 to float addrspace(1)**
  %explicit_7 = load float addrspace(1)** %14, align 8
  %15 = getelementptr i8* %pUniformArgs, i64 40
  %16 = bitcast i8* %15 to i32*
  %explicit_8 = load i32* %16, align 4
  %17 = sext i32 %explicit_8 to i64
  %18 = getelementptr i8* %pUniformArgs, i64 48
  %19 = bitcast i8* %18 to i32 addrspace(2)**
  %explicit_9 = load i32 addrspace(2)** %19, align 8
  %20 = getelementptr i8* %pUniformArgs, i64 56
  %21 = bitcast i8* %20 to <4 x i32> addrspace(2)**
  %explicit_10 = load <4 x i32> addrspace(2)** %21, align 8
  %22 = alloca [4480 x i8], align 128
  %23 = getelementptr i8* %pUniformArgs, i64 120
  %24 = bitcast i8* %23 to i64*
  %LocalSize_0 = load i64* %24, align 8
  %25 = getelementptr i8* %pUniformArgs, i64 128
  %26 = bitcast i8* %25 to i64*
  %LocalSize_1 = load i64* %26, align 8
  %27 = getelementptr i8* %pUniformArgs, i64 136
  %28 = bitcast i8* %27 to i64*
  %LocalSize_2 = load i64* %28, align 8
  %29 = mul i64 %LocalSize_0, 72
  %30 = mul i64 %29, %LocalSize_1
  %BarrierBufferSize = mul i64 %30, %LocalSize_2
  %pSpecialBuf = alloca i8, i64 %BarrierBufferSize, align 128
  %31 = bitcast [3 x i64]* %pLocalIds.i to i8*
  call void @llvm.lifetime.start(i64 24, i8* %31)
  %32 = getelementptr [4480 x i8]* %22, i64 0, i64 4224
  %pLocalId_0.i6 = bitcast [3 x i64]* %pLocalIds.i to i64*
  %pLocalId_1.i = getelementptr inbounds [3 x i64]* %pLocalIds.i, i64 0, i64 1
  %pLocalId_2.i = getelementptr inbounds [3 x i64]* %pLocalIds.i, i64 0, i64 2
  store i64 0, i64* %pLocalId_0.i6, align 8, !noalias !44
  store i64 0, i64* %pLocalId_1.i, align 8, !noalias !44
  store i64 0, i64* %pLocalId_2.i, align 8, !noalias !44
  %33 = sext i32 %explicit_3 to i64
  %34 = sext i32 %explicit_8 to i64
  %35 = getelementptr i8* %pUniformArgs, i64 176
  %36 = bitcast i8* %35 to i64*
  %NumGroups_1.i = load i64* %36, align 8, !alias.scope !50, !noalias !51
  %37 = mul i64 %NumGroups_1.i, %34
  %38 = getelementptr i64* %pWGId, i64 1
  %GroupID_1.i = load i64* %38, align 8, !alias.scope !52, !noalias !53
  %39 = add i64 %37, %GroupID_1.i
  %40 = getelementptr i8* %pUniformArgs, i64 168
  %41 = bitcast i8* %40 to i64*
  %NumGroups_0.i = load i64* %41, align 8, !alias.scope !50, !noalias !51
  %42 = lshr i64 %NumGroups_0.i, 2
  %43 = mul i64 %42, %39
  %GroupID_0.i = load i64* %pWGId, align 8, !alias.scope !52, !noalias !53
  %44 = lshr i64 %GroupID_0.i, 2
  %45 = add i64 %43, %44
  %46 = shl i64 %45, 9
  %47 = shl i64 %GroupID_0.i, 7
  %48 = and i64 %47, 384
  %.sum.i = or i64 %46, %48
  %49 = shl i64 %44, 3
  %50 = shl i64 %GroupID_1.i, 3
  %51 = shl nsw i64 %17, 3
  %promoted = trunc i64 %51 to i32
  %52 = shl i64 %GroupID_0.i, 1
  %53 = and i64 %52, 6
  %54 = or i64 %53, %51
  %55 = or i64 %49, 4
  %56 = uitofp i64 %55 to float
  %57 = fmul float %56, %explicit_4
  %58 = fmul float %57, 2.500000e-01
  %59 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %58, i64 0
  %60 = call <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %59, i32 1) #5
  %61 = extractelement <4 x float> %60, i64 0
  %62 = fptosi float %61 to i32
  %63 = or i64 %50, 4
  %64 = uitofp i64 %63 to float
  %65 = fmul float %64, %explicit_4
  %66 = fmul float %65, 2.500000e-01
  %67 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %66, i64 0
  %68 = call <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %67, i32 1) #5
  %69 = extractelement <4 x float> %68, i64 0
  %70 = fptosi float %69 to i32
  %71 = or i32 %promoted, 4
  %72 = sitofp i32 %71 to float
  %73 = fmul float %72, %explicit_4
  %74 = fmul float %73, 2.500000e-01
  %75 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %74, i64 0
  %76 = call <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %75, i32 1) #5
  %77 = extractelement <4 x float> %76, i64 0
  %78 = fptosi float %77 to i32
  %79 = load i32 addrspace(2)* %explicit_9, align 1, !noalias !44
  %80 = sext i32 %79 to i64
  br label %SyncBB3.i

SyncBB3.i:                                        ; preds = %Dispatch.i, %Dispatch315.i, %wrapper_entry
  %.lcssa336.i = phi i64 [ 0, %wrapper_entry ], [ %.lcssa330.i, %Dispatch315.i ], [ %.lcssa334.i, %Dispatch.i ]
  %81 = phi i64 [ 0, %wrapper_entry ], [ %159, %Dispatch315.i ], [ %241, %Dispatch.i ]
  %82 = phi i64 [ 0, %wrapper_entry ], [ %160, %Dispatch315.i ], [ %242, %Dispatch.i ]
  %.0.i = phi i64 [ undef, %wrapper_entry ], [ %.1.i, %Dispatch315.i ], [ %.3.i, %Dispatch.i ]
  %pCurrBarrier.0.i = phi i32 [ 6, %wrapper_entry ], [ %pCurrBarrier.1.i, %Dispatch315.i ], [ %pCurrBarrier.3.i, %Dispatch.i ]
  %pCurrSBIndex.0.i = phi i64 [ 0, %wrapper_entry ], [ %161, %Dispatch315.i ], [ %243, %Dispatch.i ]
  %83 = trunc i64 %80 to i32
  %84 = icmp sgt i32 %83, 0
  %85 = shl i64 %.lcssa336.i, 3
  %86 = add i64 %85, %81
  %87 = shl i64 %86, 3
  %88 = add i64 %87, %82
  %89 = getelementptr inbounds i8* %pSpecialBuf, i64 %pCurrSBIndex.0.i
  %pSB_LocalId.i = bitcast i8* %89 to i64*
  store i64 %88, i64* %pSB_LocalId.i, align 8, !alias.scope !54, !noalias !55
  %90 = trunc i64 %88 to i32
  %91 = add i64 %49, %82
  %92 = uitofp i64 %91 to float
  %93 = fmul float %92, %explicit_4
  %SB_LocalId_Offset46.i = add nuw i64 %pCurrSBIndex.0.i, 8
  %94 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset46.i
  %pSB_LocalId47.i = bitcast i8* %94 to float*
  store float %93, float* %pSB_LocalId47.i, align 4, !alias.scope !54, !noalias !55
  %95 = add i64 %50, %81
  %96 = uitofp i64 %95 to float
  %97 = fmul float %96, %explicit_4
  %SB_LocalId_Offset81.i = add nuw i64 %pCurrSBIndex.0.i, 12
  %98 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset81.i
  %pSB_LocalId82.i = bitcast i8* %98 to float*
  store float %97, float* %pSB_LocalId82.i, align 4, !alias.scope !54, !noalias !55
  %99 = add i64 %54, %.lcssa336.i
  %100 = uitofp i64 %99 to float
  %101 = fmul float %100, %explicit_4
  %SB_LocalId_Offset116.i = add nuw i64 %pCurrSBIndex.0.i, 16
  %102 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset116.i
  %pSB_LocalId117.i = bitcast i8* %102 to float*
  store float %101, float* %pSB_LocalId117.i, align 4, !alias.scope !54, !noalias !55
  %103 = ashr i32 %90, 4
  br i1 %84, label %.lr.ph.i, label %._crit_edge13.i

.lr.ph.i:                                         ; preds = %SyncBB3.i
  %104 = shl i32 %103, 5
  %SB_LocalId_Offset151.i = add nuw i64 %pCurrSBIndex.0.i, 20
  %105 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset151.i
  %pSB_LocalId152.i = bitcast i8* %105 to i32*
  store i32 %104, i32* %pSB_LocalId152.i, align 4, !alias.scope !54, !noalias !55
  %106 = and i32 %90, 15
  %SB_LocalId_Offset170.i = add nuw i64 %pCurrSBIndex.0.i, 24
  %107 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset170.i
  %pSB_LocalId171.i = bitcast i8* %107 to i32*
  store i32 %106, i32* %pSB_LocalId171.i, align 4, !alias.scope !54, !noalias !55
  %108 = zext i32 %106 to i64
  %SB_LocalId_Offset189.i = add nuw i64 %pCurrSBIndex.0.i, 32
  %109 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset189.i
  %pSB_LocalId190.i = bitcast i8* %109 to i64*
  store i64 %108, i64* %pSB_LocalId190.i, align 8, !alias.scope !54, !noalias !55
  %110 = or i32 %106, 16
  %111 = zext i32 %110 to i64
  %SB_LocalId_Offset208.i = add nuw i64 %pCurrSBIndex.0.i, 40
  %112 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset208.i
  %pSB_LocalId209.i = bitcast i8* %112 to i64*
  store i64 %111, i64* %pSB_LocalId209.i, align 8, !alias.scope !54, !noalias !55
  br label %113

; <label>:113                                     ; preds = %._crit_edge19.i, %.lr.ph.i
  %.lcssa331.i = phi i64 [ %.lcssa336.i, %.lr.ph.i ], [ %.lcssa332.i, %._crit_edge19.i ]
  %114 = phi i64 [ %81, %.lr.ph.i ], [ %220, %._crit_edge19.i ]
  %115 = phi i64 [ %82, %.lr.ph.i ], [ %221, %._crit_edge19.i ]
  %.1.i = phi i64 [ %80, %.lr.ph.i ], [ %.2.i, %._crit_edge19.i ]
  %pCurrBarrier.1.i = phi i32 [ %pCurrBarrier.0.i, %.lr.ph.i ], [ 4, %._crit_edge19.i ]
  %pCurrSBIndex.1.i = phi i64 [ %pCurrSBIndex.0.i, %.lr.ph.i ], [ %pCurrSBIndex.3.i, %._crit_edge19.i ]
  %energy.011.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %loadedValue291.i, %._crit_edge19.i ]
  %numbins.010.i = phi i32 [ 32, %.lr.ph.i ], [ %loadedValue280.i, %._crit_edge19.i ]
  %totalbins.09.i = phi i32 [ 0, %.lr.ph.i ], [ %225, %._crit_edge19.i ]
  %nbrid.08.i = phi i32 [ %103, %.lr.ph.i ], [ %loadedValue265.i, %._crit_edge19.i ]
  %116 = trunc i64 %80 to i32
  %SB_LocalId_Offset245.i = add nuw i64 %pCurrSBIndex.1.i, 56
  %117 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset245.i
  %pSB_LocalId246.i = bitcast i8* %117 to i32*
  store i32 %totalbins.09.i, i32* %pSB_LocalId246.i, align 4, !alias.scope !54, !noalias !55
  %SB_LocalId_Offset238.i = add nuw i64 %pCurrSBIndex.1.i, 52
  %118 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset238.i
  %pSB_LocalId239.i = bitcast i8* %118 to i32*
  store i32 %numbins.010.i, i32* %pSB_LocalId239.i, align 4, !alias.scope !54, !noalias !55
  %SB_LocalId_Offset227.i = add nuw i64 %pCurrSBIndex.1.i, 48
  %119 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset227.i
  %pSB_LocalId228.i = bitcast i8* %119 to float*
  store float %energy.011.i, float* %pSB_LocalId228.i, align 4, !alias.scope !54, !noalias !55
  %120 = sext i32 %nbrid.08.i to i64
  %121 = icmp slt i32 %nbrid.08.i, %116
  br i1 %121, label %122, label %.critedge.i

; <label>:122                                     ; preds = %113
  %123 = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 %120
  %124 = load <4 x i32> addrspace(2)* %123, align 1, !noalias !44
  %125 = extractelement <4 x i32> %124, i64 0
  %126 = add nsw i32 %125, %62
  %127 = extractelement <4 x i32> %124, i64 1
  %128 = add nsw i32 %127, %70
  %129 = extractelement <4 x i32> %124, i64 2
  %130 = add nsw i32 %129, %78
  %131 = mul nsw i32 %130, %explicit_1
  %132 = add nsw i32 %128, %131
  %133 = mul nsw i32 %132, %explicit_0
  %134 = add nsw i32 %126, %133
  %135 = shl nsw i32 %134, 5
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds <4 x float> addrspace(1)* %explicit_2, i64 %33, i64 %136
  %SB_LocalId_Offset204.i = add nuw i64 %pCurrSBIndex.1.i, 32
  %138 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset204.i
  %pSB_LocalId205.i = bitcast i8* %138 to i64*
  %loadedValue206.i = load i64* %pSB_LocalId205.i, align 8, !alias.scope !54, !noalias !55
  %139 = getelementptr inbounds float addrspace(1)* %137, i64 %loadedValue206.i
  %140 = load float addrspace(1)* %139, align 1, !noalias !44
  %SB_LocalId_Offset166.i = add nuw i64 %pCurrSBIndex.1.i, 20
  %141 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset166.i
  %pSB_LocalId167.i = bitcast i8* %141 to i32*
  %loadedValue168.i = load i32* %pSB_LocalId167.i, align 4, !alias.scope !54, !noalias !55
  %SB_LocalId_Offset185.i = add nuw i64 %pCurrSBIndex.1.i, 24
  %142 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset185.i
  %pSB_LocalId186.i = bitcast i8* %142 to i32*
  %loadedValue187.i = load i32* %pSB_LocalId186.i, align 4, !alias.scope !54, !noalias !55
  %143 = or i32 %loadedValue168.i, %loadedValue187.i
  %144 = sext i32 %143 to i64
  %sunkaddr = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr10 = mul i64 %144, 4
  %sunkaddr11 = add i64 %sunkaddr, %sunkaddr10
  %sunkaddr12 = add i64 %sunkaddr11, 128
  %sunkaddr13 = inttoptr i64 %sunkaddr12 to float addrspace(3)*
  store float %140, float addrspace(3)* %sunkaddr13, align 4, !alias.scope !56, !noalias !57
  %SB_LocalId_Offset223.i = add nuw i64 %pCurrSBIndex.1.i, 40
  %145 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset223.i
  %pSB_LocalId224.i = bitcast i8* %145 to i64*
  %loadedValue225.i = load i64* %pSB_LocalId224.i, align 8, !alias.scope !54, !noalias !55
  %146 = getelementptr inbounds float addrspace(1)* %137, i64 %loadedValue225.i
  %147 = load float addrspace(1)* %146, align 1, !noalias !44
  %148 = or i32 %143, 16
  %149 = sext i32 %148 to i64
  %sunkaddr14 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr15 = mul i64 %149, 4
  %sunkaddr16 = add i64 %sunkaddr14, %sunkaddr15
  %sunkaddr17 = add i64 %sunkaddr16, 128
  %sunkaddr18 = inttoptr i64 %sunkaddr17 to float addrspace(3)*
  store float %147, float addrspace(3)* %sunkaddr18, align 4, !alias.scope !56, !noalias !57
  %indvars.iv.next.i = add nsw i64 %120, 8
  %150 = icmp slt i64 %indvars.iv.next.i, %.1.i
  %151 = trunc i64 %indvars.iv.next.i to i32
  br i1 %150, label %244, label %.critedge.i

.critedge.i:                                      ; preds = %298, %271, %244, %122, %113
  %nbrid.1.lcssa.i = phi i32 [ %nbrid.08.i, %113 ], [ %151, %122 ], [ %270, %244 ], [ %323, %298 ], [ %297, %271 ]
  %SB_LocalId_Offset260.i = add nuw i64 %pCurrSBIndex.1.i, 60
  %152 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset260.i
  %pSB_LocalId261.i = bitcast i8* %152 to i32*
  store i32 %nbrid.1.lcssa.i, i32* %pSB_LocalId261.i, align 4, !alias.scope !54, !noalias !55
  %153 = add nuw i64 %115, 1
  %154 = icmp ult i64 %153, %LocalSize_0
  br i1 %154, label %Dispatch315.i, label %LoopEnd_0316.i

LoopEnd_0316.i:                                   ; preds = %.critedge.i
  %155 = add nuw i64 %114, 1
  %156 = icmp ult i64 %155, %LocalSize_1
  br i1 %156, label %Dispatch315.i, label %LoopEnd_1318.i

LoopEnd_1318.i:                                   ; preds = %LoopEnd_0316.i
  %157 = add nuw i64 %.lcssa331.i, 1
  %158 = icmp ult i64 %157, %LocalSize_2
  br i1 %158, label %Dispatch315.i, label %SyncBB2.i

Dispatch315.i:                                    ; preds = %LoopEnd_1318.i, %LoopEnd_0316.i, %.critedge.i
  %.lcssa330.i = phi i64 [ %157, %LoopEnd_1318.i ], [ %.lcssa331.i, %LoopEnd_0316.i ], [ %.lcssa331.i, %.critedge.i ]
  %159 = phi i64 [ 0, %LoopEnd_1318.i ], [ %155, %LoopEnd_0316.i ], [ %114, %.critedge.i ]
  %160 = phi i64 [ 0, %LoopEnd_1318.i ], [ 0, %LoopEnd_0316.i ], [ %153, %.critedge.i ]
  %161 = add nuw i64 %pCurrSBIndex.1.i, 72
  %cond11.i = icmp eq i32 %pCurrBarrier.1.i, 4
  br i1 %cond11.i, label %SyncBB1.i, label %SyncBB3.i

SyncBB2.i:                                        ; preds = %LoopEnd_1318.i, %Dispatch307.i
  %162 = phi i64 [ %216, %Dispatch307.i ], [ 0, %LoopEnd_1318.i ]
  %163 = phi i64 [ %217, %Dispatch307.i ], [ 0, %LoopEnd_1318.i ]
  %164 = phi i64 [ %218, %Dispatch307.i ], [ 0, %LoopEnd_1318.i ]
  %pCurrSBIndex.2.i = phi i64 [ %219, %Dispatch307.i ], [ 0, %LoopEnd_1318.i ]
  %165 = trunc i64 %80 to i32
  %166 = trunc i64 %80 to i32
  %SB_LocalId_Offset248.i = add nuw i64 %pCurrSBIndex.2.i, 56
  %167 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset248.i
  %pSB_LocalId249.i = bitcast i8* %167 to i32*
  %loadedValue250.i = load i32* %pSB_LocalId249.i, align 8, !alias.scope !54, !noalias !55
  %168 = add nsw i32 %loadedValue250.i, 32
  %169 = icmp sgt i32 %168, %165
  %170 = sub nsw i32 %166, %loadedValue250.i
  %SB_LocalId_Offset241.i = add nuw i64 %pCurrSBIndex.2.i, 52
  %171 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset241.i
  %pSB_LocalId242.i = bitcast i8* %171 to i32*
  %loadedValue243.i = load i32* %pSB_LocalId242.i, align 4, !alias.scope !54, !noalias !55
  %.numbins.0.i = select i1 %169, i32 %170, i32 %loadedValue243.i
  %SB_LocalId_Offset267.i = add nuw i64 %pCurrSBIndex.2.i, 64
  %172 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset267.i
  %pSB_LocalId268.i = bitcast i8* %172 to i32*
  store i32 %.numbins.0.i, i32* %pSB_LocalId268.i, align 8, !alias.scope !54, !noalias !55
  %173 = icmp sgt i32 %.numbins.0.i, 0
  %SB_LocalId_Offset230.i = add nuw i64 %pCurrSBIndex.2.i, 48
  %174 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset230.i
  %pSB_LocalId231.i = bitcast i8* %174 to float*
  %loadedValue232.i = load float* %pSB_LocalId231.i, align 8, !alias.scope !54, !noalias !55
  br i1 %173, label %.preheader.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %SyncBB2.i, %phi-split-bb38.i
  %lsr.iv291 = phi i32 [ %lsr.iv.next292, %phi-split-bb38.i ], [ 0, %SyncBB2.i ]
  %lsr.iv = phi i32 [ %lsr.iv.next, %phi-split-bb38.i ], [ %.numbins.0.i, %SyncBB2.i ]
  %energy.16.i = phi float [ %energy.2.lcssa.i, %phi-split-bb38.i ], [ %loadedValue232.i, %SyncBB2.i ]
  %175 = sext i32 %lsr.iv291 to i64
  %176 = or i64 %175, 3
  %sunkaddr19 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr20 = mul i64 %176, 4
  %sunkaddr21 = add i64 %sunkaddr19, %sunkaddr20
  %sunkaddr22 = add i64 %sunkaddr21, 128
  %sunkaddr23 = inttoptr i64 %sunkaddr22 to float addrspace(3)*
  %177 = load float addrspace(3)* %sunkaddr23, align 4, !alias.scope !56, !noalias !57
  %178 = fcmp oeq float %177, 0.000000e+00
  br i1 %178, label %phi-split-bb38.i, label %179

; <label>:179                                     ; preds = %.preheader.i
  %180 = or i64 %175, 2
  %sunkaddr24 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr25 = mul i64 %180, 4
  %sunkaddr26 = add i64 %sunkaddr24, %sunkaddr25
  %sunkaddr27 = add i64 %sunkaddr26, 128
  %sunkaddr28 = inttoptr i64 %sunkaddr27 to float addrspace(3)*
  %181 = load float addrspace(3)* %sunkaddr28, align 8, !alias.scope !56, !noalias !57
  %182 = or i64 %175, 1
  %sunkaddr29 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr30 = mul i64 %182, 4
  %sunkaddr31 = add i64 %sunkaddr29, %sunkaddr30
  %sunkaddr32 = add i64 %sunkaddr31, 128
  %sunkaddr33 = inttoptr i64 %sunkaddr32 to float addrspace(3)*
  %183 = load float addrspace(3)* %sunkaddr33, align 4, !alias.scope !56, !noalias !57
  %sunkaddr34 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr35 = mul i64 %175, 4
  %sunkaddr36 = add i64 %sunkaddr34, %sunkaddr35
  %sunkaddr37 = add i64 %sunkaddr36, 128
  %sunkaddr38 = inttoptr i64 %sunkaddr37 to float addrspace(3)*
  %184 = load float addrspace(3)* %sunkaddr38, align 128, !alias.scope !56, !noalias !57
  %sunkaddr39 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr40 = add i64 %sunkaddr39, %pCurrSBIndex.2.i
  %sunkaddr41 = add i64 %sunkaddr40, 8
  %sunkaddr42 = inttoptr i64 %sunkaddr41 to float*
  %loadedValue79.i = load float* %sunkaddr42, align 8, !alias.scope !54, !noalias !55
  %185 = fsub float %184, %loadedValue79.i
  %186 = fmul float %185, %185
  %sunkaddr43 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr44 = add i64 %sunkaddr43, %pCurrSBIndex.2.i
  %sunkaddr45 = add i64 %sunkaddr44, 12
  %sunkaddr46 = inttoptr i64 %sunkaddr45 to float*
  %loadedValue114.i = load float* %sunkaddr46, align 4, !alias.scope !54, !noalias !55
  %187 = fsub float %183, %loadedValue114.i
  %188 = fmul float %187, %187
  %189 = fadd float %188, %186
  %sunkaddr47 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr48 = add i64 %sunkaddr47, %pCurrSBIndex.2.i
  %sunkaddr49 = add i64 %sunkaddr48, 16
  %sunkaddr50 = inttoptr i64 %sunkaddr49 to float*
  %loadedValue149.i = load float* %sunkaddr50, align 8, !alias.scope !54, !noalias !55
  %190 = fsub float %181, %loadedValue149.i
  %191 = fmul float %190, %190
  %192 = fadd float %191, %189
  %193 = fcmp olt float %192, %explicit_5
  br i1 %193, label %194, label %204

; <label>:194                                     ; preds = %179
  %195 = fmul float %192, %explicit_6
  %196 = fsub float 1.000000e+00, %195
  %197 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %192, i64 0
  %198 = call <4 x float> @llvm.x86.sse.sqrt.ps(<4 x float> %197) #5
  %.rhs.i10.i = extractelement <4 x float> %198, i64 0
  %199 = fdiv float 1.000000e+00, %.rhs.i10.i
  %200 = fmul float %177, %199
  %201 = fmul float %196, %200
  %202 = fmul float %196, %201
  %203 = fadd float %energy.16.i, %202
  br label %204

; <label>:204                                     ; preds = %194, %179
  %energy.3.i = phi float [ %203, %194 ], [ %energy.16.i, %179 ]
  %205 = or i64 %175, 7
  %sunkaddr51 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr52 = mul i64 %205, 4
  %sunkaddr53 = add i64 %sunkaddr51, %sunkaddr52
  %sunkaddr54 = add i64 %sunkaddr53, 128
  %sunkaddr55 = inttoptr i64 %sunkaddr54 to float addrspace(3)*
  %206 = load float addrspace(3)* %sunkaddr55, align 4, !alias.scope !56, !noalias !57
  %207 = fcmp oeq float %206, 0.000000e+00
  br i1 %207, label %phi-split-bb38.i, label %324

phi-split-bb38.i:                                 ; preds = %520, %504, %500, %470, %440, %410, %380, %350, %204, %.preheader.i
  %energy.2.lcssa.i = phi float [ %energy.16.i, %.preheader.i ], [ %energy.3.i, %204 ], [ %energy.3.1.i, %350 ], [ %energy.3.2.i, %380 ], [ %energy.3.3.i, %410 ], [ %energy.3.4.i, %440 ], [ %energy.3.5.i, %470 ], [ %energy.3.6.i, %500 ], [ %energy.3.6.i, %504 ], [ %529, %520 ]
  %208 = trunc i64 %175 to i32
  %lsr.iv.next = add i32 %lsr.iv, -1
  %lsr.iv.next292 = add i32 %208, 32
  %exitcond.i = icmp eq i32 %lsr.iv.next, 0
  br i1 %exitcond.i, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %phi-split-bb38.i, %SyncBB2.i
  %energy.1.lcssa.i = phi float [ %loadedValue232.i, %SyncBB2.i ], [ %energy.2.lcssa.i, %phi-split-bb38.i ]
  %SB_LocalId_Offset282.i = add nuw i64 %pCurrSBIndex.2.i, 68
  %209 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset282.i
  %pSB_LocalId283.i = bitcast i8* %209 to float*
  store float %energy.1.lcssa.i, float* %pSB_LocalId283.i, align 4, !alias.scope !54, !noalias !55
  %210 = add nuw i64 %164, 1
  %211 = icmp ult i64 %210, %LocalSize_0
  br i1 %211, label %Dispatch307.i, label %LoopEnd_0308.i

LoopEnd_0308.i:                                   ; preds = %._crit_edge.i
  %212 = add nuw i64 %163, 1
  %213 = icmp ult i64 %212, %LocalSize_1
  br i1 %213, label %Dispatch307.i, label %LoopEnd_1310.i

LoopEnd_1310.i:                                   ; preds = %LoopEnd_0308.i
  %214 = add nuw i64 %162, 1
  %215 = icmp ult i64 %214, %LocalSize_2
  br i1 %215, label %Dispatch307.i, label %SyncBB1.i

Dispatch307.i:                                    ; preds = %LoopEnd_1310.i, %LoopEnd_0308.i, %._crit_edge.i
  %216 = phi i64 [ %214, %LoopEnd_1310.i ], [ %162, %LoopEnd_0308.i ], [ %162, %._crit_edge.i ]
  %217 = phi i64 [ 0, %LoopEnd_1310.i ], [ %212, %LoopEnd_0308.i ], [ %163, %._crit_edge.i ]
  %218 = phi i64 [ 0, %LoopEnd_1310.i ], [ 0, %LoopEnd_0308.i ], [ %210, %._crit_edge.i ]
  %219 = add nuw i64 %pCurrSBIndex.2.i, 72
  br label %SyncBB2.i

SyncBB1.i:                                        ; preds = %LoopEnd_1310.i, %Dispatch.i, %Dispatch315.i
  %.lcssa332.i = phi i64 [ %.lcssa330.i, %Dispatch315.i ], [ %.lcssa334.i, %Dispatch.i ], [ 0, %LoopEnd_1310.i ]
  %220 = phi i64 [ %159, %Dispatch315.i ], [ %241, %Dispatch.i ], [ 0, %LoopEnd_1310.i ]
  %221 = phi i64 [ %160, %Dispatch315.i ], [ %242, %Dispatch.i ], [ 0, %LoopEnd_1310.i ]
  %.2.i = phi i64 [ %.1.i, %Dispatch315.i ], [ %.3.i, %Dispatch.i ], [ %.1.i, %LoopEnd_1310.i ]
  %pCurrSBIndex.3.i = phi i64 [ %161, %Dispatch315.i ], [ %243, %Dispatch.i ], [ 0, %LoopEnd_1310.i ]
  %222 = trunc i64 %80 to i32
  %SB_LocalId_Offset256.i = add nuw i64 %pCurrSBIndex.3.i, 56
  %223 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset256.i
  %pSB_LocalId257.i = bitcast i8* %223 to i32*
  %loadedValue258.i = load i32* %pSB_LocalId257.i, align 4, !alias.scope !54, !noalias !55
  %SB_LocalId_Offset278.i = add nuw i64 %pCurrSBIndex.3.i, 64
  %224 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset278.i
  %pSB_LocalId279.i = bitcast i8* %224 to i32*
  %loadedValue280.i = load i32* %pSB_LocalId279.i, align 4, !alias.scope !54, !noalias !55
  %225 = add nsw i32 %loadedValue280.i, %loadedValue258.i
  %226 = icmp slt i32 %225, %222
  br i1 %226, label %._crit_edge19.i, label %._crit_edge13.loopexit.i

._crit_edge19.i:                                  ; preds = %SyncBB1.i
  %SB_LocalId_Offset263.i = add nuw i64 %pCurrSBIndex.3.i, 60
  %227 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset263.i
  %pSB_LocalId264.i = bitcast i8* %227 to i32*
  %loadedValue265.i = load i32* %pSB_LocalId264.i, align 4, !alias.scope !54, !noalias !55
  %SB_LocalId_Offset289.i = add nuw i64 %pCurrSBIndex.3.i, 68
  %228 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset289.i
  %pSB_LocalId290.i = bitcast i8* %228 to float*
  %loadedValue291.i = load float* %pSB_LocalId290.i, align 4, !alias.scope !54, !noalias !55
  br label %113

._crit_edge13.loopexit.i:                         ; preds = %SyncBB1.i
  %SB_LocalId_Offset285.i = add nuw i64 %pCurrSBIndex.3.i, 68
  %229 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset285.i
  %pSB_LocalId286.i = bitcast i8* %229 to float*
  %loadedValue287.i = load float* %pSB_LocalId286.i, align 4, !alias.scope !54, !noalias !55
  %.phi.trans.insert = getelementptr inbounds i8* %pSpecialBuf, i64 %pCurrSBIndex.3.i
  %pSB_LocalId44.i.phi.trans.insert = bitcast i8* %.phi.trans.insert to i64*
  %loadedValue.i.pre = load i64* %pSB_LocalId44.i.phi.trans.insert, align 8, !alias.scope !54, !noalias !55
  br label %._crit_edge13.i

._crit_edge13.i:                                  ; preds = %._crit_edge13.loopexit.i, %SyncBB3.i
  %loadedValue.i = phi i64 [ %loadedValue.i.pre, %._crit_edge13.loopexit.i ], [ %88, %SyncBB3.i ]
  %.lcssa335.i = phi i64 [ %.lcssa332.i, %._crit_edge13.loopexit.i ], [ %.lcssa336.i, %SyncBB3.i ]
  %230 = phi i64 [ %220, %._crit_edge13.loopexit.i ], [ %81, %SyncBB3.i ]
  %231 = phi i64 [ %221, %._crit_edge13.loopexit.i ], [ %82, %SyncBB3.i ]
  %.3.i = phi i64 [ %.2.i, %._crit_edge13.loopexit.i ], [ %.0.i, %SyncBB3.i ]
  %pCurrBarrier.3.i = phi i32 [ 4, %._crit_edge13.loopexit.i ], [ %pCurrBarrier.0.i, %SyncBB3.i ]
  %pCurrSBIndex.4.i = phi i64 [ %pCurrSBIndex.3.i, %._crit_edge13.loopexit.i ], [ %pCurrSBIndex.0.i, %SyncBB3.i ]
  %energy.0.lcssa.i = phi float [ %loadedValue287.i, %._crit_edge13.loopexit.i ], [ 0.000000e+00, %SyncBB3.i ]
  %232 = getelementptr inbounds i8* %pSpecialBuf, i64 %pCurrSBIndex.4.i
  %sext.i = shl i64 %loadedValue.i, 32
  %233 = ashr exact i64 %sext.i, 32
  %.sum1.i = add i64 %.sum.i, %233
  %234 = getelementptr inbounds float addrspace(1)* %explicit_7, i64 %.sum1.i
  store float %energy.0.lcssa.i, float addrspace(1)* %234, align 1, !noalias !44
  %235 = add nuw i64 %231, 1
  %236 = icmp ult i64 %235, %LocalSize_0
  br i1 %236, label %Dispatch.i, label %LoopEnd_0.i

LoopEnd_0.i:                                      ; preds = %._crit_edge13.i
  %237 = add nuw i64 %230, 1
  %238 = icmp ult i64 %237, %LocalSize_1
  br i1 %238, label %Dispatch.i, label %LoopEnd_1.i

LoopEnd_1.i:                                      ; preds = %LoopEnd_0.i
  %239 = add nuw i64 %.lcssa335.i, 1
  %240 = icmp ult i64 %239, %LocalSize_2
  br i1 %240, label %Dispatch.i, label %__opencl_cutoff_potential_lattice_separated_args.exit

Dispatch.i:                                       ; preds = %LoopEnd_1.i, %LoopEnd_0.i, %._crit_edge13.i
  %.lcssa334.i = phi i64 [ %239, %LoopEnd_1.i ], [ %.lcssa335.i, %LoopEnd_0.i ], [ %.lcssa335.i, %._crit_edge13.i ]
  %241 = phi i64 [ 0, %LoopEnd_1.i ], [ %237, %LoopEnd_0.i ], [ %230, %._crit_edge13.i ]
  %242 = phi i64 [ 0, %LoopEnd_1.i ], [ 0, %LoopEnd_0.i ], [ %235, %._crit_edge13.i ]
  %243 = add nuw i64 %pCurrSBIndex.4.i, 72
  %cond.i = icmp eq i32 %pCurrBarrier.3.i, 4
  br i1 %cond.i, label %SyncBB1.i, label %SyncBB3.i

; <label>:244                                     ; preds = %122
  %245 = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 %indvars.iv.next.i
  %246 = load <4 x i32> addrspace(2)* %245, align 1, !noalias !44
  %247 = extractelement <4 x i32> %246, i64 0
  %248 = add nsw i32 %247, %62
  %249 = extractelement <4 x i32> %246, i64 1
  %250 = add nsw i32 %249, %70
  %251 = extractelement <4 x i32> %246, i64 2
  %252 = add nsw i32 %251, %78
  %253 = mul nsw i32 %252, %explicit_1
  %254 = add nsw i32 %250, %253
  %255 = mul nsw i32 %254, %explicit_0
  %256 = add nsw i32 %248, %255
  %257 = shl nsw i32 %256, 5
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds <4 x float> addrspace(1)* %explicit_2, i64 %33, i64 %258
  %260 = add nsw i32 %loadedValue168.i, 256
  %261 = getelementptr inbounds float addrspace(1)* %259, i64 %loadedValue206.i
  %262 = load float addrspace(1)* %261, align 1, !noalias !44
  %263 = or i32 %260, %loadedValue187.i
  %264 = sext i32 %263 to i64
  %sunkaddr59 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr60 = mul i64 %264, 4
  %sunkaddr61 = add i64 %sunkaddr59, %sunkaddr60
  %sunkaddr62 = add i64 %sunkaddr61, 128
  %sunkaddr63 = inttoptr i64 %sunkaddr62 to float addrspace(3)*
  store float %262, float addrspace(3)* %sunkaddr63, align 4, !alias.scope !56, !noalias !57
  %265 = getelementptr inbounds float addrspace(1)* %259, i64 %loadedValue225.i
  %266 = load float addrspace(1)* %265, align 1, !noalias !44
  %267 = or i32 %263, 16
  %268 = sext i32 %267 to i64
  %sunkaddr64 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr65 = mul i64 %268, 4
  %sunkaddr66 = add i64 %sunkaddr64, %sunkaddr65
  %sunkaddr67 = add i64 %sunkaddr66, 128
  %sunkaddr68 = inttoptr i64 %sunkaddr67 to float addrspace(3)*
  store float %266, float addrspace(3)* %sunkaddr68, align 4, !alias.scope !56, !noalias !57
  %indvars.iv.next.1.i = add nsw i64 %120, 16
  %269 = icmp slt i64 %indvars.iv.next.1.i, %.1.i
  %270 = trunc i64 %indvars.iv.next.1.i to i32
  br i1 %269, label %271, label %.critedge.i

; <label>:271                                     ; preds = %244
  %272 = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 %indvars.iv.next.1.i
  %273 = load <4 x i32> addrspace(2)* %272, align 1, !noalias !44
  %274 = extractelement <4 x i32> %273, i64 0
  %275 = add nsw i32 %274, %62
  %276 = extractelement <4 x i32> %273, i64 1
  %277 = add nsw i32 %276, %70
  %278 = extractelement <4 x i32> %273, i64 2
  %279 = add nsw i32 %278, %78
  %280 = mul nsw i32 %279, %explicit_1
  %281 = add nsw i32 %277, %280
  %282 = mul nsw i32 %281, %explicit_0
  %283 = add nsw i32 %275, %282
  %284 = shl nsw i32 %283, 5
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds <4 x float> addrspace(1)* %explicit_2, i64 %33, i64 %285
  %287 = add nsw i32 %loadedValue168.i, 512
  %288 = getelementptr inbounds float addrspace(1)* %286, i64 %loadedValue206.i
  %289 = load float addrspace(1)* %288, align 1, !noalias !44
  %290 = or i32 %287, %loadedValue187.i
  %291 = sext i32 %290 to i64
  %sunkaddr72 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr73 = mul i64 %291, 4
  %sunkaddr74 = add i64 %sunkaddr72, %sunkaddr73
  %sunkaddr75 = add i64 %sunkaddr74, 128
  %sunkaddr76 = inttoptr i64 %sunkaddr75 to float addrspace(3)*
  store float %289, float addrspace(3)* %sunkaddr76, align 4, !alias.scope !56, !noalias !57
  %292 = getelementptr inbounds float addrspace(1)* %286, i64 %loadedValue225.i
  %293 = load float addrspace(1)* %292, align 1, !noalias !44
  %294 = or i32 %290, 16
  %295 = sext i32 %294 to i64
  %sunkaddr77 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr78 = mul i64 %295, 4
  %sunkaddr79 = add i64 %sunkaddr77, %sunkaddr78
  %sunkaddr80 = add i64 %sunkaddr79, 128
  %sunkaddr81 = inttoptr i64 %sunkaddr80 to float addrspace(3)*
  store float %293, float addrspace(3)* %sunkaddr81, align 4, !alias.scope !56, !noalias !57
  %indvars.iv.next.2.i = add nsw i64 %120, 24
  %296 = icmp slt i64 %indvars.iv.next.2.i, %.1.i
  %297 = trunc i64 %indvars.iv.next.2.i to i32
  br i1 %296, label %298, label %.critedge.i

; <label>:298                                     ; preds = %271
  %299 = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 %indvars.iv.next.2.i
  %300 = load <4 x i32> addrspace(2)* %299, align 1, !noalias !44
  %301 = extractelement <4 x i32> %300, i64 0
  %302 = add nsw i32 %301, %62
  %303 = extractelement <4 x i32> %300, i64 1
  %304 = add nsw i32 %303, %70
  %305 = extractelement <4 x i32> %300, i64 2
  %306 = add nsw i32 %305, %78
  %307 = mul nsw i32 %306, %explicit_1
  %308 = add nsw i32 %304, %307
  %309 = mul nsw i32 %308, %explicit_0
  %310 = add nsw i32 %302, %309
  %311 = shl nsw i32 %310, 5
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds <4 x float> addrspace(1)* %explicit_2, i64 %33, i64 %312
  %314 = add nsw i32 %loadedValue168.i, 768
  %315 = getelementptr inbounds float addrspace(1)* %313, i64 %loadedValue206.i
  %316 = load float addrspace(1)* %315, align 1, !noalias !44
  %317 = or i32 %314, %loadedValue187.i
  %318 = sext i32 %317 to i64
  %sunkaddr85 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr86 = mul i64 %318, 4
  %sunkaddr87 = add i64 %sunkaddr85, %sunkaddr86
  %sunkaddr88 = add i64 %sunkaddr87, 128
  %sunkaddr89 = inttoptr i64 %sunkaddr88 to float addrspace(3)*
  store float %316, float addrspace(3)* %sunkaddr89, align 4, !alias.scope !56, !noalias !57
  %319 = getelementptr inbounds float addrspace(1)* %313, i64 %loadedValue225.i
  %320 = load float addrspace(1)* %319, align 1, !noalias !44
  %321 = or i32 %317, 16
  %322 = sext i32 %321 to i64
  %sunkaddr90 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr91 = mul i64 %322, 4
  %sunkaddr92 = add i64 %sunkaddr90, %sunkaddr91
  %sunkaddr93 = add i64 %sunkaddr92, 128
  %sunkaddr94 = inttoptr i64 %sunkaddr93 to float addrspace(3)*
  store float %320, float addrspace(3)* %sunkaddr94, align 4, !alias.scope !56, !noalias !57
  %323 = add nsw i32 %nbrid.08.i, 32
  br label %.critedge.i

; <label>:324                                     ; preds = %204
  %325 = or i64 %175, 4
  %326 = or i64 %175, 6
  %sunkaddr95 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr96 = mul i64 %326, 4
  %sunkaddr97 = add i64 %sunkaddr95, %sunkaddr96
  %sunkaddr98 = add i64 %sunkaddr97, 128
  %sunkaddr99 = inttoptr i64 %sunkaddr98 to float addrspace(3)*
  %327 = load float addrspace(3)* %sunkaddr99, align 8, !alias.scope !56, !noalias !57
  %328 = or i64 %175, 5
  %sunkaddr100 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr101 = mul i64 %328, 4
  %sunkaddr102 = add i64 %sunkaddr100, %sunkaddr101
  %sunkaddr103 = add i64 %sunkaddr102, 128
  %sunkaddr104 = inttoptr i64 %sunkaddr103 to float addrspace(3)*
  %329 = load float addrspace(3)* %sunkaddr104, align 4, !alias.scope !56, !noalias !57
  %sunkaddr105 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr106 = mul i64 %325, 4
  %sunkaddr107 = add i64 %sunkaddr105, %sunkaddr106
  %sunkaddr108 = add i64 %sunkaddr107, 128
  %sunkaddr109 = inttoptr i64 %sunkaddr108 to float addrspace(3)*
  %330 = load float addrspace(3)* %sunkaddr109, align 16, !alias.scope !56, !noalias !57
  %331 = fsub float %330, %loadedValue79.i
  %332 = fmul float %331, %331
  %333 = fsub float %329, %loadedValue114.i
  %334 = fmul float %333, %333
  %335 = fadd float %334, %332
  %336 = fsub float %327, %loadedValue149.i
  %337 = fmul float %336, %336
  %338 = fadd float %337, %335
  %339 = fcmp olt float %338, %explicit_5
  br i1 %339, label %340, label %350

; <label>:340                                     ; preds = %324
  %341 = fmul float %338, %explicit_6
  %342 = fsub float 1.000000e+00, %341
  %343 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %338, i64 0
  %344 = call <4 x float> @llvm.x86.sse.sqrt.ps(<4 x float> %343) #5
  %.rhs.i9.i = extractelement <4 x float> %344, i64 0
  %345 = fdiv float 1.000000e+00, %.rhs.i9.i
  %346 = fmul float %206, %345
  %347 = fmul float %342, %346
  %348 = fmul float %342, %347
  %349 = fadd float %energy.3.i, %348
  br label %350

; <label>:350                                     ; preds = %340, %324
  %energy.3.1.i = phi float [ %349, %340 ], [ %energy.3.i, %324 ]
  %351 = or i64 %175, 11
  %sunkaddr110 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr111 = mul i64 %351, 4
  %sunkaddr112 = add i64 %sunkaddr110, %sunkaddr111
  %sunkaddr113 = add i64 %sunkaddr112, 128
  %sunkaddr114 = inttoptr i64 %sunkaddr113 to float addrspace(3)*
  %352 = load float addrspace(3)* %sunkaddr114, align 4, !alias.scope !56, !noalias !57
  %353 = fcmp oeq float %352, 0.000000e+00
  br i1 %353, label %phi-split-bb38.i, label %354

; <label>:354                                     ; preds = %350
  %355 = or i64 %175, 8
  %356 = or i64 %175, 10
  %sunkaddr115 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr116 = mul i64 %356, 4
  %sunkaddr117 = add i64 %sunkaddr115, %sunkaddr116
  %sunkaddr118 = add i64 %sunkaddr117, 128
  %sunkaddr119 = inttoptr i64 %sunkaddr118 to float addrspace(3)*
  %357 = load float addrspace(3)* %sunkaddr119, align 8, !alias.scope !56, !noalias !57
  %358 = or i64 %175, 9
  %sunkaddr120 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr121 = mul i64 %358, 4
  %sunkaddr122 = add i64 %sunkaddr120, %sunkaddr121
  %sunkaddr123 = add i64 %sunkaddr122, 128
  %sunkaddr124 = inttoptr i64 %sunkaddr123 to float addrspace(3)*
  %359 = load float addrspace(3)* %sunkaddr124, align 4, !alias.scope !56, !noalias !57
  %sunkaddr125 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr126 = mul i64 %355, 4
  %sunkaddr127 = add i64 %sunkaddr125, %sunkaddr126
  %sunkaddr128 = add i64 %sunkaddr127, 128
  %sunkaddr129 = inttoptr i64 %sunkaddr128 to float addrspace(3)*
  %360 = load float addrspace(3)* %sunkaddr129, align 32, !alias.scope !56, !noalias !57
  %361 = fsub float %360, %loadedValue79.i
  %362 = fmul float %361, %361
  %363 = fsub float %359, %loadedValue114.i
  %364 = fmul float %363, %363
  %365 = fadd float %364, %362
  %366 = fsub float %357, %loadedValue149.i
  %367 = fmul float %366, %366
  %368 = fadd float %367, %365
  %369 = fcmp olt float %368, %explicit_5
  br i1 %369, label %370, label %380

; <label>:370                                     ; preds = %354
  %371 = fmul float %368, %explicit_6
  %372 = fsub float 1.000000e+00, %371
  %373 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %368, i64 0
  %374 = call <4 x float> @llvm.x86.sse.sqrt.ps(<4 x float> %373) #5
  %.rhs.i8.i = extractelement <4 x float> %374, i64 0
  %375 = fdiv float 1.000000e+00, %.rhs.i8.i
  %376 = fmul float %352, %375
  %377 = fmul float %372, %376
  %378 = fmul float %372, %377
  %379 = fadd float %energy.3.1.i, %378
  br label %380

; <label>:380                                     ; preds = %370, %354
  %energy.3.2.i = phi float [ %379, %370 ], [ %energy.3.1.i, %354 ]
  %381 = or i64 %175, 15
  %sunkaddr130 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr131 = mul i64 %381, 4
  %sunkaddr132 = add i64 %sunkaddr130, %sunkaddr131
  %sunkaddr133 = add i64 %sunkaddr132, 128
  %sunkaddr134 = inttoptr i64 %sunkaddr133 to float addrspace(3)*
  %382 = load float addrspace(3)* %sunkaddr134, align 4, !alias.scope !56, !noalias !57
  %383 = fcmp oeq float %382, 0.000000e+00
  br i1 %383, label %phi-split-bb38.i, label %384

; <label>:384                                     ; preds = %380
  %385 = or i64 %175, 12
  %386 = or i64 %175, 14
  %sunkaddr135 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr136 = mul i64 %386, 4
  %sunkaddr137 = add i64 %sunkaddr135, %sunkaddr136
  %sunkaddr138 = add i64 %sunkaddr137, 128
  %sunkaddr139 = inttoptr i64 %sunkaddr138 to float addrspace(3)*
  %387 = load float addrspace(3)* %sunkaddr139, align 8, !alias.scope !56, !noalias !57
  %388 = or i64 %175, 13
  %sunkaddr140 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr141 = mul i64 %388, 4
  %sunkaddr142 = add i64 %sunkaddr140, %sunkaddr141
  %sunkaddr143 = add i64 %sunkaddr142, 128
  %sunkaddr144 = inttoptr i64 %sunkaddr143 to float addrspace(3)*
  %389 = load float addrspace(3)* %sunkaddr144, align 4, !alias.scope !56, !noalias !57
  %sunkaddr145 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr146 = mul i64 %385, 4
  %sunkaddr147 = add i64 %sunkaddr145, %sunkaddr146
  %sunkaddr148 = add i64 %sunkaddr147, 128
  %sunkaddr149 = inttoptr i64 %sunkaddr148 to float addrspace(3)*
  %390 = load float addrspace(3)* %sunkaddr149, align 16, !alias.scope !56, !noalias !57
  %391 = fsub float %390, %loadedValue79.i
  %392 = fmul float %391, %391
  %393 = fsub float %389, %loadedValue114.i
  %394 = fmul float %393, %393
  %395 = fadd float %394, %392
  %396 = fsub float %387, %loadedValue149.i
  %397 = fmul float %396, %396
  %398 = fadd float %397, %395
  %399 = fcmp olt float %398, %explicit_5
  br i1 %399, label %400, label %410

; <label>:400                                     ; preds = %384
  %401 = fmul float %398, %explicit_6
  %402 = fsub float 1.000000e+00, %401
  %403 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %398, i64 0
  %404 = call <4 x float> @llvm.x86.sse.sqrt.ps(<4 x float> %403) #5
  %.rhs.i7.i = extractelement <4 x float> %404, i64 0
  %405 = fdiv float 1.000000e+00, %.rhs.i7.i
  %406 = fmul float %382, %405
  %407 = fmul float %402, %406
  %408 = fmul float %402, %407
  %409 = fadd float %energy.3.2.i, %408
  br label %410

; <label>:410                                     ; preds = %400, %384
  %energy.3.3.i = phi float [ %409, %400 ], [ %energy.3.2.i, %384 ]
  %411 = or i64 %175, 19
  %sunkaddr150 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr151 = mul i64 %411, 4
  %sunkaddr152 = add i64 %sunkaddr150, %sunkaddr151
  %sunkaddr153 = add i64 %sunkaddr152, 128
  %sunkaddr154 = inttoptr i64 %sunkaddr153 to float addrspace(3)*
  %412 = load float addrspace(3)* %sunkaddr154, align 4, !alias.scope !56, !noalias !57
  %413 = fcmp oeq float %412, 0.000000e+00
  br i1 %413, label %phi-split-bb38.i, label %414

; <label>:414                                     ; preds = %410
  %415 = or i64 %175, 16
  %416 = or i64 %175, 18
  %sunkaddr155 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr156 = mul i64 %416, 4
  %sunkaddr157 = add i64 %sunkaddr155, %sunkaddr156
  %sunkaddr158 = add i64 %sunkaddr157, 128
  %sunkaddr159 = inttoptr i64 %sunkaddr158 to float addrspace(3)*
  %417 = load float addrspace(3)* %sunkaddr159, align 8, !alias.scope !56, !noalias !57
  %418 = or i64 %175, 17
  %sunkaddr160 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr161 = mul i64 %418, 4
  %sunkaddr162 = add i64 %sunkaddr160, %sunkaddr161
  %sunkaddr163 = add i64 %sunkaddr162, 128
  %sunkaddr164 = inttoptr i64 %sunkaddr163 to float addrspace(3)*
  %419 = load float addrspace(3)* %sunkaddr164, align 4, !alias.scope !56, !noalias !57
  %sunkaddr165 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr166 = mul i64 %415, 4
  %sunkaddr167 = add i64 %sunkaddr165, %sunkaddr166
  %sunkaddr168 = add i64 %sunkaddr167, 128
  %sunkaddr169 = inttoptr i64 %sunkaddr168 to float addrspace(3)*
  %420 = load float addrspace(3)* %sunkaddr169, align 64, !alias.scope !56, !noalias !57
  %421 = fsub float %420, %loadedValue79.i
  %422 = fmul float %421, %421
  %423 = fsub float %419, %loadedValue114.i
  %424 = fmul float %423, %423
  %425 = fadd float %424, %422
  %426 = fsub float %417, %loadedValue149.i
  %427 = fmul float %426, %426
  %428 = fadd float %427, %425
  %429 = fcmp olt float %428, %explicit_5
  br i1 %429, label %430, label %440

; <label>:430                                     ; preds = %414
  %431 = fmul float %428, %explicit_6
  %432 = fsub float 1.000000e+00, %431
  %433 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %428, i64 0
  %434 = call <4 x float> @llvm.x86.sse.sqrt.ps(<4 x float> %433) #5
  %.rhs.i6.i = extractelement <4 x float> %434, i64 0
  %435 = fdiv float 1.000000e+00, %.rhs.i6.i
  %436 = fmul float %412, %435
  %437 = fmul float %432, %436
  %438 = fmul float %432, %437
  %439 = fadd float %energy.3.3.i, %438
  br label %440

; <label>:440                                     ; preds = %430, %414
  %energy.3.4.i = phi float [ %439, %430 ], [ %energy.3.3.i, %414 ]
  %441 = or i64 %175, 23
  %sunkaddr170 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr171 = mul i64 %441, 4
  %sunkaddr172 = add i64 %sunkaddr170, %sunkaddr171
  %sunkaddr173 = add i64 %sunkaddr172, 128
  %sunkaddr174 = inttoptr i64 %sunkaddr173 to float addrspace(3)*
  %442 = load float addrspace(3)* %sunkaddr174, align 4, !alias.scope !56, !noalias !57
  %443 = fcmp oeq float %442, 0.000000e+00
  br i1 %443, label %phi-split-bb38.i, label %444

; <label>:444                                     ; preds = %440
  %445 = or i64 %175, 20
  %446 = or i64 %175, 22
  %sunkaddr175 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr176 = mul i64 %446, 4
  %sunkaddr177 = add i64 %sunkaddr175, %sunkaddr176
  %sunkaddr178 = add i64 %sunkaddr177, 128
  %sunkaddr179 = inttoptr i64 %sunkaddr178 to float addrspace(3)*
  %447 = load float addrspace(3)* %sunkaddr179, align 8, !alias.scope !56, !noalias !57
  %448 = or i64 %175, 21
  %sunkaddr180 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr181 = mul i64 %448, 4
  %sunkaddr182 = add i64 %sunkaddr180, %sunkaddr181
  %sunkaddr183 = add i64 %sunkaddr182, 128
  %sunkaddr184 = inttoptr i64 %sunkaddr183 to float addrspace(3)*
  %449 = load float addrspace(3)* %sunkaddr184, align 4, !alias.scope !56, !noalias !57
  %sunkaddr185 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr186 = mul i64 %445, 4
  %sunkaddr187 = add i64 %sunkaddr185, %sunkaddr186
  %sunkaddr188 = add i64 %sunkaddr187, 128
  %sunkaddr189 = inttoptr i64 %sunkaddr188 to float addrspace(3)*
  %450 = load float addrspace(3)* %sunkaddr189, align 16, !alias.scope !56, !noalias !57
  %451 = fsub float %450, %loadedValue79.i
  %452 = fmul float %451, %451
  %453 = fsub float %449, %loadedValue114.i
  %454 = fmul float %453, %453
  %455 = fadd float %454, %452
  %456 = fsub float %447, %loadedValue149.i
  %457 = fmul float %456, %456
  %458 = fadd float %457, %455
  %459 = fcmp olt float %458, %explicit_5
  br i1 %459, label %460, label %470

; <label>:460                                     ; preds = %444
  %461 = fmul float %458, %explicit_6
  %462 = fsub float 1.000000e+00, %461
  %463 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %458, i64 0
  %464 = call <4 x float> @llvm.x86.sse.sqrt.ps(<4 x float> %463) #5
  %.rhs.i5.i = extractelement <4 x float> %464, i64 0
  %465 = fdiv float 1.000000e+00, %.rhs.i5.i
  %466 = fmul float %442, %465
  %467 = fmul float %462, %466
  %468 = fmul float %462, %467
  %469 = fadd float %energy.3.4.i, %468
  br label %470

; <label>:470                                     ; preds = %460, %444
  %energy.3.5.i = phi float [ %469, %460 ], [ %energy.3.4.i, %444 ]
  %471 = or i64 %175, 27
  %sunkaddr190 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr191 = mul i64 %471, 4
  %sunkaddr192 = add i64 %sunkaddr190, %sunkaddr191
  %sunkaddr193 = add i64 %sunkaddr192, 128
  %sunkaddr194 = inttoptr i64 %sunkaddr193 to float addrspace(3)*
  %472 = load float addrspace(3)* %sunkaddr194, align 4, !alias.scope !56, !noalias !57
  %473 = fcmp oeq float %472, 0.000000e+00
  br i1 %473, label %phi-split-bb38.i, label %474

; <label>:474                                     ; preds = %470
  %475 = or i64 %175, 24
  %476 = or i64 %175, 26
  %sunkaddr195 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr196 = mul i64 %476, 4
  %sunkaddr197 = add i64 %sunkaddr195, %sunkaddr196
  %sunkaddr198 = add i64 %sunkaddr197, 128
  %sunkaddr199 = inttoptr i64 %sunkaddr198 to float addrspace(3)*
  %477 = load float addrspace(3)* %sunkaddr199, align 8, !alias.scope !56, !noalias !57
  %478 = or i64 %175, 25
  %sunkaddr200 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr201 = mul i64 %478, 4
  %sunkaddr202 = add i64 %sunkaddr200, %sunkaddr201
  %sunkaddr203 = add i64 %sunkaddr202, 128
  %sunkaddr204 = inttoptr i64 %sunkaddr203 to float addrspace(3)*
  %479 = load float addrspace(3)* %sunkaddr204, align 4, !alias.scope !56, !noalias !57
  %sunkaddr205 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr206 = mul i64 %475, 4
  %sunkaddr207 = add i64 %sunkaddr205, %sunkaddr206
  %sunkaddr208 = add i64 %sunkaddr207, 128
  %sunkaddr209 = inttoptr i64 %sunkaddr208 to float addrspace(3)*
  %480 = load float addrspace(3)* %sunkaddr209, align 32, !alias.scope !56, !noalias !57
  %481 = fsub float %480, %loadedValue79.i
  %482 = fmul float %481, %481
  %483 = fsub float %479, %loadedValue114.i
  %484 = fmul float %483, %483
  %485 = fadd float %484, %482
  %486 = fsub float %477, %loadedValue149.i
  %487 = fmul float %486, %486
  %488 = fadd float %487, %485
  %489 = fcmp olt float %488, %explicit_5
  br i1 %489, label %490, label %500

; <label>:490                                     ; preds = %474
  %491 = fmul float %488, %explicit_6
  %492 = fsub float 1.000000e+00, %491
  %493 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %488, i64 0
  %494 = call <4 x float> @llvm.x86.sse.sqrt.ps(<4 x float> %493) #5
  %.rhs.i4.i = extractelement <4 x float> %494, i64 0
  %495 = fdiv float 1.000000e+00, %.rhs.i4.i
  %496 = fmul float %472, %495
  %497 = fmul float %492, %496
  %498 = fmul float %492, %497
  %499 = fadd float %energy.3.5.i, %498
  br label %500

; <label>:500                                     ; preds = %490, %474
  %energy.3.6.i = phi float [ %499, %490 ], [ %energy.3.5.i, %474 ]
  %501 = or i64 %175, 31
  %sunkaddr210 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr211 = mul i64 %501, 4
  %sunkaddr212 = add i64 %sunkaddr210, %sunkaddr211
  %sunkaddr213 = add i64 %sunkaddr212, 128
  %sunkaddr214 = inttoptr i64 %sunkaddr213 to float addrspace(3)*
  %502 = load float addrspace(3)* %sunkaddr214, align 4, !alias.scope !56, !noalias !57
  %503 = fcmp oeq float %502, 0.000000e+00
  br i1 %503, label %phi-split-bb38.i, label %504

; <label>:504                                     ; preds = %500
  %505 = or i64 %175, 28
  %506 = or i64 %175, 30
  %sunkaddr215 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr216 = mul i64 %506, 4
  %sunkaddr217 = add i64 %sunkaddr215, %sunkaddr216
  %sunkaddr218 = add i64 %sunkaddr217, 128
  %sunkaddr219 = inttoptr i64 %sunkaddr218 to float addrspace(3)*
  %507 = load float addrspace(3)* %sunkaddr219, align 8, !alias.scope !56, !noalias !57
  %508 = or i64 %175, 29
  %sunkaddr220 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr221 = mul i64 %508, 4
  %sunkaddr222 = add i64 %sunkaddr220, %sunkaddr221
  %sunkaddr223 = add i64 %sunkaddr222, 128
  %sunkaddr224 = inttoptr i64 %sunkaddr223 to float addrspace(3)*
  %509 = load float addrspace(3)* %sunkaddr224, align 4, !alias.scope !56, !noalias !57
  %sunkaddr225 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr226 = mul i64 %505, 4
  %sunkaddr227 = add i64 %sunkaddr225, %sunkaddr226
  %sunkaddr228 = add i64 %sunkaddr227, 128
  %sunkaddr229 = inttoptr i64 %sunkaddr228 to float addrspace(3)*
  %510 = load float addrspace(3)* %sunkaddr229, align 16, !alias.scope !56, !noalias !57
  %511 = fsub float %510, %loadedValue79.i
  %512 = fmul float %511, %511
  %513 = fsub float %509, %loadedValue114.i
  %514 = fmul float %513, %513
  %515 = fadd float %514, %512
  %516 = fsub float %507, %loadedValue149.i
  %517 = fmul float %516, %516
  %518 = fadd float %517, %515
  %519 = fcmp olt float %518, %explicit_5
  br i1 %519, label %520, label %phi-split-bb38.i

; <label>:520                                     ; preds = %504
  %521 = fmul float %518, %explicit_6
  %522 = fsub float 1.000000e+00, %521
  %523 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %518, i64 0
  %524 = call <4 x float> @llvm.x86.sse.sqrt.ps(<4 x float> %523) #5
  %.rhs.i.i = extractelement <4 x float> %524, i64 0
  %525 = fdiv float 1.000000e+00, %.rhs.i.i
  %526 = fmul float %502, %525
  %527 = fmul float %522, %526
  %528 = fmul float %522, %527
  %529 = fadd float %energy.3.6.i, %528
  br label %phi-split-bb38.i

__opencl_cutoff_potential_lattice_separated_args.exit: ; preds = %LoopEnd_1.i
  %530 = bitcast [3 x i64]* %pLocalIds.i to i8*
  call void @llvm.lifetime.end(i64 24, i8* %530)
  ret void
}

define void @__Vectorized_.opencl_cutoff_potential_lattice(i8* noalias %pUniformArgs, i64* noalias %pWGId, {}* noalias %RuntimeHandle) {
wrapper_entry:
  %dummy.i132.i = alloca <4 x i32>, align 16
  %dummy.i84.i = alloca <4 x i32>, align 16
  %dummy.i39.i = alloca <4 x i32>, align 16
  %dummy.i.i = alloca <4 x i32>, align 16
  %pLocalIds.i = alloca [3 x i64], align 8
  %0 = bitcast i8* %pUniformArgs to i32*
  %explicit_0 = load i32* %0, align 4
  %1 = getelementptr i8* %pUniformArgs, i64 4
  %2 = bitcast i8* %1 to i32*
  %explicit_1 = load i32* %2, align 4
  %3 = getelementptr i8* %pUniformArgs, i64 8
  %4 = bitcast i8* %3 to <4 x float> addrspace(1)**
  %explicit_2 = load <4 x float> addrspace(1)** %4, align 8
  %5 = getelementptr i8* %pUniformArgs, i64 16
  %6 = bitcast i8* %5 to i32*
  %explicit_3 = load i32* %6, align 4
  %7 = getelementptr i8* %pUniformArgs, i64 20
  %8 = bitcast i8* %7 to float*
  %explicit_4 = load float* %8, align 4
  %9 = getelementptr i8* %pUniformArgs, i64 24
  %10 = bitcast i8* %9 to float*
  %explicit_5 = load float* %10, align 4
  %11 = getelementptr i8* %pUniformArgs, i64 28
  %12 = bitcast i8* %11 to float*
  %explicit_6 = load float* %12, align 4
  %13 = getelementptr i8* %pUniformArgs, i64 32
  %14 = bitcast i8* %13 to float addrspace(1)**
  %explicit_7 = load float addrspace(1)** %14, align 8
  %15 = getelementptr i8* %pUniformArgs, i64 40
  %16 = bitcast i8* %15 to i32*
  %explicit_8 = load i32* %16, align 4
  %17 = sext i32 %explicit_8 to i64
  %18 = getelementptr i8* %pUniformArgs, i64 48
  %19 = bitcast i8* %18 to i32 addrspace(2)**
  %explicit_9 = load i32 addrspace(2)** %19, align 8
  %20 = getelementptr i8* %pUniformArgs, i64 56
  %21 = bitcast i8* %20 to <4 x i32> addrspace(2)**
  %explicit_10 = load <4 x i32> addrspace(2)** %21, align 8
  %22 = alloca [4480 x i8], align 128
  %23 = getelementptr i8* %pUniformArgs, i64 120
  %24 = bitcast i8* %23 to i64*
  %LocalSize_0 = load i64* %24, align 8
  %25 = getelementptr i8* %pUniformArgs, i64 128
  %26 = bitcast i8* %25 to i64*
  %LocalSize_1 = load i64* %26, align 8
  %27 = getelementptr i8* %pUniformArgs, i64 136
  %28 = bitcast i8* %27 to i64*
  %LocalSize_2 = load i64* %28, align 8
  %29 = mul i64 %LocalSize_0, 192
  %30 = mul i64 %29, %LocalSize_1
  %BarrierBufferSize = mul i64 %30, %LocalSize_2
  %pSpecialBuf = alloca i8, i64 %BarrierBufferSize, align 128
  %31 = bitcast [3 x i64]* %pLocalIds.i to i8*
  call void @llvm.lifetime.start(i64 24, i8* %31)
  %pLocalId_0.i27 = bitcast [3 x i64]* %pLocalIds.i to i64*
  %pLocalId_1.i = getelementptr inbounds [3 x i64]* %pLocalIds.i, i64 0, i64 1
  %pLocalId_2.i = getelementptr inbounds [3 x i64]* %pLocalIds.i, i64 0, i64 2
  store i64 0, i64* %pLocalId_0.i27, align 8, !noalias !58
  store i64 0, i64* %pLocalId_1.i, align 8, !noalias !58
  store i64 0, i64* %pLocalId_2.i, align 8, !noalias !58
  %temp480.i = insertelement <8 x float> undef, float %explicit_6, i32 0
  %vector479.i = shufflevector <8 x float> %temp480.i, <8 x float> undef, <8 x i32> zeroinitializer
  %temp478.i = insertelement <8 x float> undef, float %explicit_5, i32 0
  %vector477.i = shufflevector <8 x float> %temp478.i, <8 x float> undef, <8 x i32> zeroinitializer
  %temp385.i = insertelement <8 x i32> undef, i32 %explicit_0, i32 0
  %vector384.i = shufflevector <8 x i32> %temp385.i, <8 x i32> undef, <8 x i32> zeroinitializer
  %temp383.i = insertelement <8 x i32> undef, i32 %explicit_1, i32 0
  %vector382.i = shufflevector <8 x i32> %temp383.i, <8 x i32> undef, <8 x i32> zeroinitializer
  %32 = sext i32 %explicit_3 to i64
  %temp365.i = insertelement <8 x float> undef, float %explicit_4, i32 0
  %vector364.i = shufflevector <8 x float> %temp365.i, <8 x float> undef, <8 x i32> zeroinitializer
  %33 = sext i32 %explicit_8 to i64
  %34 = getelementptr i8* %pUniformArgs, i64 176
  %35 = bitcast i8* %34 to i64*
  %NumGroups_1.i = load i64* %35, align 8, !alias.scope !64, !noalias !65
  %36 = mul i64 %NumGroups_1.i, %33
  %37 = getelementptr i64* %pWGId, i64 1
  %GroupID_1.i = load i64* %37, align 8, !alias.scope !66, !noalias !67
  %38 = add i64 %36, %GroupID_1.i
  %39 = getelementptr i8* %pUniformArgs, i64 168
  %40 = bitcast i8* %39 to i64*
  %NumGroups_0.i = load i64* %40, align 8, !alias.scope !64, !noalias !65
  %41 = lshr i64 %NumGroups_0.i, 2
  %42 = mul i64 %41, %38
  %GroupID_0.i = load i64* %pWGId, align 8, !alias.scope !66, !noalias !67
  %43 = lshr i64 %GroupID_0.i, 2
  %44 = add i64 %42, %43
  %45 = shl i64 %44, 9
  %46 = shl i64 %GroupID_0.i, 7
  %47 = and i64 %46, 384
  %.sum.i = or i64 %45, %47
  %48 = shl i64 %43, 3
  %temp363.i = insertelement <8 x i64> undef, i64 %48, i32 0
  %vector362.i = shufflevector <8 x i64> %temp363.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %49 = shl i64 %GroupID_1.i, 3
  %50 = shl nsw i64 %17, 3
  %promoted = trunc i64 %50 to i32
  %51 = shl i64 %GroupID_0.i, 1
  %52 = and i64 %51, 6
  %53 = or i64 %52, %50
  %54 = or i64 %48, 4
  %55 = uitofp i64 %54 to float
  %56 = fmul float %55, %explicit_4
  %57 = fmul float %56, 2.500000e-01
  %58 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %57, i64 0
  %59 = call <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %58, i32 1) #5
  %60 = extractelement <4 x float> %59, i64 0
  %61 = fptosi float %60 to i32
  %62 = or i64 %49, 4
  %63 = uitofp i64 %62 to float
  %64 = fmul float %63, %explicit_4
  %65 = fmul float %64, 2.500000e-01
  %66 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %65, i64 0
  %67 = call <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %66, i32 1) #5
  %68 = extractelement <4 x float> %67, i64 0
  %69 = fptosi float %68 to i32
  %70 = or i32 %promoted, 4
  %71 = sitofp i32 %70 to float
  %72 = fmul float %71, %explicit_4
  %73 = fmul float %72, 2.500000e-01
  %74 = insertelement <4 x float> <float undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %73, i64 0
  %75 = call <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %74, i32 1) #5
  %76 = extractelement <4 x float> %75, i64 0
  %77 = fptosi float %76 to i32
  %assembled.vect.i = insertelement <4 x i32> undef, i32 %61, i32 0
  %assembled.vect20.i = insertelement <4 x i32> %assembled.vect.i, i32 %69, i32 1
  %assembled.vect21.i = insertelement <4 x i32> %assembled.vect20.i, i32 %77, i32 2
  %78 = load i32 addrspace(2)* %explicit_9, align 1, !noalias !58
  %temp368.i = insertelement <8 x i32> undef, i32 %78, i32 0
  %vector367.i = shufflevector <8 x i32> %temp368.i, <8 x i32> undef, <8 x i32> zeroinitializer
  %79 = sext i32 %78 to i64
  %temp460.i = insertelement <8 x i64> undef, i64 %79, i32 0
  %vector459.i = shufflevector <8 x i64> %temp460.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %uniformGEP.i = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 8
  %uniformGEP317.i = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 16
  %uniformGEP325.i = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 24
  br label %SyncBB3.i

SyncBB3.i:                                        ; preds = %Dispatch.i, %Dispatch2273.i, %wrapper_entry
  %.lcssa2294.i = phi i64 [ 0, %wrapper_entry ], [ %.lcssa2288.i, %Dispatch2273.i ], [ %.lcssa2292.i, %Dispatch.i ]
  %80 = phi i64 [ 0, %wrapper_entry ], [ %426, %Dispatch2273.i ], [ %504, %Dispatch.i ]
  %81 = phi i64 [ 0, %wrapper_entry ], [ %427, %Dispatch2273.i ], [ %505, %Dispatch.i ]
  %vector4592260.0.i = phi <8 x i64> [ undef, %wrapper_entry ], [ %vector4592260.1.i, %Dispatch2273.i ], [ %vector4592260.3.i, %Dispatch.i ]
  %pCurrBarrier.0.i = phi i32 [ 7, %wrapper_entry ], [ %pCurrBarrier.1.i, %Dispatch2273.i ], [ %pCurrBarrier.3.i, %Dispatch.i ]
  %pCurrSBIndex.0.i = phi i64 [ 0, %wrapper_entry ], [ %428, %Dispatch2273.i ], [ %506, %Dispatch.i ]
  %82 = icmp sgt i32 %78, 0
  %83 = shl i64 %.lcssa2294.i, 3
  %84 = add i64 %83, %80
  %85 = shl i64 %84, 3
  %temp361.i = insertelement <8 x i64> undef, i64 %85, i32 0
  %vector360.i = shufflevector <8 x i64> %temp361.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %temp.i = insertelement <8 x i64> undef, i64 %81, i32 0
  %vector.i = shufflevector <8 x i64> %temp.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %86 = add <8 x i64> %vector.i, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %87 = add <8 x i64> %vector360.i, %86
  %88 = getelementptr inbounds i8* %pSpecialBuf, i64 %pCurrSBIndex.0.i
  %pSB_LocalId.i = bitcast i8* %88 to <8 x i64>*
  store <8 x i64> %87, <8 x i64>* %pSB_LocalId.i, align 64, !alias.scope !68, !noalias !69
  %89 = trunc <8 x i64> %87 to <8 x i32>
  %90 = add <8 x i64> %vector362.i, %86
  %91 = uitofp <8 x i64> %90 to <8 x float>
  %92 = fmul <8 x float> %91, %vector364.i
  %SB_LocalId_Offset1184.i = add nuw i64 %pCurrSBIndex.0.i, 64
  %93 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1184.i
  %pSB_LocalId1185.i = bitcast i8* %93 to <8 x float>*
  store <8 x float> %92, <8 x float>* %pSB_LocalId1185.i, align 32, !alias.scope !68, !noalias !69
  %94 = add i64 %49, %80
  %95 = uitofp i64 %94 to float
  %96 = fmul float %95, %explicit_4
  %SB_LocalId_Offset1219.i = add nuw i64 %pCurrSBIndex.0.i, 96
  %97 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1219.i
  %pSB_LocalId1220.i = bitcast i8* %97 to float*
  store float %96, float* %pSB_LocalId1220.i, align 4, !alias.scope !68, !noalias !69
  %98 = add i64 %53, %.lcssa2294.i
  %99 = uitofp i64 %98 to float
  %100 = fmul float %99, %explicit_4
  %SB_LocalId_Offset1254.i = add nuw i64 %pCurrSBIndex.0.i, 100
  %101 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1254.i
  %pSB_LocalId1255.i = bitcast i8* %101 to float*
  store float %100, float* %pSB_LocalId1255.i, align 4, !alias.scope !68, !noalias !69
  %sunkaddr = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr28 = add i64 %sunkaddr, 4224
  %sunkaddr29 = inttoptr i64 %sunkaddr28 to <4 x i32> addrspace(3)*
  %102 = load <4 x i32> addrspace(3)* %sunkaddr29, align 128, !alias.scope !70, !noalias !71
  %assembled.vect22.i = shufflevector <4 x i32> %assembled.vect21.i, <4 x i32> %102, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i32> %assembled.vect22.i, <4 x i32> addrspace(3)* %sunkaddr29, align 128, !alias.scope !70, !noalias !71
  %103 = ashr <8 x i32> %89, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  br i1 %82, label %.lr.ph.i, label %._crit_edge13.i

.lr.ph.i:                                         ; preds = %SyncBB3.i
  %104 = shl <8 x i32> %103, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %SB_LocalId_Offset1289.i = add nuw i64 %pCurrSBIndex.0.i, 128
  %105 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1289.i
  %pSB_LocalId1290.i = bitcast i8* %105 to <8 x i32>*
  store <8 x i32> %104, <8 x i32>* %pSB_LocalId1290.i, align 32, !alias.scope !68, !noalias !69
  %106 = and <8 x i32> %89, <i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>
  %SB_LocalId_Offset1324.i = add nuw i64 %pCurrSBIndex.0.i, 160
  %107 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1324.i
  %pSB_LocalId1325.i = bitcast i8* %107 to <8 x i32>*
  store <8 x i32> %106, <8 x i32>* %pSB_LocalId1325.i, align 32, !alias.scope !68, !noalias !69
  %extract394.i = extractelement <8 x i32> %106, i32 0
  %extract395.i = extractelement <8 x i32> %106, i32 1
  %extract396.i = extractelement <8 x i32> %106, i32 2
  %extract397.i = extractelement <8 x i32> %106, i32 3
  %extract398.i = extractelement <8 x i32> %106, i32 4
  %extract399.i = extractelement <8 x i32> %106, i32 5
  %extract400.i = extractelement <8 x i32> %106, i32 6
  %extract401.i = extractelement <8 x i32> %106, i32 7
  %108 = zext i32 %extract394.i to i64
  %SB_LocalId_Offset1359.i = add nuw i64 %pCurrSBIndex.0.i, 192
  %109 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1359.i
  %pSB_LocalId1360.i = bitcast i8* %109 to i64*
  store i64 %108, i64* %pSB_LocalId1360.i, align 8, !alias.scope !68, !noalias !69
  %110 = zext i32 %extract395.i to i64
  %SB_LocalId_Offset1394.i = add nuw i64 %pCurrSBIndex.0.i, 200
  %111 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1394.i
  %pSB_LocalId1395.i = bitcast i8* %111 to i64*
  store i64 %110, i64* %pSB_LocalId1395.i, align 8, !alias.scope !68, !noalias !69
  %112 = zext i32 %extract396.i to i64
  %SB_LocalId_Offset1429.i = add nuw i64 %pCurrSBIndex.0.i, 208
  %113 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1429.i
  %pSB_LocalId1430.i = bitcast i8* %113 to i64*
  store i64 %112, i64* %pSB_LocalId1430.i, align 8, !alias.scope !68, !noalias !69
  %114 = zext i32 %extract397.i to i64
  %SB_LocalId_Offset1464.i = add nuw i64 %pCurrSBIndex.0.i, 216
  %115 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1464.i
  %pSB_LocalId1465.i = bitcast i8* %115 to i64*
  store i64 %114, i64* %pSB_LocalId1465.i, align 8, !alias.scope !68, !noalias !69
  %116 = zext i32 %extract398.i to i64
  %SB_LocalId_Offset1499.i = add nuw i64 %pCurrSBIndex.0.i, 224
  %117 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1499.i
  %pSB_LocalId1500.i = bitcast i8* %117 to i64*
  store i64 %116, i64* %pSB_LocalId1500.i, align 8, !alias.scope !68, !noalias !69
  %118 = zext i32 %extract399.i to i64
  %SB_LocalId_Offset1534.i = add nuw i64 %pCurrSBIndex.0.i, 232
  %119 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1534.i
  %pSB_LocalId1535.i = bitcast i8* %119 to i64*
  store i64 %118, i64* %pSB_LocalId1535.i, align 8, !alias.scope !68, !noalias !69
  %120 = zext i32 %extract400.i to i64
  %SB_LocalId_Offset1569.i = add nuw i64 %pCurrSBIndex.0.i, 240
  %121 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1569.i
  %pSB_LocalId1570.i = bitcast i8* %121 to i64*
  store i64 %120, i64* %pSB_LocalId1570.i, align 8, !alias.scope !68, !noalias !69
  %122 = zext i32 %extract401.i to i64
  %SB_LocalId_Offset1604.i = add nuw i64 %pCurrSBIndex.0.i, 248
  %123 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1604.i
  %pSB_LocalId1605.i = bitcast i8* %123 to i64*
  store i64 %122, i64* %pSB_LocalId1605.i, align 8, !alias.scope !68, !noalias !69
  %124 = or <8 x i32> %106, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %extract410.i = extractelement <8 x i32> %124, i32 0
  %extract411.i = extractelement <8 x i32> %124, i32 1
  %extract412.i = extractelement <8 x i32> %124, i32 2
  %extract413.i = extractelement <8 x i32> %124, i32 3
  %extract414.i = extractelement <8 x i32> %124, i32 4
  %extract415.i = extractelement <8 x i32> %124, i32 5
  %extract416.i = extractelement <8 x i32> %124, i32 6
  %extract417.i = extractelement <8 x i32> %124, i32 7
  %125 = zext i32 %extract410.i to i64
  %SB_LocalId_Offset1639.i = add nuw i64 %pCurrSBIndex.0.i, 256
  %126 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1639.i
  %pSB_LocalId1640.i = bitcast i8* %126 to i64*
  store i64 %125, i64* %pSB_LocalId1640.i, align 8, !alias.scope !68, !noalias !69
  %127 = zext i32 %extract411.i to i64
  %SB_LocalId_Offset1674.i = add nuw i64 %pCurrSBIndex.0.i, 264
  %128 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1674.i
  %pSB_LocalId1675.i = bitcast i8* %128 to i64*
  store i64 %127, i64* %pSB_LocalId1675.i, align 8, !alias.scope !68, !noalias !69
  %129 = zext i32 %extract412.i to i64
  %SB_LocalId_Offset1709.i = add nuw i64 %pCurrSBIndex.0.i, 272
  %130 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1709.i
  %pSB_LocalId1710.i = bitcast i8* %130 to i64*
  store i64 %129, i64* %pSB_LocalId1710.i, align 8, !alias.scope !68, !noalias !69
  %131 = zext i32 %extract413.i to i64
  %SB_LocalId_Offset1744.i = add nuw i64 %pCurrSBIndex.0.i, 280
  %132 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1744.i
  %pSB_LocalId1745.i = bitcast i8* %132 to i64*
  store i64 %131, i64* %pSB_LocalId1745.i, align 8, !alias.scope !68, !noalias !69
  %133 = zext i32 %extract414.i to i64
  %SB_LocalId_Offset1779.i = add nuw i64 %pCurrSBIndex.0.i, 288
  %134 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1779.i
  %pSB_LocalId1780.i = bitcast i8* %134 to i64*
  store i64 %133, i64* %pSB_LocalId1780.i, align 8, !alias.scope !68, !noalias !69
  %135 = zext i32 %extract415.i to i64
  %SB_LocalId_Offset1814.i = add nuw i64 %pCurrSBIndex.0.i, 296
  %136 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1814.i
  %pSB_LocalId1815.i = bitcast i8* %136 to i64*
  store i64 %135, i64* %pSB_LocalId1815.i, align 8, !alias.scope !68, !noalias !69
  %137 = zext i32 %extract416.i to i64
  %SB_LocalId_Offset1849.i = add nuw i64 %pCurrSBIndex.0.i, 304
  %138 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1849.i
  %pSB_LocalId1850.i = bitcast i8* %138 to i64*
  store i64 %137, i64* %pSB_LocalId1850.i, align 8, !alias.scope !68, !noalias !69
  %139 = zext i32 %extract417.i to i64
  %SB_LocalId_Offset1884.i = add nuw i64 %pCurrSBIndex.0.i, 312
  %140 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1884.i
  %pSB_LocalId1885.i = bitcast i8* %140 to i64*
  store i64 %139, i64* %pSB_LocalId1885.i, align 8, !alias.scope !68, !noalias !69
  br label %header.i

header.i:                                         ; preds = %._crit_edge19.i, %.lr.ph.i
  %.lcssa2289.i = phi i64 [ %.lcssa2294.i, %.lr.ph.i ], [ %.lcssa2290.i, %._crit_edge19.i ]
  %141 = phi i64 [ %80, %.lr.ph.i ], [ %485, %._crit_edge19.i ]
  %142 = phi i64 [ %81, %.lr.ph.i ], [ %486, %._crit_edge19.i ]
  %vector4592260.1.i = phi <8 x i64> [ %vector459.i, %.lr.ph.i ], [ %vector4592260.2.i, %._crit_edge19.i ]
  %pCurrBarrier.1.i = phi i32 [ %pCurrBarrier.0.i, %.lr.ph.i ], [ 2, %._crit_edge19.i ]
  %pCurrSBIndex.1.i = phi i64 [ %pCurrSBIndex.0.i, %.lr.ph.i ], [ %pCurrSBIndex.3.i, %._crit_edge19.i ]
  %143 = phi i32 [ %61, %.lr.ph.i ], [ %scalar23.i, %._crit_edge19.i ]
  %144 = phi i32 [ %69, %.lr.ph.i ], [ %scalar24.i, %._crit_edge19.i ]
  %145 = phi i32 [ %77, %.lr.ph.i ], [ %scalar25.i, %._crit_edge19.i ]
  %vectorPHI.i = phi <8 x float> [ zeroinitializer, %.lr.ph.i ], [ %loadedValue1983.i, %._crit_edge19.i ]
  %numbins.010.i = phi i32 [ 32, %.lr.ph.i ], [ %loadedValue1964.i, %._crit_edge19.i ]
  %totalbins.09.i = phi i32 [ 0, %.lr.ph.i ], [ %489, %._crit_edge19.i ]
  %vectorPHI366.i = phi <8 x i32> [ %103, %.lr.ph.i ], [ %loadedValue1957.i, %._crit_edge19.i ]
  %SB_LocalId_Offset1937.i = add nuw i64 %pCurrSBIndex.1.i, 356
  %146 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1937.i
  %pSB_LocalId1938.i = bitcast i8* %146 to i32*
  store i32 %totalbins.09.i, i32* %pSB_LocalId1938.i, align 4, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1930.i = add nuw i64 %pCurrSBIndex.1.i, 352
  %147 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1930.i
  %pSB_LocalId1931.i = bitcast i8* %147 to i32*
  store i32 %numbins.010.i, i32* %pSB_LocalId1931.i, align 4, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1919.i = add nuw i64 %pCurrSBIndex.1.i, 320
  %148 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1919.i
  %pSB_LocalId1920.i = bitcast i8* %148 to <8 x float>*
  store <8 x float> %vectorPHI.i, <8 x float>* %pSB_LocalId1920.i, align 32, !alias.scope !68, !noalias !69
  %temp381.i = insertelement <8 x i32> undef, i32 %145, i32 0
  %vector380.i = shufflevector <8 x i32> %temp381.i, <8 x i32> undef, <8 x i32> zeroinitializer
  %temp379.i = insertelement <8 x i32> undef, i32 %144, i32 0
  %vector378.i = shufflevector <8 x i32> %temp379.i, <8 x i32> undef, <8 x i32> zeroinitializer
  %temp377.i = insertelement <8 x i32> undef, i32 %143, i32 0
  %vector376.i = shufflevector <8 x i32> %temp377.i, <8 x i32> undef, <8 x i32> zeroinitializer
  %extract.i = extractelement <8 x i32> %vectorPHI366.i, i32 0
  %extract369.i = extractelement <8 x i32> %vectorPHI366.i, i32 1
  %extract370.i = extractelement <8 x i32> %vectorPHI366.i, i32 2
  %extract371.i = extractelement <8 x i32> %vectorPHI366.i, i32 3
  %extract372.i = extractelement <8 x i32> %vectorPHI366.i, i32 4
  %extract373.i = extractelement <8 x i32> %vectorPHI366.i, i32 5
  %extract374.i = extractelement <8 x i32> %vectorPHI366.i, i32 6
  %extract375.i = extractelement <8 x i32> %vectorPHI366.i, i32 7
  %149 = sext <8 x i32> %vectorPHI366.i to <8 x i64>
  %150 = sext i32 %extract.i to i64
  %151 = sext i32 %extract369.i to i64
  %152 = sext i32 %extract370.i to i64
  %153 = sext i32 %extract371.i to i64
  %154 = sext i32 %extract372.i to i64
  %155 = sext i32 %extract373.i to i64
  %156 = sext i32 %extract374.i to i64
  %157 = sext i32 %extract375.i to i64
  %158 = icmp slt <8 x i32> %vectorPHI366.i, %vector367.i
  %.sext.i = sext <8 x i1> %158 to <8 x i32>
  %extract434.i = extractelement <8 x i1> %158, i32 0
  %extract435.i = extractelement <8 x i1> %158, i32 1
  %extract436.i = extractelement <8 x i1> %158, i32 2
  %extract437.i = extractelement <8 x i1> %158, i32 3
  %extract438.i = extractelement <8 x i1> %158, i32 4
  %extract439.i = extractelement <8 x i1> %158, i32 5
  %extract440.i = extractelement <8 x i1> %158, i32 6
  %extract441.i = extractelement <8 x i1> %158, i32 7
  %a.i174.i = bitcast <8 x i32> %.sext.i to <4 x i64>
  %res.i175.i = call i32 @llvm.x86.avx.ptestz.256(<4 x i64> %a.i174.i, <4 x i64> %a.i174.i) #5
  %159 = and i32 %res.i175.i, 1
  %zero.i176.i = icmp eq i32 %159, 0
  br i1 %zero.i176.i, label %pre_.i, label %.critedge.i

pre_.i:                                           ; preds = %header.i
  %160 = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 %150
  %161 = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 %151
  %162 = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 %152
  %163 = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 %153
  %164 = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 %154
  %165 = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 %155
  %166 = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 %156
  %167 = getelementptr inbounds <4 x i32> addrspace(2)* %explicit_10, i64 %157
  %res.i172.i = call i32 @llvm.x86.avx.ptestc.256(<4 x i64> %a.i174.i, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>) #5
  %168 = and i32 %res.i172.i, 1
  %one.i173.i = icmp eq i32 %168, 0
  br i1 %one.i173.i, label %281, label %_allOnes.i

_allOnes.i:                                       ; preds = %pre_.i
  %169 = addrspacecast <4 x i32> addrspace(2)* %167 to <4 x i32>*
  %170 = addrspacecast <4 x i32> addrspace(2)* %166 to <4 x i32>*
  %171 = addrspacecast <4 x i32> addrspace(2)* %165 to <4 x i32>*
  %172 = addrspacecast <4 x i32> addrspace(2)* %164 to <4 x i32>*
  %173 = addrspacecast <4 x i32> addrspace(2)* %163 to <4 x i32>*
  %174 = addrspacecast <4 x i32> addrspace(2)* %162 to <4 x i32>*
  %175 = addrspacecast <4 x i32> addrspace(2)* %161 to <4 x i32>*
  %176 = addrspacecast <4 x i32> addrspace(2)* %160 to <4 x i32>*
  %SB_LocalId_Offset2135.i = add nuw i64 %pCurrSBIndex.1.i, 1376
  %177 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2135.i
  %pSB_LocalId2136.i = bitcast i8* %177 to <8 x i32>*
  %SB_LocalId_Offset2141.i = add nuw i64 %pCurrSBIndex.1.i, 1408
  %178 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2141.i
  %pSB_LocalId2142.i = bitcast i8* %178 to <8 x i32>*
  %SB_LocalId_Offset2147.i = add nuw i64 %pCurrSBIndex.1.i, 1440
  %179 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2147.i
  %pSB_LocalId2148.i = bitcast i8* %179 to <8 x i32>*
  %SB_LocalId_Offset2150.i = add nuw i64 %pCurrSBIndex.1.i, 1472
  %180 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2150.i
  %pSB_LocalId2151.i = bitcast i8* %180 to <8 x i32>*
  %181 = load <4 x i32>* %176, align 16, !tbaa !72, !noalias !58
  %182 = load <4 x i32>* %172, align 16, !tbaa !72, !noalias !58
  %newShuffle.i159.i = shufflevector <4 x i32> %181, <4 x i32> %182, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %183 = load <4 x i32>* %175, align 16, !tbaa !72, !noalias !58
  %184 = load <4 x i32>* %171, align 16, !tbaa !72, !noalias !58
  %newShuffle1.i160.i = shufflevector <4 x i32> %183, <4 x i32> %184, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %185 = load <4 x i32>* %174, align 16, !tbaa !72, !noalias !58
  %186 = load <4 x i32>* %170, align 16, !tbaa !72, !noalias !58
  %newShuffle2.i161.i = shufflevector <4 x i32> %185, <4 x i32> %186, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %187 = load <4 x i32>* %173, align 16, !tbaa !72, !noalias !58
  %188 = load <4 x i32>* %169, align 16, !tbaa !72, !noalias !58
  %newShuffle3.i162.i = shufflevector <4 x i32> %187, <4 x i32> %188, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %newShuffle4.i163.i = shufflevector <8 x i32> %newShuffle.i159.i, <8 x i32> %newShuffle2.i161.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle5.i164.i = shufflevector <8 x i32> %newShuffle.i159.i, <8 x i32> %newShuffle2.i161.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle6.i165.i = shufflevector <8 x i32> %newShuffle1.i160.i, <8 x i32> %newShuffle3.i162.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle7.i166.i = shufflevector <8 x i32> %newShuffle1.i160.i, <8 x i32> %newShuffle3.i162.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle8.i167.i = shufflevector <8 x i32> %newShuffle4.i163.i, <8 x i32> %newShuffle6.i165.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  store <8 x i32> %newShuffle8.i167.i, <8 x i32>* %pSB_LocalId2136.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle9.i168.i = shufflevector <8 x i32> %newShuffle4.i163.i, <8 x i32> %newShuffle6.i165.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  store <8 x i32> %newShuffle9.i168.i, <8 x i32>* %pSB_LocalId2142.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle10.i169.i = shufflevector <8 x i32> %newShuffle5.i164.i, <8 x i32> %newShuffle7.i166.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  store <8 x i32> %newShuffle10.i169.i, <8 x i32>* %pSB_LocalId2148.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle11.i170.i = shufflevector <8 x i32> %newShuffle5.i164.i, <8 x i32> %newShuffle7.i166.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  store <8 x i32> %newShuffle11.i170.i, <8 x i32>* %pSB_LocalId2151.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %189 = add nsw <8 x i32> %newShuffle8.i167.i, %vector376.i
  %190 = add nsw <8 x i32> %newShuffle9.i168.i, %vector378.i
  %191 = add nsw <8 x i32> %newShuffle10.i169.i, %vector380.i
  %192 = mul nsw <8 x i32> %191, %vector382.i
  %193 = add nsw <8 x i32> %190, %192
  %194 = mul nsw <8 x i32> %193, %vector384.i
  %195 = add nsw <8 x i32> %189, %194
  %196 = shl <8 x i32> %195, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %extract386.i = extractelement <8 x i32> %196, i32 0
  %extract387.i = extractelement <8 x i32> %196, i32 1
  %extract388.i = extractelement <8 x i32> %196, i32 2
  %extract389.i = extractelement <8 x i32> %196, i32 3
  %extract390.i = extractelement <8 x i32> %196, i32 4
  %extract391.i = extractelement <8 x i32> %196, i32 5
  %extract392.i = extractelement <8 x i32> %196, i32 6
  %extract393.i = extractelement <8 x i32> %196, i32 7
  %197 = sext i32 %extract386.i to i64
  %198 = sext i32 %extract387.i to i64
  %199 = sext i32 %extract388.i to i64
  %200 = sext i32 %extract389.i to i64
  %201 = sext i32 %extract390.i to i64
  %202 = sext i32 %extract391.i to i64
  %203 = sext i32 %extract392.i to i64
  %204 = sext i32 %extract393.i to i64
  %205 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %197
  %206 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %198
  %207 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %199
  %208 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %200
  %209 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %201
  %210 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %202
  %211 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %203
  %212 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %204
  %SB_LocalId_Offset1390.i = add nuw i64 %pCurrSBIndex.1.i, 192
  %213 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1390.i
  %pSB_LocalId1391.i = bitcast i8* %213 to i64*
  %loadedValue1392.i = load i64* %pSB_LocalId1391.i, align 8, !alias.scope !68, !noalias !69
  %214 = getelementptr inbounds float addrspace(1)* %205, i64 %loadedValue1392.i
  %SB_LocalId_Offset1425.i = add nuw i64 %pCurrSBIndex.1.i, 200
  %215 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1425.i
  %pSB_LocalId1426.i = bitcast i8* %215 to i64*
  %loadedValue1427.i = load i64* %pSB_LocalId1426.i, align 8, !alias.scope !68, !noalias !69
  %216 = getelementptr inbounds float addrspace(1)* %206, i64 %loadedValue1427.i
  %SB_LocalId_Offset1460.i = add nuw i64 %pCurrSBIndex.1.i, 208
  %217 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1460.i
  %pSB_LocalId1461.i = bitcast i8* %217 to i64*
  %loadedValue1462.i = load i64* %pSB_LocalId1461.i, align 8, !alias.scope !68, !noalias !69
  %218 = getelementptr inbounds float addrspace(1)* %207, i64 %loadedValue1462.i
  %SB_LocalId_Offset1495.i = add nuw i64 %pCurrSBIndex.1.i, 216
  %219 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1495.i
  %pSB_LocalId1496.i = bitcast i8* %219 to i64*
  %loadedValue1497.i = load i64* %pSB_LocalId1496.i, align 8, !alias.scope !68, !noalias !69
  %220 = getelementptr inbounds float addrspace(1)* %208, i64 %loadedValue1497.i
  %SB_LocalId_Offset1530.i = add nuw i64 %pCurrSBIndex.1.i, 224
  %221 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1530.i
  %pSB_LocalId1531.i = bitcast i8* %221 to i64*
  %loadedValue1532.i = load i64* %pSB_LocalId1531.i, align 8, !alias.scope !68, !noalias !69
  %222 = getelementptr inbounds float addrspace(1)* %209, i64 %loadedValue1532.i
  %SB_LocalId_Offset1565.i = add nuw i64 %pCurrSBIndex.1.i, 232
  %223 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1565.i
  %pSB_LocalId1566.i = bitcast i8* %223 to i64*
  %loadedValue1567.i = load i64* %pSB_LocalId1566.i, align 8, !alias.scope !68, !noalias !69
  %224 = getelementptr inbounds float addrspace(1)* %210, i64 %loadedValue1567.i
  %SB_LocalId_Offset1600.i = add nuw i64 %pCurrSBIndex.1.i, 240
  %225 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1600.i
  %pSB_LocalId1601.i = bitcast i8* %225 to i64*
  %loadedValue1602.i = load i64* %pSB_LocalId1601.i, align 8, !alias.scope !68, !noalias !69
  %226 = getelementptr inbounds float addrspace(1)* %211, i64 %loadedValue1602.i
  %SB_LocalId_Offset1635.i = add nuw i64 %pCurrSBIndex.1.i, 248
  %227 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1635.i
  %pSB_LocalId1636.i = bitcast i8* %227 to i64*
  %loadedValue1637.i = load i64* %pSB_LocalId1636.i, align 8, !alias.scope !68, !noalias !69
  %228 = getelementptr inbounds float addrspace(1)* %212, i64 %loadedValue1637.i
  %229 = load float addrspace(1)* %214, align 1, !noalias !58
  %230 = load float addrspace(1)* %216, align 1, !noalias !58
  %231 = load float addrspace(1)* %218, align 1, !noalias !58
  %232 = load float addrspace(1)* %220, align 1, !noalias !58
  %233 = load float addrspace(1)* %222, align 1, !noalias !58
  %234 = load float addrspace(1)* %224, align 1, !noalias !58
  %235 = load float addrspace(1)* %226, align 1, !noalias !58
  %236 = load float addrspace(1)* %228, align 1, !noalias !58
  %SB_LocalId_Offset1320.i = add nuw i64 %pCurrSBIndex.1.i, 128
  %237 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1320.i
  %pSB_LocalId1321.i = bitcast i8* %237 to <8 x i32>*
  %loadedValue1322.i = load <8 x i32>* %pSB_LocalId1321.i, align 32, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1355.i = add nuw i64 %pCurrSBIndex.1.i, 160
  %238 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1355.i
  %pSB_LocalId1356.i = bitcast i8* %238 to <8 x i32>*
  %loadedValue1357.i = load <8 x i32>* %pSB_LocalId1356.i, align 32, !alias.scope !68, !noalias !69
  %239 = or <8 x i32> %loadedValue1322.i, %loadedValue1357.i
  %extract402.i = extractelement <8 x i32> %239, i32 0
  %extract403.i = extractelement <8 x i32> %239, i32 1
  %extract404.i = extractelement <8 x i32> %239, i32 2
  %extract405.i = extractelement <8 x i32> %239, i32 3
  %extract406.i = extractelement <8 x i32> %239, i32 4
  %extract407.i = extractelement <8 x i32> %239, i32 5
  %extract408.i = extractelement <8 x i32> %239, i32 6
  %extract409.i = extractelement <8 x i32> %239, i32 7
  %240 = sext i32 %extract402.i to i64
  %241 = sext i32 %extract403.i to i64
  %242 = sext i32 %extract404.i to i64
  %243 = sext i32 %extract405.i to i64
  %244 = sext i32 %extract406.i to i64
  %245 = sext i32 %extract407.i to i64
  %246 = sext i32 %extract408.i to i64
  %247 = sext i32 %extract409.i to i64
  %sunkaddr30 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr31 = mul i64 %240, 4
  %sunkaddr32 = add i64 %sunkaddr30, %sunkaddr31
  %sunkaddr33 = add i64 %sunkaddr32, 128
  %sunkaddr34 = inttoptr i64 %sunkaddr33 to float addrspace(3)*
  store float %229, float addrspace(3)* %sunkaddr34, align 4, !alias.scope !70, !noalias !71
  %sunkaddr35 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr36 = mul i64 %241, 4
  %sunkaddr37 = add i64 %sunkaddr35, %sunkaddr36
  %sunkaddr38 = add i64 %sunkaddr37, 128
  %sunkaddr39 = inttoptr i64 %sunkaddr38 to float addrspace(3)*
  store float %230, float addrspace(3)* %sunkaddr39, align 4, !alias.scope !70, !noalias !71
  %sunkaddr40 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr41 = mul i64 %242, 4
  %sunkaddr42 = add i64 %sunkaddr40, %sunkaddr41
  %sunkaddr43 = add i64 %sunkaddr42, 128
  %sunkaddr44 = inttoptr i64 %sunkaddr43 to float addrspace(3)*
  store float %231, float addrspace(3)* %sunkaddr44, align 4, !alias.scope !70, !noalias !71
  %sunkaddr45 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr46 = mul i64 %243, 4
  %sunkaddr47 = add i64 %sunkaddr45, %sunkaddr46
  %sunkaddr48 = add i64 %sunkaddr47, 128
  %sunkaddr49 = inttoptr i64 %sunkaddr48 to float addrspace(3)*
  store float %232, float addrspace(3)* %sunkaddr49, align 4, !alias.scope !70, !noalias !71
  %sunkaddr50 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr51 = mul i64 %244, 4
  %sunkaddr52 = add i64 %sunkaddr50, %sunkaddr51
  %sunkaddr53 = add i64 %sunkaddr52, 128
  %sunkaddr54 = inttoptr i64 %sunkaddr53 to float addrspace(3)*
  store float %233, float addrspace(3)* %sunkaddr54, align 4, !alias.scope !70, !noalias !71
  %sunkaddr55 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr56 = mul i64 %245, 4
  %sunkaddr57 = add i64 %sunkaddr55, %sunkaddr56
  %sunkaddr58 = add i64 %sunkaddr57, 128
  %sunkaddr59 = inttoptr i64 %sunkaddr58 to float addrspace(3)*
  store float %234, float addrspace(3)* %sunkaddr59, align 4, !alias.scope !70, !noalias !71
  %sunkaddr60 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr61 = mul i64 %246, 4
  %sunkaddr62 = add i64 %sunkaddr60, %sunkaddr61
  %sunkaddr63 = add i64 %sunkaddr62, 128
  %sunkaddr64 = inttoptr i64 %sunkaddr63 to float addrspace(3)*
  store float %235, float addrspace(3)* %sunkaddr64, align 4, !alias.scope !70, !noalias !71
  %sunkaddr65 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr66 = mul i64 %247, 4
  %sunkaddr67 = add i64 %sunkaddr65, %sunkaddr66
  %sunkaddr68 = add i64 %sunkaddr67, 128
  %sunkaddr69 = inttoptr i64 %sunkaddr68 to float addrspace(3)*
  store float %236, float addrspace(3)* %sunkaddr69, align 4, !alias.scope !70, !noalias !71
  %SB_LocalId_Offset1670.i = add nuw i64 %pCurrSBIndex.1.i, 256
  %248 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1670.i
  %pSB_LocalId1671.i = bitcast i8* %248 to i64*
  %loadedValue1672.i = load i64* %pSB_LocalId1671.i, align 8, !alias.scope !68, !noalias !69
  %249 = getelementptr inbounds float addrspace(1)* %205, i64 %loadedValue1672.i
  %SB_LocalId_Offset1705.i = add nuw i64 %pCurrSBIndex.1.i, 264
  %250 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1705.i
  %pSB_LocalId1706.i = bitcast i8* %250 to i64*
  %loadedValue1707.i = load i64* %pSB_LocalId1706.i, align 8, !alias.scope !68, !noalias !69
  %251 = getelementptr inbounds float addrspace(1)* %206, i64 %loadedValue1707.i
  %SB_LocalId_Offset1740.i = add nuw i64 %pCurrSBIndex.1.i, 272
  %252 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1740.i
  %pSB_LocalId1741.i = bitcast i8* %252 to i64*
  %loadedValue1742.i = load i64* %pSB_LocalId1741.i, align 8, !alias.scope !68, !noalias !69
  %253 = getelementptr inbounds float addrspace(1)* %207, i64 %loadedValue1742.i
  %SB_LocalId_Offset1775.i = add nuw i64 %pCurrSBIndex.1.i, 280
  %254 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1775.i
  %pSB_LocalId1776.i = bitcast i8* %254 to i64*
  %loadedValue1777.i = load i64* %pSB_LocalId1776.i, align 8, !alias.scope !68, !noalias !69
  %255 = getelementptr inbounds float addrspace(1)* %208, i64 %loadedValue1777.i
  %SB_LocalId_Offset1810.i = add nuw i64 %pCurrSBIndex.1.i, 288
  %256 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1810.i
  %pSB_LocalId1811.i = bitcast i8* %256 to i64*
  %loadedValue1812.i = load i64* %pSB_LocalId1811.i, align 8, !alias.scope !68, !noalias !69
  %257 = getelementptr inbounds float addrspace(1)* %209, i64 %loadedValue1812.i
  %SB_LocalId_Offset1845.i = add nuw i64 %pCurrSBIndex.1.i, 296
  %258 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1845.i
  %pSB_LocalId1846.i = bitcast i8* %258 to i64*
  %loadedValue1847.i = load i64* %pSB_LocalId1846.i, align 8, !alias.scope !68, !noalias !69
  %259 = getelementptr inbounds float addrspace(1)* %210, i64 %loadedValue1847.i
  %SB_LocalId_Offset1880.i = add nuw i64 %pCurrSBIndex.1.i, 304
  %260 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1880.i
  %pSB_LocalId1881.i = bitcast i8* %260 to i64*
  %loadedValue1882.i = load i64* %pSB_LocalId1881.i, align 8, !alias.scope !68, !noalias !69
  %261 = getelementptr inbounds float addrspace(1)* %211, i64 %loadedValue1882.i
  %SB_LocalId_Offset1915.i = add nuw i64 %pCurrSBIndex.1.i, 312
  %262 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1915.i
  %pSB_LocalId1916.i = bitcast i8* %262 to i64*
  %loadedValue1917.i = load i64* %pSB_LocalId1916.i, align 8, !alias.scope !68, !noalias !69
  %263 = getelementptr inbounds float addrspace(1)* %212, i64 %loadedValue1917.i
  %264 = load float addrspace(1)* %249, align 1, !noalias !58
  %265 = load float addrspace(1)* %251, align 1, !noalias !58
  %266 = load float addrspace(1)* %253, align 1, !noalias !58
  %267 = load float addrspace(1)* %255, align 1, !noalias !58
  %268 = load float addrspace(1)* %257, align 1, !noalias !58
  %269 = load float addrspace(1)* %259, align 1, !noalias !58
  %270 = load float addrspace(1)* %261, align 1, !noalias !58
  %271 = load float addrspace(1)* %263, align 1, !noalias !58
  %272 = or <8 x i32> %239, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %extract418.i = extractelement <8 x i32> %272, i32 0
  %extract419.i = extractelement <8 x i32> %272, i32 1
  %extract420.i = extractelement <8 x i32> %272, i32 2
  %extract421.i = extractelement <8 x i32> %272, i32 3
  %extract422.i = extractelement <8 x i32> %272, i32 4
  %extract423.i = extractelement <8 x i32> %272, i32 5
  %extract424.i = extractelement <8 x i32> %272, i32 6
  %extract425.i = extractelement <8 x i32> %272, i32 7
  %273 = sext i32 %extract418.i to i64
  %274 = sext i32 %extract419.i to i64
  %275 = sext i32 %extract420.i to i64
  %276 = sext i32 %extract421.i to i64
  %277 = sext i32 %extract422.i to i64
  %278 = sext i32 %extract423.i to i64
  %279 = sext i32 %extract424.i to i64
  %280 = sext i32 %extract425.i to i64
  %sunkaddr70 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr71 = mul i64 %273, 4
  %sunkaddr72 = add i64 %sunkaddr70, %sunkaddr71
  %sunkaddr73 = add i64 %sunkaddr72, 128
  %sunkaddr74 = inttoptr i64 %sunkaddr73 to float addrspace(3)*
  store float %264, float addrspace(3)* %sunkaddr74, align 4, !alias.scope !70, !noalias !71
  %sunkaddr75 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr76 = mul i64 %274, 4
  %sunkaddr77 = add i64 %sunkaddr75, %sunkaddr76
  %sunkaddr78 = add i64 %sunkaddr77, 128
  %sunkaddr79 = inttoptr i64 %sunkaddr78 to float addrspace(3)*
  store float %265, float addrspace(3)* %sunkaddr79, align 4, !alias.scope !70, !noalias !71
  %sunkaddr80 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr81 = mul i64 %275, 4
  %sunkaddr82 = add i64 %sunkaddr80, %sunkaddr81
  %sunkaddr83 = add i64 %sunkaddr82, 128
  %sunkaddr84 = inttoptr i64 %sunkaddr83 to float addrspace(3)*
  store float %266, float addrspace(3)* %sunkaddr84, align 4, !alias.scope !70, !noalias !71
  %sunkaddr85 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr86 = mul i64 %276, 4
  %sunkaddr87 = add i64 %sunkaddr85, %sunkaddr86
  %sunkaddr88 = add i64 %sunkaddr87, 128
  %sunkaddr89 = inttoptr i64 %sunkaddr88 to float addrspace(3)*
  store float %267, float addrspace(3)* %sunkaddr89, align 4, !alias.scope !70, !noalias !71
  %sunkaddr90 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr91 = mul i64 %277, 4
  %sunkaddr92 = add i64 %sunkaddr90, %sunkaddr91
  %sunkaddr93 = add i64 %sunkaddr92, 128
  %sunkaddr94 = inttoptr i64 %sunkaddr93 to float addrspace(3)*
  store float %268, float addrspace(3)* %sunkaddr94, align 4, !alias.scope !70, !noalias !71
  %sunkaddr95 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr96 = mul i64 %278, 4
  %sunkaddr97 = add i64 %sunkaddr95, %sunkaddr96
  %sunkaddr98 = add i64 %sunkaddr97, 128
  %sunkaddr99 = inttoptr i64 %sunkaddr98 to float addrspace(3)*
  store float %269, float addrspace(3)* %sunkaddr99, align 4, !alias.scope !70, !noalias !71
  %sunkaddr100 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr101 = mul i64 %279, 4
  %sunkaddr102 = add i64 %sunkaddr100, %sunkaddr101
  %sunkaddr103 = add i64 %sunkaddr102, 128
  %sunkaddr104 = inttoptr i64 %sunkaddr103 to float addrspace(3)*
  store float %270, float addrspace(3)* %sunkaddr104, align 4, !alias.scope !70, !noalias !71
  %sunkaddr105 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr106 = mul i64 %280, 4
  %sunkaddr107 = add i64 %sunkaddr105, %sunkaddr106
  %sunkaddr108 = add i64 %sunkaddr107, 128
  %sunkaddr109 = inttoptr i64 %sunkaddr108 to float addrspace(3)*
  store float %271, float addrspace(3)* %sunkaddr109, align 4, !alias.scope !70, !noalias !71
  br label %post_.i

; <label>:281                                     ; preds = %pre_.i
  %282 = bitcast <4 x i32>* %dummy.i132.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %282) #5, !noalias !58
  %283 = bitcast <8 x i32> %.sext.i to <8 x float>
  %284 = call i32 @llvm.x86.avx.movmsk.ps.256(<8 x float> %283) #5
  %285 = and i32 %284, 255
  %286 = icmp eq i32 %285, 255
  br i1 %286, label %287, label %304

; <label>:287                                     ; preds = %281
  %288 = addrspacecast <4 x i32> addrspace(2)* %167 to <4 x i32>*
  %289 = addrspacecast <4 x i32> addrspace(2)* %166 to <4 x i32>*
  %290 = addrspacecast <4 x i32> addrspace(2)* %165 to <4 x i32>*
  %291 = addrspacecast <4 x i32> addrspace(2)* %164 to <4 x i32>*
  %292 = addrspacecast <4 x i32> addrspace(2)* %163 to <4 x i32>*
  %293 = addrspacecast <4 x i32> addrspace(2)* %162 to <4 x i32>*
  %294 = addrspacecast <4 x i32> addrspace(2)* %161 to <4 x i32>*
  %295 = addrspacecast <4 x i32> addrspace(2)* %160 to <4 x i32>*
  %296 = load <4 x i32>* %295, align 16, !tbaa !72, !noalias !58
  %297 = load <4 x i32>* %291, align 16, !tbaa !72, !noalias !58
  %newShuffle.i133.i = shufflevector <4 x i32> %296, <4 x i32> %297, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %298 = load <4 x i32>* %294, align 16, !tbaa !72, !noalias !58
  %299 = load <4 x i32>* %290, align 16, !tbaa !72, !noalias !58
  %newShuffle1.i134.i = shufflevector <4 x i32> %298, <4 x i32> %299, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %300 = load <4 x i32>* %293, align 16, !tbaa !72, !noalias !58
  %301 = load <4 x i32>* %289, align 16, !tbaa !72, !noalias !58
  %newShuffle2.i135.i = shufflevector <4 x i32> %300, <4 x i32> %301, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %302 = load <4 x i32>* %292, align 16, !tbaa !72, !noalias !58
  %303 = load <4 x i32>* %288, align 16, !tbaa !72, !noalias !58
  %newShuffle3.i136.i = shufflevector <4 x i32> %302, <4 x i32> %303, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %newShuffle4.i137.i = shufflevector <8 x i32> %newShuffle.i133.i, <8 x i32> %newShuffle2.i135.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle5.i138.i = shufflevector <8 x i32> %newShuffle.i133.i, <8 x i32> %newShuffle2.i135.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle6.i139.i = shufflevector <8 x i32> %newShuffle1.i134.i, <8 x i32> %newShuffle3.i136.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle7.i140.i = shufflevector <8 x i32> %newShuffle1.i134.i, <8 x i32> %newShuffle3.i136.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle8.i141.i = shufflevector <8 x i32> %newShuffle4.i137.i, <8 x i32> %newShuffle6.i139.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr110 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr111 = add i64 %sunkaddr110, %pCurrSBIndex.1.i
  %sunkaddr112 = add i64 %sunkaddr111, 1248
  %sunkaddr113 = inttoptr i64 %sunkaddr112 to <8 x i32>*
  store <8 x i32> %newShuffle8.i141.i, <8 x i32>* %sunkaddr113, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle9.i142.i = shufflevector <8 x i32> %newShuffle4.i137.i, <8 x i32> %newShuffle6.i139.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %sunkaddr114 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr115 = add i64 %sunkaddr114, %pCurrSBIndex.1.i
  %sunkaddr116 = add i64 %sunkaddr115, 1280
  %sunkaddr117 = inttoptr i64 %sunkaddr116 to <8 x i32>*
  store <8 x i32> %newShuffle9.i142.i, <8 x i32>* %sunkaddr117, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle10.i143.i = shufflevector <8 x i32> %newShuffle5.i138.i, <8 x i32> %newShuffle7.i140.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr118 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr119 = add i64 %sunkaddr118, %pCurrSBIndex.1.i
  %sunkaddr120 = add i64 %sunkaddr119, 1312
  %sunkaddr121 = inttoptr i64 %sunkaddr120 to <8 x i32>*
  store <8 x i32> %newShuffle10.i143.i, <8 x i32>* %sunkaddr121, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle11.i144.i = shufflevector <8 x i32> %newShuffle5.i138.i, <8 x i32> %newShuffle7.i140.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  br label %__ocl_masked_gather_transpose_int_4x8.exit158.i

; <label>:304                                     ; preds = %281
  %305 = addrspacecast <4 x i32> addrspace(2)* %167 to <4 x i32>*
  %306 = addrspacecast <4 x i32> addrspace(2)* %166 to <4 x i32>*
  %307 = addrspacecast <4 x i32> addrspace(2)* %165 to <4 x i32>*
  %308 = addrspacecast <4 x i32> addrspace(2)* %164 to <4 x i32>*
  %309 = addrspacecast <4 x i32> addrspace(2)* %163 to <4 x i32>*
  %310 = addrspacecast <4 x i32> addrspace(2)* %162 to <4 x i32>*
  %311 = addrspacecast <4 x i32> addrspace(2)* %161 to <4 x i32>*
  %312 = addrspacecast <4 x i32> addrspace(2)* %160 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %dummy.i132.i, align 16, !noalias !58
  %313 = extractelement <8 x i32> %.sext.i, i64 0
  %314 = icmp ne i32 %313, 0
  %315 = select i1 %314, <4 x i32>* %312, <4 x i32>* %dummy.i132.i
  %316 = extractelement <8 x i32> %.sext.i, i64 1
  %317 = icmp ne i32 %316, 0
  %318 = select i1 %317, <4 x i32>* %311, <4 x i32>* %dummy.i132.i
  %319 = extractelement <8 x i32> %.sext.i, i64 2
  %320 = icmp ne i32 %319, 0
  %321 = select i1 %320, <4 x i32>* %310, <4 x i32>* %dummy.i132.i
  %322 = extractelement <8 x i32> %.sext.i, i64 3
  %323 = icmp ne i32 %322, 0
  %324 = select i1 %323, <4 x i32>* %309, <4 x i32>* %dummy.i132.i
  %325 = extractelement <8 x i32> %.sext.i, i64 4
  %326 = icmp ne i32 %325, 0
  %327 = select i1 %326, <4 x i32>* %308, <4 x i32>* %dummy.i132.i
  %328 = extractelement <8 x i32> %.sext.i, i64 5
  %329 = icmp ne i32 %328, 0
  %330 = select i1 %329, <4 x i32>* %307, <4 x i32>* %dummy.i132.i
  %331 = extractelement <8 x i32> %.sext.i, i64 6
  %332 = icmp ne i32 %331, 0
  %333 = select i1 %332, <4 x i32>* %306, <4 x i32>* %dummy.i132.i
  %334 = extractelement <8 x i32> %.sext.i, i64 7
  %335 = icmp ne i32 %334, 0
  %336 = select i1 %335, <4 x i32>* %305, <4 x i32>* %dummy.i132.i
  %337 = load <4 x i32>* %315, align 16, !tbaa !72, !noalias !58
  %338 = load <4 x i32>* %327, align 16, !tbaa !72, !noalias !58
  %newShuffle12.i145.i = shufflevector <4 x i32> %337, <4 x i32> %338, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %339 = load <4 x i32>* %318, align 16, !tbaa !72, !noalias !58
  %340 = load <4 x i32>* %330, align 16, !tbaa !72, !noalias !58
  %newShuffle13.i146.i = shufflevector <4 x i32> %339, <4 x i32> %340, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %341 = load <4 x i32>* %321, align 16, !tbaa !72, !noalias !58
  %342 = load <4 x i32>* %333, align 16, !tbaa !72, !noalias !58
  %newShuffle14.i147.i = shufflevector <4 x i32> %341, <4 x i32> %342, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %343 = load <4 x i32>* %324, align 16, !tbaa !72, !noalias !58
  %344 = load <4 x i32>* %336, align 16, !tbaa !72, !noalias !58
  %newShuffle15.i148.i = shufflevector <4 x i32> %343, <4 x i32> %344, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %newShuffle16.i149.i = shufflevector <8 x i32> %newShuffle12.i145.i, <8 x i32> %newShuffle14.i147.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle17.i150.i = shufflevector <8 x i32> %newShuffle12.i145.i, <8 x i32> %newShuffle14.i147.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle18.i151.i = shufflevector <8 x i32> %newShuffle13.i146.i, <8 x i32> %newShuffle15.i148.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle19.i152.i = shufflevector <8 x i32> %newShuffle13.i146.i, <8 x i32> %newShuffle15.i148.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle20.i153.i = shufflevector <8 x i32> %newShuffle16.i149.i, <8 x i32> %newShuffle18.i151.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr122 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr123 = add i64 %sunkaddr122, %pCurrSBIndex.1.i
  %sunkaddr124 = add i64 %sunkaddr123, 1248
  %sunkaddr125 = inttoptr i64 %sunkaddr124 to <8 x i32>*
  store <8 x i32> %newShuffle20.i153.i, <8 x i32>* %sunkaddr125, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle21.i154.i = shufflevector <8 x i32> %newShuffle16.i149.i, <8 x i32> %newShuffle18.i151.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %sunkaddr126 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr127 = add i64 %sunkaddr126, %pCurrSBIndex.1.i
  %sunkaddr128 = add i64 %sunkaddr127, 1280
  %sunkaddr129 = inttoptr i64 %sunkaddr128 to <8 x i32>*
  store <8 x i32> %newShuffle21.i154.i, <8 x i32>* %sunkaddr129, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle22.i155.i = shufflevector <8 x i32> %newShuffle17.i150.i, <8 x i32> %newShuffle19.i152.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr130 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr131 = add i64 %sunkaddr130, %pCurrSBIndex.1.i
  %sunkaddr132 = add i64 %sunkaddr131, 1312
  %sunkaddr133 = inttoptr i64 %sunkaddr132 to <8 x i32>*
  store <8 x i32> %newShuffle22.i155.i, <8 x i32>* %sunkaddr133, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle23.i156.i = shufflevector <8 x i32> %newShuffle17.i150.i, <8 x i32> %newShuffle19.i152.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  br label %__ocl_masked_gather_transpose_int_4x8.exit158.i

__ocl_masked_gather_transpose_int_4x8.exit158.i:  ; preds = %304, %287
  %345 = phi <8 x i32> [ %newShuffle10.i143.i, %287 ], [ %newShuffle22.i155.i, %304 ]
  %346 = phi <8 x i32> [ %newShuffle9.i142.i, %287 ], [ %newShuffle21.i154.i, %304 ]
  %347 = phi <8 x i32> [ %newShuffle8.i141.i, %287 ], [ %newShuffle20.i153.i, %304 ]
  %storemerge.i157.i = phi <8 x i32> [ %newShuffle11.i144.i, %287 ], [ %newShuffle23.i156.i, %304 ]
  %348 = bitcast <4 x i32>* %dummy.i132.i to i8*
  %sunkaddr134 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr135 = add i64 %sunkaddr134, %pCurrSBIndex.1.i
  %sunkaddr136 = add i64 %sunkaddr135, 1344
  %sunkaddr137 = inttoptr i64 %sunkaddr136 to <8 x i32>*
  store <8 x i32> %storemerge.i157.i, <8 x i32>* %sunkaddr137, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  call void @llvm.lifetime.end(i64 16, i8* %348) #5, !noalias !58
  %349 = add nsw <8 x i32> %347, %vector376.i
  %350 = add nsw <8 x i32> %346, %vector378.i
  %351 = add nsw <8 x i32> %345, %vector380.i
  %352 = mul nsw <8 x i32> %351, %vector382.i
  %353 = add nsw <8 x i32> %350, %352
  %354 = mul nsw <8 x i32> %353, %vector384.i
  %355 = add nsw <8 x i32> %349, %354
  %356 = shl <8 x i32> %355, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %extract426.i = extractelement <8 x i32> %356, i32 0
  %extract427.i = extractelement <8 x i32> %356, i32 1
  %extract428.i = extractelement <8 x i32> %356, i32 2
  %extract429.i = extractelement <8 x i32> %356, i32 3
  %extract430.i = extractelement <8 x i32> %356, i32 4
  %extract431.i = extractelement <8 x i32> %356, i32 5
  %extract432.i = extractelement <8 x i32> %356, i32 6
  %extract433.i = extractelement <8 x i32> %356, i32 7
  %357 = sext i32 %extract426.i to i64
  %358 = sext i32 %extract427.i to i64
  %359 = sext i32 %extract428.i to i64
  %360 = sext i32 %extract429.i to i64
  %361 = sext i32 %extract430.i to i64
  %362 = sext i32 %extract431.i to i64
  %363 = sext i32 %extract432.i to i64
  %364 = sext i32 %extract433.i to i64
  %365 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %357
  %366 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %358
  %367 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %359
  %368 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %360
  %369 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %361
  %370 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %362
  %371 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %363
  %372 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %364
  %SB_LocalId_Offset1421.i = add nuw i64 %pCurrSBIndex.1.i, 200
  %373 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1421.i
  %pSB_LocalId1422.i = bitcast i8* %373 to i64*
  %loadedValue1423.i = load i64* %pSB_LocalId1422.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1456.i = add nuw i64 %pCurrSBIndex.1.i, 208
  %374 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1456.i
  %pSB_LocalId1457.i = bitcast i8* %374 to i64*
  %loadedValue1458.i = load i64* %pSB_LocalId1457.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1491.i = add nuw i64 %pCurrSBIndex.1.i, 216
  %375 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1491.i
  %pSB_LocalId1492.i = bitcast i8* %375 to i64*
  %loadedValue1493.i = load i64* %pSB_LocalId1492.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1526.i = add nuw i64 %pCurrSBIndex.1.i, 224
  %376 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1526.i
  %pSB_LocalId1527.i = bitcast i8* %376 to i64*
  %loadedValue1528.i = load i64* %pSB_LocalId1527.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1561.i = add nuw i64 %pCurrSBIndex.1.i, 232
  %377 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1561.i
  %pSB_LocalId1562.i = bitcast i8* %377 to i64*
  %loadedValue1563.i = load i64* %pSB_LocalId1562.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1596.i = add nuw i64 %pCurrSBIndex.1.i, 240
  %378 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1596.i
  %pSB_LocalId1597.i = bitcast i8* %378 to i64*
  %loadedValue1598.i = load i64* %pSB_LocalId1597.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1631.i = add nuw i64 %pCurrSBIndex.1.i, 248
  %379 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1631.i
  %pSB_LocalId1632.i = bitcast i8* %379 to i64*
  %loadedValue1633.i = load i64* %pSB_LocalId1632.i, align 8, !alias.scope !68, !noalias !69
  br i1 %extract434.i, label %preload.i, label %postload.i

preload.i:                                        ; preds = %__ocl_masked_gather_transpose_int_4x8.exit158.i
  %SB_LocalId_Offset1386.i = add nuw i64 %pCurrSBIndex.1.i, 192
  %380 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1386.i
  %pSB_LocalId1387.i = bitcast i8* %380 to i64*
  %loadedValue1388.i = load i64* %pSB_LocalId1387.i, align 8, !alias.scope !68, !noalias !69
  %381 = getelementptr inbounds float addrspace(1)* %365, i64 %loadedValue1388.i
  %masked_load.i = load float addrspace(1)* %381, align 1, !noalias !58
  br label %postload.i

postload.i:                                       ; preds = %preload.i, %__ocl_masked_gather_transpose_int_4x8.exit158.i
  %phi.i = phi float [ 0.000000e+00, %__ocl_masked_gather_transpose_int_4x8.exit158.i ], [ %masked_load.i, %preload.i ]
  br i1 %extract435.i, label %preload822.i, label %postload823.i

preload822.i:                                     ; preds = %postload.i
  %sunkaddr138 = ptrtoint float addrspace(1)* %366 to i64
  %sunkaddr139 = mul i64 %loadedValue1423.i, 4
  %sunkaddr140 = add i64 %sunkaddr138, %sunkaddr139
  %sunkaddr141 = inttoptr i64 %sunkaddr140 to float addrspace(1)*
  %masked_load752.i = load float addrspace(1)* %sunkaddr141, align 1, !noalias !58
  br label %postload823.i

postload823.i:                                    ; preds = %preload822.i, %postload.i
  %phi824.i = phi float [ 0.000000e+00, %postload.i ], [ %masked_load752.i, %preload822.i ]
  br i1 %extract436.i, label %preload832.i, label %postload833.i

preload832.i:                                     ; preds = %postload823.i
  %sunkaddr142 = ptrtoint float addrspace(1)* %367 to i64
  %sunkaddr143 = mul i64 %loadedValue1458.i, 4
  %sunkaddr144 = add i64 %sunkaddr142, %sunkaddr143
  %sunkaddr145 = inttoptr i64 %sunkaddr144 to float addrspace(1)*
  %masked_load753.i = load float addrspace(1)* %sunkaddr145, align 1, !noalias !58
  br label %postload833.i

postload833.i:                                    ; preds = %preload832.i, %postload823.i
  %phi834.i = phi float [ 0.000000e+00, %postload823.i ], [ %masked_load753.i, %preload832.i ]
  br i1 %extract437.i, label %preload842.i, label %postload843.i

preload842.i:                                     ; preds = %postload833.i
  %sunkaddr146 = ptrtoint float addrspace(1)* %368 to i64
  %sunkaddr147 = mul i64 %loadedValue1493.i, 4
  %sunkaddr148 = add i64 %sunkaddr146, %sunkaddr147
  %sunkaddr149 = inttoptr i64 %sunkaddr148 to float addrspace(1)*
  %masked_load754.i = load float addrspace(1)* %sunkaddr149, align 1, !noalias !58
  br label %postload843.i

postload843.i:                                    ; preds = %preload842.i, %postload833.i
  %phi844.i = phi float [ 0.000000e+00, %postload833.i ], [ %masked_load754.i, %preload842.i ]
  br i1 %extract438.i, label %preload852.i, label %postload853.i

preload852.i:                                     ; preds = %postload843.i
  %sunkaddr150 = ptrtoint float addrspace(1)* %369 to i64
  %sunkaddr151 = mul i64 %loadedValue1528.i, 4
  %sunkaddr152 = add i64 %sunkaddr150, %sunkaddr151
  %sunkaddr153 = inttoptr i64 %sunkaddr152 to float addrspace(1)*
  %masked_load755.i = load float addrspace(1)* %sunkaddr153, align 1, !noalias !58
  br label %postload853.i

postload853.i:                                    ; preds = %preload852.i, %postload843.i
  %phi854.i = phi float [ 0.000000e+00, %postload843.i ], [ %masked_load755.i, %preload852.i ]
  br i1 %extract439.i, label %preload862.i, label %postload863.i

preload862.i:                                     ; preds = %postload853.i
  %sunkaddr154 = ptrtoint float addrspace(1)* %370 to i64
  %sunkaddr155 = mul i64 %loadedValue1563.i, 4
  %sunkaddr156 = add i64 %sunkaddr154, %sunkaddr155
  %sunkaddr157 = inttoptr i64 %sunkaddr156 to float addrspace(1)*
  %masked_load756.i = load float addrspace(1)* %sunkaddr157, align 1, !noalias !58
  br label %postload863.i

postload863.i:                                    ; preds = %preload862.i, %postload853.i
  %phi864.i = phi float [ 0.000000e+00, %postload853.i ], [ %masked_load756.i, %preload862.i ]
  br i1 %extract440.i, label %preload872.i, label %postload873.i

preload872.i:                                     ; preds = %postload863.i
  %sunkaddr158 = ptrtoint float addrspace(1)* %371 to i64
  %sunkaddr159 = mul i64 %loadedValue1598.i, 4
  %sunkaddr160 = add i64 %sunkaddr158, %sunkaddr159
  %sunkaddr161 = inttoptr i64 %sunkaddr160 to float addrspace(1)*
  %masked_load757.i = load float addrspace(1)* %sunkaddr161, align 1, !noalias !58
  br label %postload873.i

postload873.i:                                    ; preds = %preload872.i, %postload863.i
  %phi874.i = phi float [ 0.000000e+00, %postload863.i ], [ %masked_load757.i, %preload872.i ]
  br i1 %extract441.i, label %preload882.i, label %postload883.i

preload882.i:                                     ; preds = %postload873.i
  %sunkaddr162 = ptrtoint float addrspace(1)* %372 to i64
  %sunkaddr163 = mul i64 %loadedValue1633.i, 4
  %sunkaddr164 = add i64 %sunkaddr162, %sunkaddr163
  %sunkaddr165 = inttoptr i64 %sunkaddr164 to float addrspace(1)*
  %masked_load758.i = load float addrspace(1)* %sunkaddr165, align 1, !noalias !58
  br label %postload883.i

postload883.i:                                    ; preds = %preload882.i, %postload873.i
  %phi884.i = phi float [ 0.000000e+00, %postload873.i ], [ %masked_load758.i, %preload882.i ]
  %SB_LocalId_Offset1316.i = add nuw i64 %pCurrSBIndex.1.i, 128
  %382 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1316.i
  %pSB_LocalId1317.i = bitcast i8* %382 to <8 x i32>*
  %loadedValue1318.i = load <8 x i32>* %pSB_LocalId1317.i, align 32, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1351.i = add nuw i64 %pCurrSBIndex.1.i, 160
  %383 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1351.i
  %pSB_LocalId1352.i = bitcast i8* %383 to <8 x i32>*
  %loadedValue1353.i = load <8 x i32>* %pSB_LocalId1352.i, align 32, !alias.scope !68, !noalias !69
  %384 = or <8 x i32> %loadedValue1318.i, %loadedValue1353.i
  %extract443.i = extractelement <8 x i32> %384, i32 1
  %extract444.i = extractelement <8 x i32> %384, i32 2
  %extract445.i = extractelement <8 x i32> %384, i32 3
  %extract446.i = extractelement <8 x i32> %384, i32 4
  %extract447.i = extractelement <8 x i32> %384, i32 5
  %extract448.i = extractelement <8 x i32> %384, i32 6
  %extract449.i = extractelement <8 x i32> %384, i32 7
  %385 = sext i32 %extract443.i to i64
  %386 = sext i32 %extract444.i to i64
  %387 = sext i32 %extract445.i to i64
  %388 = sext i32 %extract446.i to i64
  %389 = sext i32 %extract447.i to i64
  %390 = sext i32 %extract448.i to i64
  %391 = sext i32 %extract449.i to i64
  br i1 %extract434.i, label %preload815.i, label %postload816.i

preload815.i:                                     ; preds = %postload883.i
  %extract442.i = extractelement <8 x i32> %384, i32 0
  %392 = sext i32 %extract442.i to i64
  %sunkaddr166 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr167 = mul i64 %392, 4
  %sunkaddr168 = add i64 %sunkaddr166, %sunkaddr167
  %sunkaddr169 = add i64 %sunkaddr168, 128
  %sunkaddr170 = inttoptr i64 %sunkaddr169 to float addrspace(3)*
  store float %phi.i, float addrspace(3)* %sunkaddr170, align 4, !alias.scope !70, !noalias !71
  br label %postload816.i

postload816.i:                                    ; preds = %preload815.i, %postload883.i
  br i1 %extract435.i, label %preload825.i, label %postload826.i

preload825.i:                                     ; preds = %postload816.i
  %sunkaddr171 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr172 = mul i64 %385, 4
  %sunkaddr173 = add i64 %sunkaddr171, %sunkaddr172
  %sunkaddr174 = add i64 %sunkaddr173, 128
  %sunkaddr175 = inttoptr i64 %sunkaddr174 to float addrspace(3)*
  store float %phi824.i, float addrspace(3)* %sunkaddr175, align 4, !alias.scope !70, !noalias !71
  br label %postload826.i

postload826.i:                                    ; preds = %preload825.i, %postload816.i
  br i1 %extract436.i, label %preload835.i, label %postload836.i

preload835.i:                                     ; preds = %postload826.i
  %sunkaddr176 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr177 = mul i64 %386, 4
  %sunkaddr178 = add i64 %sunkaddr176, %sunkaddr177
  %sunkaddr179 = add i64 %sunkaddr178, 128
  %sunkaddr180 = inttoptr i64 %sunkaddr179 to float addrspace(3)*
  store float %phi834.i, float addrspace(3)* %sunkaddr180, align 4, !alias.scope !70, !noalias !71
  br label %postload836.i

postload836.i:                                    ; preds = %preload835.i, %postload826.i
  br i1 %extract437.i, label %preload845.i, label %postload846.i

preload845.i:                                     ; preds = %postload836.i
  %sunkaddr181 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr182 = mul i64 %387, 4
  %sunkaddr183 = add i64 %sunkaddr181, %sunkaddr182
  %sunkaddr184 = add i64 %sunkaddr183, 128
  %sunkaddr185 = inttoptr i64 %sunkaddr184 to float addrspace(3)*
  store float %phi844.i, float addrspace(3)* %sunkaddr185, align 4, !alias.scope !70, !noalias !71
  br label %postload846.i

postload846.i:                                    ; preds = %preload845.i, %postload836.i
  br i1 %extract438.i, label %preload855.i, label %postload856.i

preload855.i:                                     ; preds = %postload846.i
  %sunkaddr186 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr187 = mul i64 %388, 4
  %sunkaddr188 = add i64 %sunkaddr186, %sunkaddr187
  %sunkaddr189 = add i64 %sunkaddr188, 128
  %sunkaddr190 = inttoptr i64 %sunkaddr189 to float addrspace(3)*
  store float %phi854.i, float addrspace(3)* %sunkaddr190, align 4, !alias.scope !70, !noalias !71
  br label %postload856.i

postload856.i:                                    ; preds = %preload855.i, %postload846.i
  br i1 %extract439.i, label %preload865.i, label %postload866.i

preload865.i:                                     ; preds = %postload856.i
  %sunkaddr191 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr192 = mul i64 %389, 4
  %sunkaddr193 = add i64 %sunkaddr191, %sunkaddr192
  %sunkaddr194 = add i64 %sunkaddr193, 128
  %sunkaddr195 = inttoptr i64 %sunkaddr194 to float addrspace(3)*
  store float %phi864.i, float addrspace(3)* %sunkaddr195, align 4, !alias.scope !70, !noalias !71
  br label %postload866.i

postload866.i:                                    ; preds = %preload865.i, %postload856.i
  br i1 %extract440.i, label %preload875.i, label %postload876.i

preload875.i:                                     ; preds = %postload866.i
  %sunkaddr196 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr197 = mul i64 %390, 4
  %sunkaddr198 = add i64 %sunkaddr196, %sunkaddr197
  %sunkaddr199 = add i64 %sunkaddr198, 128
  %sunkaddr200 = inttoptr i64 %sunkaddr199 to float addrspace(3)*
  store float %phi874.i, float addrspace(3)* %sunkaddr200, align 4, !alias.scope !70, !noalias !71
  br label %postload876.i

postload876.i:                                    ; preds = %preload875.i, %postload866.i
  br i1 %extract441.i, label %preload885.i, label %postload886.i

preload885.i:                                     ; preds = %postload876.i
  %sunkaddr201 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr202 = mul i64 %391, 4
  %sunkaddr203 = add i64 %sunkaddr201, %sunkaddr202
  %sunkaddr204 = add i64 %sunkaddr203, 128
  %sunkaddr205 = inttoptr i64 %sunkaddr204 to float addrspace(3)*
  store float %phi884.i, float addrspace(3)* %sunkaddr205, align 4, !alias.scope !70, !noalias !71
  br label %postload886.i

postload886.i:                                    ; preds = %preload885.i, %postload876.i
  %SB_LocalId_Offset1701.i = add nuw i64 %pCurrSBIndex.1.i, 264
  %393 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1701.i
  %pSB_LocalId1702.i = bitcast i8* %393 to i64*
  %loadedValue1703.i = load i64* %pSB_LocalId1702.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1736.i = add nuw i64 %pCurrSBIndex.1.i, 272
  %394 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1736.i
  %pSB_LocalId1737.i = bitcast i8* %394 to i64*
  %loadedValue1738.i = load i64* %pSB_LocalId1737.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1771.i = add nuw i64 %pCurrSBIndex.1.i, 280
  %395 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1771.i
  %pSB_LocalId1772.i = bitcast i8* %395 to i64*
  %loadedValue1773.i = load i64* %pSB_LocalId1772.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1806.i = add nuw i64 %pCurrSBIndex.1.i, 288
  %396 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1806.i
  %pSB_LocalId1807.i = bitcast i8* %396 to i64*
  %loadedValue1808.i = load i64* %pSB_LocalId1807.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1841.i = add nuw i64 %pCurrSBIndex.1.i, 296
  %397 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1841.i
  %pSB_LocalId1842.i = bitcast i8* %397 to i64*
  %loadedValue1843.i = load i64* %pSB_LocalId1842.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1876.i = add nuw i64 %pCurrSBIndex.1.i, 304
  %398 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1876.i
  %pSB_LocalId1877.i = bitcast i8* %398 to i64*
  %loadedValue1878.i = load i64* %pSB_LocalId1877.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1911.i = add nuw i64 %pCurrSBIndex.1.i, 312
  %399 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1911.i
  %pSB_LocalId1912.i = bitcast i8* %399 to i64*
  %loadedValue1913.i = load i64* %pSB_LocalId1912.i, align 8, !alias.scope !68, !noalias !69
  br i1 %extract434.i, label %preload817.i, label %postload818.i

preload817.i:                                     ; preds = %postload886.i
  %SB_LocalId_Offset1666.i = add nuw i64 %pCurrSBIndex.1.i, 256
  %400 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1666.i
  %pSB_LocalId1667.i = bitcast i8* %400 to i64*
  %loadedValue1668.i = load i64* %pSB_LocalId1667.i, align 8, !alias.scope !68, !noalias !69
  %401 = getelementptr inbounds float addrspace(1)* %365, i64 %loadedValue1668.i
  %masked_load759.i = load float addrspace(1)* %401, align 1, !noalias !58
  br label %postload818.i

postload818.i:                                    ; preds = %preload817.i, %postload886.i
  %phi819.i = phi float [ 0.000000e+00, %postload886.i ], [ %masked_load759.i, %preload817.i ]
  br i1 %extract435.i, label %preload827.i, label %postload828.i

preload827.i:                                     ; preds = %postload818.i
  %sunkaddr206 = ptrtoint float addrspace(1)* %366 to i64
  %sunkaddr207 = mul i64 %loadedValue1703.i, 4
  %sunkaddr208 = add i64 %sunkaddr206, %sunkaddr207
  %sunkaddr209 = inttoptr i64 %sunkaddr208 to float addrspace(1)*
  %masked_load760.i = load float addrspace(1)* %sunkaddr209, align 1, !noalias !58
  br label %postload828.i

postload828.i:                                    ; preds = %preload827.i, %postload818.i
  %phi829.i = phi float [ 0.000000e+00, %postload818.i ], [ %masked_load760.i, %preload827.i ]
  br i1 %extract436.i, label %preload837.i, label %postload838.i

preload837.i:                                     ; preds = %postload828.i
  %sunkaddr210 = ptrtoint float addrspace(1)* %367 to i64
  %sunkaddr211 = mul i64 %loadedValue1738.i, 4
  %sunkaddr212 = add i64 %sunkaddr210, %sunkaddr211
  %sunkaddr213 = inttoptr i64 %sunkaddr212 to float addrspace(1)*
  %masked_load761.i = load float addrspace(1)* %sunkaddr213, align 1, !noalias !58
  br label %postload838.i

postload838.i:                                    ; preds = %preload837.i, %postload828.i
  %phi839.i = phi float [ 0.000000e+00, %postload828.i ], [ %masked_load761.i, %preload837.i ]
  br i1 %extract437.i, label %preload847.i, label %postload848.i

preload847.i:                                     ; preds = %postload838.i
  %sunkaddr214 = ptrtoint float addrspace(1)* %368 to i64
  %sunkaddr215 = mul i64 %loadedValue1773.i, 4
  %sunkaddr216 = add i64 %sunkaddr214, %sunkaddr215
  %sunkaddr217 = inttoptr i64 %sunkaddr216 to float addrspace(1)*
  %masked_load762.i = load float addrspace(1)* %sunkaddr217, align 1, !noalias !58
  br label %postload848.i

postload848.i:                                    ; preds = %preload847.i, %postload838.i
  %phi849.i = phi float [ 0.000000e+00, %postload838.i ], [ %masked_load762.i, %preload847.i ]
  br i1 %extract438.i, label %preload857.i, label %postload858.i

preload857.i:                                     ; preds = %postload848.i
  %sunkaddr218 = ptrtoint float addrspace(1)* %369 to i64
  %sunkaddr219 = mul i64 %loadedValue1808.i, 4
  %sunkaddr220 = add i64 %sunkaddr218, %sunkaddr219
  %sunkaddr221 = inttoptr i64 %sunkaddr220 to float addrspace(1)*
  %masked_load763.i = load float addrspace(1)* %sunkaddr221, align 1, !noalias !58
  br label %postload858.i

postload858.i:                                    ; preds = %preload857.i, %postload848.i
  %phi859.i = phi float [ 0.000000e+00, %postload848.i ], [ %masked_load763.i, %preload857.i ]
  br i1 %extract439.i, label %preload867.i, label %postload868.i

preload867.i:                                     ; preds = %postload858.i
  %sunkaddr222 = ptrtoint float addrspace(1)* %370 to i64
  %sunkaddr223 = mul i64 %loadedValue1843.i, 4
  %sunkaddr224 = add i64 %sunkaddr222, %sunkaddr223
  %sunkaddr225 = inttoptr i64 %sunkaddr224 to float addrspace(1)*
  %masked_load764.i = load float addrspace(1)* %sunkaddr225, align 1, !noalias !58
  br label %postload868.i

postload868.i:                                    ; preds = %preload867.i, %postload858.i
  %phi869.i = phi float [ 0.000000e+00, %postload858.i ], [ %masked_load764.i, %preload867.i ]
  br i1 %extract440.i, label %preload877.i, label %postload878.i

preload877.i:                                     ; preds = %postload868.i
  %sunkaddr226 = ptrtoint float addrspace(1)* %371 to i64
  %sunkaddr227 = mul i64 %loadedValue1878.i, 4
  %sunkaddr228 = add i64 %sunkaddr226, %sunkaddr227
  %sunkaddr229 = inttoptr i64 %sunkaddr228 to float addrspace(1)*
  %masked_load765.i = load float addrspace(1)* %sunkaddr229, align 1, !noalias !58
  br label %postload878.i

postload878.i:                                    ; preds = %preload877.i, %postload868.i
  %phi879.i = phi float [ 0.000000e+00, %postload868.i ], [ %masked_load765.i, %preload877.i ]
  br i1 %extract441.i, label %preload887.i, label %postload888.i

preload887.i:                                     ; preds = %postload878.i
  %sunkaddr230 = ptrtoint float addrspace(1)* %372 to i64
  %sunkaddr231 = mul i64 %loadedValue1913.i, 4
  %sunkaddr232 = add i64 %sunkaddr230, %sunkaddr231
  %sunkaddr233 = inttoptr i64 %sunkaddr232 to float addrspace(1)*
  %masked_load766.i = load float addrspace(1)* %sunkaddr233, align 1, !noalias !58
  br label %postload888.i

postload888.i:                                    ; preds = %preload887.i, %postload878.i
  %phi889.i = phi float [ 0.000000e+00, %postload878.i ], [ %masked_load766.i, %preload887.i ]
  %402 = or <8 x i32> %384, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %extract451.i = extractelement <8 x i32> %402, i32 1
  %extract452.i = extractelement <8 x i32> %402, i32 2
  %extract453.i = extractelement <8 x i32> %402, i32 3
  %extract454.i = extractelement <8 x i32> %402, i32 4
  %extract455.i = extractelement <8 x i32> %402, i32 5
  %extract456.i = extractelement <8 x i32> %402, i32 6
  %extract457.i = extractelement <8 x i32> %402, i32 7
  %403 = sext i32 %extract451.i to i64
  %404 = sext i32 %extract452.i to i64
  %405 = sext i32 %extract453.i to i64
  %406 = sext i32 %extract454.i to i64
  %407 = sext i32 %extract455.i to i64
  %408 = sext i32 %extract456.i to i64
  %409 = sext i32 %extract457.i to i64
  br i1 %extract434.i, label %preload820.i, label %postload821.i

preload820.i:                                     ; preds = %postload888.i
  %extract450.i = extractelement <8 x i32> %402, i32 0
  %410 = sext i32 %extract450.i to i64
  %sunkaddr234 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr235 = mul i64 %410, 4
  %sunkaddr236 = add i64 %sunkaddr234, %sunkaddr235
  %sunkaddr237 = add i64 %sunkaddr236, 128
  %sunkaddr238 = inttoptr i64 %sunkaddr237 to float addrspace(3)*
  store float %phi819.i, float addrspace(3)* %sunkaddr238, align 4, !alias.scope !70, !noalias !71
  br label %postload821.i

postload821.i:                                    ; preds = %preload820.i, %postload888.i
  br i1 %extract435.i, label %preload830.i, label %postload831.i

preload830.i:                                     ; preds = %postload821.i
  %sunkaddr239 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr240 = mul i64 %403, 4
  %sunkaddr241 = add i64 %sunkaddr239, %sunkaddr240
  %sunkaddr242 = add i64 %sunkaddr241, 128
  %sunkaddr243 = inttoptr i64 %sunkaddr242 to float addrspace(3)*
  store float %phi829.i, float addrspace(3)* %sunkaddr243, align 4, !alias.scope !70, !noalias !71
  br label %postload831.i

postload831.i:                                    ; preds = %preload830.i, %postload821.i
  br i1 %extract436.i, label %preload840.i, label %postload841.i

preload840.i:                                     ; preds = %postload831.i
  %sunkaddr244 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr245 = mul i64 %404, 4
  %sunkaddr246 = add i64 %sunkaddr244, %sunkaddr245
  %sunkaddr247 = add i64 %sunkaddr246, 128
  %sunkaddr248 = inttoptr i64 %sunkaddr247 to float addrspace(3)*
  store float %phi839.i, float addrspace(3)* %sunkaddr248, align 4, !alias.scope !70, !noalias !71
  br label %postload841.i

postload841.i:                                    ; preds = %preload840.i, %postload831.i
  br i1 %extract437.i, label %preload850.i, label %postload851.i

preload850.i:                                     ; preds = %postload841.i
  %sunkaddr249 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr250 = mul i64 %405, 4
  %sunkaddr251 = add i64 %sunkaddr249, %sunkaddr250
  %sunkaddr252 = add i64 %sunkaddr251, 128
  %sunkaddr253 = inttoptr i64 %sunkaddr252 to float addrspace(3)*
  store float %phi849.i, float addrspace(3)* %sunkaddr253, align 4, !alias.scope !70, !noalias !71
  br label %postload851.i

postload851.i:                                    ; preds = %preload850.i, %postload841.i
  br i1 %extract438.i, label %preload860.i, label %postload861.i

preload860.i:                                     ; preds = %postload851.i
  %sunkaddr254 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr255 = mul i64 %406, 4
  %sunkaddr256 = add i64 %sunkaddr254, %sunkaddr255
  %sunkaddr257 = add i64 %sunkaddr256, 128
  %sunkaddr258 = inttoptr i64 %sunkaddr257 to float addrspace(3)*
  store float %phi859.i, float addrspace(3)* %sunkaddr258, align 4, !alias.scope !70, !noalias !71
  br label %postload861.i

postload861.i:                                    ; preds = %preload860.i, %postload851.i
  br i1 %extract439.i, label %preload870.i, label %postload871.i

preload870.i:                                     ; preds = %postload861.i
  %sunkaddr259 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr260 = mul i64 %407, 4
  %sunkaddr261 = add i64 %sunkaddr259, %sunkaddr260
  %sunkaddr262 = add i64 %sunkaddr261, 128
  %sunkaddr263 = inttoptr i64 %sunkaddr262 to float addrspace(3)*
  store float %phi869.i, float addrspace(3)* %sunkaddr263, align 4, !alias.scope !70, !noalias !71
  br label %postload871.i

postload871.i:                                    ; preds = %preload870.i, %postload861.i
  br i1 %extract440.i, label %preload880.i, label %postload881.i

preload880.i:                                     ; preds = %postload871.i
  %sunkaddr264 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr265 = mul i64 %408, 4
  %sunkaddr266 = add i64 %sunkaddr264, %sunkaddr265
  %sunkaddr267 = add i64 %sunkaddr266, 128
  %sunkaddr268 = inttoptr i64 %sunkaddr267 to float addrspace(3)*
  store float %phi879.i, float addrspace(3)* %sunkaddr268, align 4, !alias.scope !70, !noalias !71
  br label %postload881.i

postload881.i:                                    ; preds = %preload880.i, %postload871.i
  br i1 %extract441.i, label %preload890.i, label %post_.i

preload890.i:                                     ; preds = %postload881.i
  %sunkaddr269 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr270 = mul i64 %409, 4
  %sunkaddr271 = add i64 %sunkaddr269, %sunkaddr270
  %sunkaddr272 = add i64 %sunkaddr271, 128
  %sunkaddr273 = inttoptr i64 %sunkaddr272 to float addrspace(3)*
  store float %phi889.i, float addrspace(3)* %sunkaddr273, align 4, !alias.scope !70, !noalias !71
  br label %post_.i

post_.i:                                          ; preds = %preload890.i, %postload881.i, %_allOnes.i
  %loadedValue1905.i = phi i64 [ %loadedValue1913.i, %preload890.i ], [ %loadedValue1913.i, %postload881.i ], [ %loadedValue1917.i, %_allOnes.i ]
  %loadedValue1870.i = phi i64 [ %loadedValue1878.i, %preload890.i ], [ %loadedValue1878.i, %postload881.i ], [ %loadedValue1882.i, %_allOnes.i ]
  %loadedValue1835.i = phi i64 [ %loadedValue1843.i, %preload890.i ], [ %loadedValue1843.i, %postload881.i ], [ %loadedValue1847.i, %_allOnes.i ]
  %loadedValue1800.i = phi i64 [ %loadedValue1808.i, %preload890.i ], [ %loadedValue1808.i, %postload881.i ], [ %loadedValue1812.i, %_allOnes.i ]
  %loadedValue1765.i = phi i64 [ %loadedValue1773.i, %preload890.i ], [ %loadedValue1773.i, %postload881.i ], [ %loadedValue1777.i, %_allOnes.i ]
  %loadedValue1730.i = phi i64 [ %loadedValue1738.i, %preload890.i ], [ %loadedValue1738.i, %postload881.i ], [ %loadedValue1742.i, %_allOnes.i ]
  %loadedValue1695.i = phi i64 [ %loadedValue1703.i, %preload890.i ], [ %loadedValue1703.i, %postload881.i ], [ %loadedValue1707.i, %_allOnes.i ]
  %indvars.iv.next458.i = add nsw <8 x i64> %149, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %411 = icmp slt <8 x i64> %indvars.iv.next458.i, %vector4592260.1.i
  %412 = trunc <8 x i64> %indvars.iv.next458.i to <8 x i32>
  %_to_4611156.i = select <8 x i1> %411, <8 x i32> %.sext.i, <8 x i32> zeroinitializer
  %413 = and <8 x i32> %_to_4611156.i, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %_to_461.trunc.i = icmp ne <8 x i32> %413, zeroinitializer
  %extract542.i = extractelement <8 x i1> %_to_461.trunc.i, i32 0
  %extract543.i = extractelement <8 x i1> %_to_461.trunc.i, i32 1
  %extract544.i = extractelement <8 x i1> %_to_461.trunc.i, i32 2
  %extract545.i = extractelement <8 x i1> %_to_461.trunc.i, i32 3
  %extract546.i = extractelement <8 x i1> %_to_461.trunc.i, i32 4
  %extract547.i = extractelement <8 x i1> %_to_461.trunc.i, i32 5
  %extract548.i = extractelement <8 x i1> %_to_461.trunc.i, i32 6
  %extract549.i = extractelement <8 x i1> %_to_461.trunc.i, i32 7
  %a.i129.i = bitcast <8 x i32> %_to_4611156.i to <4 x i64>
  %res.i130.i = call i32 @llvm.x86.avx.ptestz.256(<4 x i64> %a.i129.i, <4 x i64> %a.i129.i) #5
  %414 = and i32 %res.i130.i, 1
  %zero.i131.i = icmp eq i32 %414, 0
  br i1 %zero.i131.i, label %pre_287.i, label %phi-split-bb29.i

phi-split-bb.i:                                   ; preds = %post_298.i, %post_293.i
  %vectorPHI462.i = phi <8 x i32> [ %1274, %post_298.i ], [ undef, %post_293.i ]
  %415 = icmp slt <8 x i64> %indvars.iv.next.2625.i, %vector4592260.1.i
  %merge463.i = select <8 x i1> %415, <8 x i32> %vectorPHI462.i, <8 x i32> %1018
  br label %phi-split-bb27.i

phi-split-bb27.i:                                 ; preds = %post_288.i, %phi-split-bb.i
  %vectorPHI464.i = phi <8 x i32> [ %merge463.i, %phi-split-bb.i ], [ undef, %post_288.i ]
  %416 = icmp slt <8 x i64> %indvars.iv.next.1566.i, %vector4592260.1.i
  %merge194465.i = select <8 x i1> %416, <8 x i32> %vectorPHI464.i, <8 x i32> %761
  br label %phi-split-bb29.i

phi-split-bb29.i:                                 ; preds = %phi-split-bb27.i, %post_.i
  %vectorPHI466.i = phi <8 x i32> [ %merge194465.i, %phi-split-bb27.i ], [ undef, %post_.i ]
  %417 = icmp slt <8 x i64> %indvars.iv.next458.i, %vector4592260.1.i
  %merge196467.i = select <8 x i1> %417, <8 x i32> %vectorPHI466.i, <8 x i32> %412
  br label %.critedge.i

.critedge.i:                                      ; preds = %phi-split-bb29.i, %header.i
  %vectorPHI468.i = phi <8 x i32> [ %merge196467.i, %phi-split-bb29.i ], [ undef, %header.i ]
  %418 = icmp slt <8 x i32> %vectorPHI366.i, %vector367.i
  %merge198469.i = select <8 x i1> %418, <8 x i32> %vectorPHI468.i, <8 x i32> %vectorPHI366.i
  %SB_LocalId_Offset1952.i = add nuw i64 %pCurrSBIndex.1.i, 384
  %419 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1952.i
  %pSB_LocalId1953.i = bitcast i8* %419 to <8 x i32>*
  store <8 x i32> %merge198469.i, <8 x i32>* %pSB_LocalId1953.i, align 32, !alias.scope !68, !noalias !69
  %420 = add nuw i64 %142, 8
  %421 = icmp ult i64 %420, %LocalSize_0
  br i1 %421, label %Dispatch2273.i, label %LoopEnd_02274.i

LoopEnd_02274.i:                                  ; preds = %.critedge.i
  %422 = add nuw i64 %141, 1
  %423 = icmp ult i64 %422, %LocalSize_1
  br i1 %423, label %Dispatch2273.i, label %LoopEnd_12276.i

LoopEnd_12276.i:                                  ; preds = %LoopEnd_02274.i
  %424 = add nuw i64 %.lcssa2289.i, 1
  %425 = icmp ult i64 %424, %LocalSize_2
  br i1 %425, label %Dispatch2273.i, label %SyncBB2.i

Dispatch2273.i:                                   ; preds = %LoopEnd_12276.i, %LoopEnd_02274.i, %.critedge.i
  %.lcssa2288.i = phi i64 [ %424, %LoopEnd_12276.i ], [ %.lcssa2289.i, %LoopEnd_02274.i ], [ %.lcssa2289.i, %.critedge.i ]
  %426 = phi i64 [ 0, %LoopEnd_12276.i ], [ %422, %LoopEnd_02274.i ], [ %141, %.critedge.i ]
  %427 = phi i64 [ 0, %LoopEnd_12276.i ], [ 0, %LoopEnd_02274.i ], [ %420, %.critedge.i ]
  %428 = add nuw i64 %pCurrSBIndex.1.i, 1536
  %cond209.i = icmp eq i32 %pCurrBarrier.1.i, 2
  br i1 %cond209.i, label %SyncBB1.i, label %SyncBB3.i

SyncBB2.i:                                        ; preds = %LoopEnd_12276.i, %Dispatch2265.i
  %429 = phi i64 [ %481, %Dispatch2265.i ], [ 0, %LoopEnd_12276.i ]
  %430 = phi i64 [ %482, %Dispatch2265.i ], [ 0, %LoopEnd_12276.i ]
  %431 = phi i64 [ %483, %Dispatch2265.i ], [ 0, %LoopEnd_12276.i ]
  %pCurrSBIndex.2.i = phi i64 [ %484, %Dispatch2265.i ], [ 0, %LoopEnd_12276.i ]
  %SB_LocalId_Offset1948177.i = or i64 %pCurrSBIndex.2.i, 356
  %432 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1948177.i
  %pSB_LocalId1949.i = bitcast i8* %432 to i32*
  %loadedValue1950.i = load i32* %pSB_LocalId1949.i, align 4, !alias.scope !68, !noalias !69
  %433 = add nsw i32 %loadedValue1950.i, 32
  %434 = icmp sgt i32 %433, %78
  %435 = sub nsw i32 %78, %loadedValue1950.i
  %SB_LocalId_Offset1933179.i = or i64 %pCurrSBIndex.2.i, 352
  %436 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1933179.i
  %pSB_LocalId1934.i = bitcast i8* %436 to i32*
  %loadedValue1935.i = load i32* %pSB_LocalId1934.i, align 32, !alias.scope !68, !noalias !69
  %.numbins.0.i = select i1 %434, i32 %435, i32 %loadedValue1935.i
  %SB_LocalId_Offset1959180.i = or i64 %pCurrSBIndex.2.i, 416
  %437 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1959180.i
  %pSB_LocalId1960.i = bitcast i8* %437 to i32*
  store i32 %.numbins.0.i, i32* %pSB_LocalId1960.i, align 32, !alias.scope !68, !noalias !69
  %438 = icmp sgt i32 %.numbins.0.i, 0
  %SB_LocalId_Offset1922181.i = or i64 %pCurrSBIndex.2.i, 320
  %439 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1922181.i
  %pSB_LocalId1923.i = bitcast i8* %439 to <8 x float>*
  %loadedValue1924.i = load <8 x float>* %pSB_LocalId1923.i, align 64, !alias.scope !68, !noalias !69
  br i1 %438, label %.preheader.lr.ph.i, label %._crit_edge.i

.preheader.lr.ph.i:                               ; preds = %SyncBB2.i
  %SB_LocalId_Offset1215185.i = or i64 %pCurrSBIndex.2.i, 64
  %SB_LocalId_Offset1250186.i = or i64 %pCurrSBIndex.2.i, 96
  %SB_LocalId_Offset1285187.i = or i64 %pCurrSBIndex.2.i, 100
  br label %.preheader.i

.preheader.i:                                     ; preds = %phi-split-bb45.i, %.preheader.lr.ph.i
  %lsr.iv1179 = phi i32 [ %lsr.iv.next1180, %phi-split-bb45.i ], [ 0, %.preheader.lr.ph.i ]
  %lsr.iv = phi i32 [ %lsr.iv.next, %phi-split-bb45.i ], [ %.numbins.0.i, %.preheader.lr.ph.i ]
  %vectorPHI470.i = phi <8 x float> [ %loadedValue1924.i, %.preheader.lr.ph.i ], [ %vectorPHI494.i, %phi-split-bb45.i ]
  %440 = sext i32 %lsr.iv1179 to i64
  %441 = or i64 %440, 3
  %sunkaddr274 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr275 = mul i64 %441, 4
  %sunkaddr276 = add i64 %sunkaddr274, %sunkaddr275
  %sunkaddr277 = add i64 %sunkaddr276, 128
  %sunkaddr278 = inttoptr i64 %sunkaddr277 to float addrspace(3)*
  %442 = load float addrspace(3)* %sunkaddr278, align 4, !alias.scope !70, !noalias !71
  %temp482.i = insertelement <8 x float> undef, float %442, i32 0
  %vector481.i = shufflevector <8 x float> %temp482.i, <8 x float> undef, <8 x i32> zeroinitializer
  %443 = fcmp oeq float %442, 0.000000e+00
  br i1 %443, label %phi-split-bb45.i, label %header248.i

header248.i:                                      ; preds = %.preheader.i
  %444 = or i64 %440, 2
  %sunkaddr279 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr280 = mul i64 %444, 4
  %sunkaddr281 = add i64 %sunkaddr279, %sunkaddr280
  %sunkaddr282 = add i64 %sunkaddr281, 128
  %sunkaddr283 = inttoptr i64 %sunkaddr282 to float addrspace(3)*
  %445 = load float addrspace(3)* %sunkaddr283, align 8, !alias.scope !70, !noalias !71
  %446 = or i64 %440, 1
  %sunkaddr284 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr285 = mul i64 %446, 4
  %sunkaddr286 = add i64 %sunkaddr284, %sunkaddr285
  %sunkaddr287 = add i64 %sunkaddr286, 128
  %sunkaddr288 = inttoptr i64 %sunkaddr287 to float addrspace(3)*
  %447 = load float addrspace(3)* %sunkaddr288, align 4, !alias.scope !70, !noalias !71
  %sunkaddr289 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr290 = mul i64 %440, 4
  %sunkaddr291 = add i64 %sunkaddr289, %sunkaddr290
  %sunkaddr292 = add i64 %sunkaddr291, 128
  %sunkaddr293 = inttoptr i64 %sunkaddr292 to float addrspace(3)*
  %448 = load float addrspace(3)* %sunkaddr293, align 128, !alias.scope !70, !noalias !71
  %temp472.i = insertelement <8 x float> undef, float %448, i32 0
  %vector471.i = shufflevector <8 x float> %temp472.i, <8 x float> undef, <8 x i32> zeroinitializer
  %sunkaddr294 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr295 = add i64 %sunkaddr294, %SB_LocalId_Offset1215185.i
  %sunkaddr296 = inttoptr i64 %sunkaddr295 to <8 x float>*
  %loadedValue1217.i = load <8 x float>* %sunkaddr296, align 64, !alias.scope !68, !noalias !69
  %449 = fsub <8 x float> %vector471.i, %loadedValue1217.i
  %450 = fmul <8 x float> %449, %449
  %sunkaddr297 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr298 = add i64 %sunkaddr297, %SB_LocalId_Offset1250186.i
  %sunkaddr299 = inttoptr i64 %sunkaddr298 to float*
  %loadedValue1252.i = load float* %sunkaddr299, align 32, !alias.scope !68, !noalias !69
  %451 = fsub float %447, %loadedValue1252.i
  %452 = fmul float %451, %451
  %temp474.i = insertelement <8 x float> undef, float %452, i32 0
  %vector473.i = shufflevector <8 x float> %temp474.i, <8 x float> undef, <8 x i32> zeroinitializer
  %453 = fadd <8 x float> %vector473.i, %450
  %sunkaddr300 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr301 = add i64 %sunkaddr300, %SB_LocalId_Offset1285187.i
  %sunkaddr302 = inttoptr i64 %sunkaddr301 to float*
  %loadedValue1287.i = load float* %sunkaddr302, align 4, !alias.scope !68, !noalias !69
  %454 = fsub float %445, %loadedValue1287.i
  %455 = fmul float %454, %454
  %temp476.i = insertelement <8 x float> undef, float %455, i32 0
  %vector475.i = shufflevector <8 x float> %temp476.i, <8 x float> undef, <8 x i32> zeroinitializer
  %456 = fadd <8 x float> %vector475.i, %453
  %457 = fcmp olt <8 x float> %456, %vector477.i
  %.sext1134.i = sext <8 x i1> %457 to <8 x i32>
  %a.i126.i = bitcast <8 x i32> %.sext1134.i to <4 x i64>
  %res.i127.i = call i32 @llvm.x86.avx.ptestz.256(<4 x i64> %a.i126.i, <4 x i64> %a.i126.i) #5
  %458 = and i32 %res.i127.i, 1
  %zero.i128.i = icmp eq i32 %458, 0
  br i1 %zero.i128.i, label %459, label %footer249.i

; <label>:459                                     ; preds = %header248.i
  %460 = fmul <8 x float> %456, %vector479.i
  %461 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %460
  %462 = call <8 x float> @llvm.x86.avx.sqrt.ps.256(<8 x float> %456) #5
  %463 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %462, !fpmath !75
  %464 = fmul <8 x float> %vector481.i, %463
  %465 = fmul <8 x float> %461, %464
  %466 = fmul <8 x float> %461, %465
  %467 = fadd <8 x float> %vectorPHI470.i, %466
  br label %footer249.i

footer249.i:                                      ; preds = %459, %header248.i
  %vectorPHI483.i = phi <8 x float> [ %467, %459 ], [ undef, %header248.i ]
  %468 = fcmp olt <8 x float> %456, %vector477.i
  %merge200484.i = select <8 x i1> %468, <8 x float> %vectorPHI483.i, <8 x float> %vectorPHI470.i
  %469 = or i64 %440, 7
  %sunkaddr303 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr304 = mul i64 %469, 4
  %sunkaddr305 = add i64 %sunkaddr303, %sunkaddr304
  %sunkaddr306 = add i64 %sunkaddr305, 128
  %sunkaddr307 = inttoptr i64 %sunkaddr306 to float addrspace(3)*
  %470 = load float addrspace(3)* %sunkaddr307, align 4, !alias.scope !70, !noalias !71
  %temp691.i = insertelement <8 x float> undef, float %470, i32 0
  %vector690.i = shufflevector <8 x float> %temp691.i, <8 x float> undef, <8 x i32> zeroinitializer
  %471 = fcmp oeq float %470, 0.000000e+00
  br i1 %471, label %phi-split-bb45.i, label %header258.i

phi-split-bb31.i:                                 ; preds = %1465, %header282.i
  %vectorPHI485.i = phi <8 x float> [ %1473, %1465 ], [ undef, %header282.i ]
  %472 = fcmp olt <8 x float> %1462, %vector477.i
  %merge202486.i = select <8 x i1> %472, <8 x float> %vectorPHI485.i, <8 x float> %merge214743.i
  br label %phi-split-bb45.i

phi-split-bb45.i:                                 ; preds = %footer279.i, %footer275.i, %footer271.i, %footer267.i, %footer263.i, %footer259.i, %phi-split-bb31.i, %footer249.i, %.preheader.i
  %vectorPHI494.i = phi <8 x float> [ %vectorPHI470.i, %.preheader.i ], [ %merge200484.i, %footer249.i ], [ %merge204693.i, %footer259.i ], [ %merge206703.i, %footer263.i ], [ %merge208713.i, %footer267.i ], [ %merge210723.i, %footer271.i ], [ %merge212733.i, %footer275.i ], [ %merge202486.i, %phi-split-bb31.i ], [ %merge214743.i, %footer279.i ]
  %473 = trunc i64 %440 to i32
  %lsr.iv.next = add i32 %lsr.iv, -1
  %lsr.iv.next1180 = add i32 %473, 32
  %exitcond.i = icmp eq i32 %lsr.iv.next, 0
  br i1 %exitcond.i, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %phi-split-bb45.i, %SyncBB2.i
  %vectorPHI495.i = phi <8 x float> [ %loadedValue1924.i, %SyncBB2.i ], [ %vectorPHI494.i, %phi-split-bb45.i ]
  %SB_LocalId_Offset1974182.i = or i64 %pCurrSBIndex.2.i, 448
  %474 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1974182.i
  %pSB_LocalId1975.i = bitcast i8* %474 to <8 x float>*
  store <8 x float> %vectorPHI495.i, <8 x float>* %pSB_LocalId1975.i, align 64, !alias.scope !68, !noalias !69
  %475 = add nuw i64 %431, 8
  %476 = icmp ult i64 %475, %LocalSize_0
  br i1 %476, label %Dispatch2265.i, label %LoopEnd_02266.i

LoopEnd_02266.i:                                  ; preds = %._crit_edge.i
  %477 = add nuw i64 %430, 1
  %478 = icmp ult i64 %477, %LocalSize_1
  br i1 %478, label %Dispatch2265.i, label %LoopEnd_12268.i

LoopEnd_12268.i:                                  ; preds = %LoopEnd_02266.i
  %479 = add nuw i64 %429, 1
  %480 = icmp ult i64 %479, %LocalSize_2
  br i1 %480, label %Dispatch2265.i, label %SyncBB1.i

Dispatch2265.i:                                   ; preds = %LoopEnd_12268.i, %LoopEnd_02266.i, %._crit_edge.i
  %481 = phi i64 [ %479, %LoopEnd_12268.i ], [ %429, %LoopEnd_02266.i ], [ %429, %._crit_edge.i ]
  %482 = phi i64 [ 0, %LoopEnd_12268.i ], [ %477, %LoopEnd_02266.i ], [ %430, %._crit_edge.i ]
  %483 = phi i64 [ 0, %LoopEnd_12268.i ], [ 0, %LoopEnd_02266.i ], [ %475, %._crit_edge.i ]
  %484 = add nuw i64 %pCurrSBIndex.2.i, 1536
  br label %SyncBB2.i

SyncBB1.i:                                        ; preds = %LoopEnd_12268.i, %Dispatch.i, %Dispatch2273.i
  %.lcssa2290.i = phi i64 [ %.lcssa2288.i, %Dispatch2273.i ], [ %.lcssa2292.i, %Dispatch.i ], [ 0, %LoopEnd_12268.i ]
  %485 = phi i64 [ %426, %Dispatch2273.i ], [ %504, %Dispatch.i ], [ 0, %LoopEnd_12268.i ]
  %486 = phi i64 [ %427, %Dispatch2273.i ], [ %505, %Dispatch.i ], [ 0, %LoopEnd_12268.i ]
  %vector4592260.2.i = phi <8 x i64> [ %vector4592260.1.i, %Dispatch2273.i ], [ %vector4592260.3.i, %Dispatch.i ], [ %vector4592260.1.i, %LoopEnd_12268.i ]
  %pCurrSBIndex.3.i = phi i64 [ %428, %Dispatch2273.i ], [ %506, %Dispatch.i ], [ 0, %LoopEnd_12268.i ]
  %SB_LocalId_Offset1940.i = add nuw i64 %pCurrSBIndex.3.i, 356
  %487 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1940.i
  %pSB_LocalId1941.i = bitcast i8* %487 to i32*
  %loadedValue1942.i = load i32* %pSB_LocalId1941.i, align 4, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1962.i = add nuw i64 %pCurrSBIndex.3.i, 416
  %488 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1962.i
  %pSB_LocalId1963.i = bitcast i8* %488 to i32*
  %loadedValue1964.i = load i32* %pSB_LocalId1963.i, align 4, !alias.scope !68, !noalias !69
  %489 = add nsw i32 %loadedValue1964.i, %loadedValue1942.i
  %490 = icmp slt i32 %489, %78
  br i1 %490, label %._crit_edge19.i, label %._crit_edge13.loopexit.i

._crit_edge19.i:                                  ; preds = %SyncBB1.i
  %sunkaddr308 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr309 = add i64 %sunkaddr308, 4224
  %sunkaddr310 = inttoptr i64 %sunkaddr309 to <4 x i32> addrspace(3)*
  %.pre.i = load <4 x i32> addrspace(3)* %sunkaddr310, align 128, !alias.scope !70, !noalias !71
  %scalar23.i = extractelement <4 x i32> %.pre.i, i32 0
  %scalar24.i = extractelement <4 x i32> %.pre.i, i32 1
  %scalar25.i = extractelement <4 x i32> %.pre.i, i32 2
  %SB_LocalId_Offset1955.i = add nuw i64 %pCurrSBIndex.3.i, 384
  %491 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1955.i
  %pSB_LocalId1956.i = bitcast i8* %491 to <8 x i32>*
  %loadedValue1957.i = load <8 x i32>* %pSB_LocalId1956.i, align 32, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1981.i = add nuw i64 %pCurrSBIndex.3.i, 448
  %492 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1981.i
  %pSB_LocalId1982.i = bitcast i8* %492 to <8 x float>*
  %loadedValue1983.i = load <8 x float>* %pSB_LocalId1982.i, align 32, !alias.scope !68, !noalias !69
  br label %header.i

._crit_edge13.loopexit.i:                         ; preds = %SyncBB1.i
  %SB_LocalId_Offset1977.i = add nuw i64 %pCurrSBIndex.3.i, 448
  %493 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1977.i
  %pSB_LocalId1978.i = bitcast i8* %493 to <8 x float>*
  %loadedValue1979.i = load <8 x float>* %pSB_LocalId1978.i, align 32, !alias.scope !68, !noalias !69
  %.phi.trans.insert = getelementptr inbounds i8* %pSpecialBuf, i64 %pCurrSBIndex.3.i
  %pSB_LocalId1182.i.phi.trans.insert = bitcast i8* %.phi.trans.insert to <8 x i64>*
  %loadedValue.i.pre = load <8 x i64>* %pSB_LocalId1182.i.phi.trans.insert, align 64, !alias.scope !68, !noalias !69
  br label %._crit_edge13.i

._crit_edge13.i:                                  ; preds = %._crit_edge13.loopexit.i, %SyncBB3.i
  %loadedValue.i = phi <8 x i64> [ %loadedValue.i.pre, %._crit_edge13.loopexit.i ], [ %87, %SyncBB3.i ]
  %.lcssa2293.i = phi i64 [ %.lcssa2290.i, %._crit_edge13.loopexit.i ], [ %.lcssa2294.i, %SyncBB3.i ]
  %494 = phi i64 [ %485, %._crit_edge13.loopexit.i ], [ %80, %SyncBB3.i ]
  %495 = phi i64 [ %486, %._crit_edge13.loopexit.i ], [ %81, %SyncBB3.i ]
  %vector4592260.3.i = phi <8 x i64> [ %vector4592260.2.i, %._crit_edge13.loopexit.i ], [ %vector4592260.0.i, %SyncBB3.i ]
  %pCurrBarrier.3.i = phi i32 [ 2, %._crit_edge13.loopexit.i ], [ %pCurrBarrier.0.i, %SyncBB3.i ]
  %pCurrSBIndex.4.i = phi i64 [ %pCurrSBIndex.3.i, %._crit_edge13.loopexit.i ], [ %pCurrSBIndex.0.i, %SyncBB3.i ]
  %vectorPHI496.i = phi <8 x float> [ %loadedValue1979.i, %._crit_edge13.loopexit.i ], [ zeroinitializer, %SyncBB3.i ]
  %496 = getelementptr inbounds i8* %pSpecialBuf, i64 %pCurrSBIndex.4.i
  %extract501.rhs.lhs.lhs.i = extractelement <8 x i64> %loadedValue.i, i32 0
  %extract501.rhs.lhs.i = shl i64 %extract501.rhs.lhs.lhs.i, 32
  %extract501.rhs.i = ashr exact i64 %extract501.rhs.lhs.i, 32
  %extract501.i = add i64 %.sum.i, %extract501.rhs.i
  %497 = getelementptr inbounds float addrspace(1)* %explicit_7, i64 %extract501.i
  %ptrTypeCast.i = bitcast float addrspace(1)* %497 to <8 x float> addrspace(1)*
  store <8 x float> %vectorPHI496.i, <8 x float> addrspace(1)* %ptrTypeCast.i, align 1, !noalias !58
  %498 = add nuw i64 %495, 8
  %499 = icmp ult i64 %498, %LocalSize_0
  br i1 %499, label %Dispatch.i, label %LoopEnd_0.i

LoopEnd_0.i:                                      ; preds = %._crit_edge13.i
  %500 = add nuw i64 %494, 1
  %501 = icmp ult i64 %500, %LocalSize_1
  br i1 %501, label %Dispatch.i, label %LoopEnd_1.i

LoopEnd_1.i:                                      ; preds = %LoopEnd_0.i
  %502 = add nuw i64 %.lcssa2293.i, 1
  %503 = icmp ult i64 %502, %LocalSize_2
  br i1 %503, label %Dispatch.i, label %____Vectorized_.opencl_cutoff_potential_lattice_separated_args.exit

Dispatch.i:                                       ; preds = %LoopEnd_1.i, %LoopEnd_0.i, %._crit_edge13.i
  %.lcssa2292.i = phi i64 [ %502, %LoopEnd_1.i ], [ %.lcssa2293.i, %LoopEnd_0.i ], [ %.lcssa2293.i, %._crit_edge13.i ]
  %504 = phi i64 [ 0, %LoopEnd_1.i ], [ %500, %LoopEnd_0.i ], [ %494, %._crit_edge13.i ]
  %505 = phi i64 [ 0, %LoopEnd_1.i ], [ 0, %LoopEnd_0.i ], [ %498, %._crit_edge13.i ]
  %506 = add nuw i64 %pCurrSBIndex.4.i, 1536
  %cond.i = icmp eq i32 %pCurrBarrier.3.i, 2
  br i1 %cond.i, label %SyncBB1.i, label %SyncBB3.i

pre_287.i:                                        ; preds = %post_.i
  %507 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP.i, i64 %150
  %508 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP.i, i64 %151
  %509 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP.i, i64 %152
  %510 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP.i, i64 %153
  %511 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP.i, i64 %154
  %512 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP.i, i64 %155
  %513 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP.i, i64 %156
  %514 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP.i, i64 %157
  %res.i124.i = call i32 @llvm.x86.avx.ptestc.256(<4 x i64> %a.i129.i, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>) #5
  %515 = and i32 %res.i124.i, 1
  %one.i125.i = icmp eq i32 %515, 0
  br i1 %one.i125.i, label %629, label %_allOnes286.i

_allOnes286.i:                                    ; preds = %pre_287.i
  %516 = addrspacecast <4 x i32> addrspace(2)* %514 to <4 x i32>*
  %517 = addrspacecast <4 x i32> addrspace(2)* %513 to <4 x i32>*
  %518 = addrspacecast <4 x i32> addrspace(2)* %512 to <4 x i32>*
  %519 = addrspacecast <4 x i32> addrspace(2)* %511 to <4 x i32>*
  %520 = addrspacecast <4 x i32> addrspace(2)* %510 to <4 x i32>*
  %521 = addrspacecast <4 x i32> addrspace(2)* %509 to <4 x i32>*
  %522 = addrspacecast <4 x i32> addrspace(2)* %508 to <4 x i32>*
  %523 = addrspacecast <4 x i32> addrspace(2)* %507 to <4 x i32>*
  %SB_LocalId_Offset2093.i = add nuw i64 %pCurrSBIndex.1.i, 1120
  %524 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2093.i
  %pSB_LocalId2094.i = bitcast i8* %524 to <8 x i32>*
  %SB_LocalId_Offset2099.i = add nuw i64 %pCurrSBIndex.1.i, 1152
  %525 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2099.i
  %pSB_LocalId2100.i = bitcast i8* %525 to <8 x i32>*
  %SB_LocalId_Offset2105.i = add nuw i64 %pCurrSBIndex.1.i, 1184
  %526 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2105.i
  %pSB_LocalId2106.i = bitcast i8* %526 to <8 x i32>*
  %SB_LocalId_Offset2108.i = add nuw i64 %pCurrSBIndex.1.i, 1216
  %527 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2108.i
  %pSB_LocalId2109.i = bitcast i8* %527 to <8 x i32>*
  %528 = load <4 x i32>* %523, align 16, !tbaa !72, !noalias !58
  %529 = load <4 x i32>* %519, align 16, !tbaa !72, !noalias !58
  %newShuffle.i111.i = shufflevector <4 x i32> %528, <4 x i32> %529, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %530 = load <4 x i32>* %522, align 16, !tbaa !72, !noalias !58
  %531 = load <4 x i32>* %518, align 16, !tbaa !72, !noalias !58
  %newShuffle1.i112.i = shufflevector <4 x i32> %530, <4 x i32> %531, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %532 = load <4 x i32>* %521, align 16, !tbaa !72, !noalias !58
  %533 = load <4 x i32>* %517, align 16, !tbaa !72, !noalias !58
  %newShuffle2.i113.i = shufflevector <4 x i32> %532, <4 x i32> %533, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %534 = load <4 x i32>* %520, align 16, !tbaa !72, !noalias !58
  %535 = load <4 x i32>* %516, align 16, !tbaa !72, !noalias !58
  %newShuffle3.i114.i = shufflevector <4 x i32> %534, <4 x i32> %535, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %newShuffle4.i115.i = shufflevector <8 x i32> %newShuffle.i111.i, <8 x i32> %newShuffle2.i113.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle5.i116.i = shufflevector <8 x i32> %newShuffle.i111.i, <8 x i32> %newShuffle2.i113.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle6.i117.i = shufflevector <8 x i32> %newShuffle1.i112.i, <8 x i32> %newShuffle3.i114.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle7.i118.i = shufflevector <8 x i32> %newShuffle1.i112.i, <8 x i32> %newShuffle3.i114.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle8.i119.i = shufflevector <8 x i32> %newShuffle4.i115.i, <8 x i32> %newShuffle6.i117.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  store <8 x i32> %newShuffle8.i119.i, <8 x i32>* %pSB_LocalId2094.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle9.i120.i = shufflevector <8 x i32> %newShuffle4.i115.i, <8 x i32> %newShuffle6.i117.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  store <8 x i32> %newShuffle9.i120.i, <8 x i32>* %pSB_LocalId2100.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle10.i121.i = shufflevector <8 x i32> %newShuffle5.i116.i, <8 x i32> %newShuffle7.i118.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  store <8 x i32> %newShuffle10.i121.i, <8 x i32>* %pSB_LocalId2106.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle11.i122.i = shufflevector <8 x i32> %newShuffle5.i116.i, <8 x i32> %newShuffle7.i118.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  store <8 x i32> %newShuffle11.i122.i, <8 x i32>* %pSB_LocalId2109.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %536 = add nsw <8 x i32> %newShuffle8.i119.i, %vector376.i
  %537 = add nsw <8 x i32> %newShuffle9.i120.i, %vector378.i
  %538 = add nsw <8 x i32> %newShuffle10.i121.i, %vector380.i
  %539 = mul nsw <8 x i32> %538, %vector382.i
  %540 = add nsw <8 x i32> %537, %539
  %541 = mul nsw <8 x i32> %540, %vector384.i
  %542 = add nsw <8 x i32> %536, %541
  %543 = shl <8 x i32> %542, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %extract509.i = extractelement <8 x i32> %543, i32 0
  %extract510.i = extractelement <8 x i32> %543, i32 1
  %extract511.i = extractelement <8 x i32> %543, i32 2
  %extract512.i = extractelement <8 x i32> %543, i32 3
  %extract513.i = extractelement <8 x i32> %543, i32 4
  %extract514.i = extractelement <8 x i32> %543, i32 5
  %extract515.i = extractelement <8 x i32> %543, i32 6
  %extract516.i = extractelement <8 x i32> %543, i32 7
  %544 = sext i32 %extract509.i to i64
  %545 = sext i32 %extract510.i to i64
  %546 = sext i32 %extract511.i to i64
  %547 = sext i32 %extract512.i to i64
  %548 = sext i32 %extract513.i to i64
  %549 = sext i32 %extract514.i to i64
  %550 = sext i32 %extract515.i to i64
  %551 = sext i32 %extract516.i to i64
  %552 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %544
  %553 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %545
  %554 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %546
  %555 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %547
  %556 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %548
  %557 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %549
  %558 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %550
  %559 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %551
  %SB_LocalId_Offset1312.i = add nuw i64 %pCurrSBIndex.1.i, 128
  %560 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1312.i
  %pSB_LocalId1313.i = bitcast i8* %560 to <8 x i32>*
  %loadedValue1314.i = load <8 x i32>* %pSB_LocalId1313.i, align 32, !alias.scope !68, !noalias !69
  %561 = add nsw <8 x i32> %loadedValue1314.i, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %SB_LocalId_Offset1382.i = add nuw i64 %pCurrSBIndex.1.i, 192
  %562 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1382.i
  %pSB_LocalId1383.i = bitcast i8* %562 to i64*
  %loadedValue1384.i = load i64* %pSB_LocalId1383.i, align 8, !alias.scope !68, !noalias !69
  %563 = getelementptr inbounds float addrspace(1)* %552, i64 %loadedValue1384.i
  %SB_LocalId_Offset1417.i = add nuw i64 %pCurrSBIndex.1.i, 200
  %564 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1417.i
  %pSB_LocalId1418.i = bitcast i8* %564 to i64*
  %loadedValue1419.i = load i64* %pSB_LocalId1418.i, align 8, !alias.scope !68, !noalias !69
  %565 = getelementptr inbounds float addrspace(1)* %553, i64 %loadedValue1419.i
  %SB_LocalId_Offset1452.i = add nuw i64 %pCurrSBIndex.1.i, 208
  %566 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1452.i
  %pSB_LocalId1453.i = bitcast i8* %566 to i64*
  %loadedValue1454.i = load i64* %pSB_LocalId1453.i, align 8, !alias.scope !68, !noalias !69
  %567 = getelementptr inbounds float addrspace(1)* %554, i64 %loadedValue1454.i
  %SB_LocalId_Offset1487.i = add nuw i64 %pCurrSBIndex.1.i, 216
  %568 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1487.i
  %pSB_LocalId1488.i = bitcast i8* %568 to i64*
  %loadedValue1489.i = load i64* %pSB_LocalId1488.i, align 8, !alias.scope !68, !noalias !69
  %569 = getelementptr inbounds float addrspace(1)* %555, i64 %loadedValue1489.i
  %SB_LocalId_Offset1522.i = add nuw i64 %pCurrSBIndex.1.i, 224
  %570 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1522.i
  %pSB_LocalId1523.i = bitcast i8* %570 to i64*
  %loadedValue1524.i = load i64* %pSB_LocalId1523.i, align 8, !alias.scope !68, !noalias !69
  %571 = getelementptr inbounds float addrspace(1)* %556, i64 %loadedValue1524.i
  %SB_LocalId_Offset1557.i = add nuw i64 %pCurrSBIndex.1.i, 232
  %572 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1557.i
  %pSB_LocalId1558.i = bitcast i8* %572 to i64*
  %loadedValue1559.i = load i64* %pSB_LocalId1558.i, align 8, !alias.scope !68, !noalias !69
  %573 = getelementptr inbounds float addrspace(1)* %557, i64 %loadedValue1559.i
  %SB_LocalId_Offset1592.i = add nuw i64 %pCurrSBIndex.1.i, 240
  %574 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1592.i
  %pSB_LocalId1593.i = bitcast i8* %574 to i64*
  %loadedValue1594.i = load i64* %pSB_LocalId1593.i, align 8, !alias.scope !68, !noalias !69
  %575 = getelementptr inbounds float addrspace(1)* %558, i64 %loadedValue1594.i
  %SB_LocalId_Offset1627.i = add nuw i64 %pCurrSBIndex.1.i, 248
  %576 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1627.i
  %pSB_LocalId1628.i = bitcast i8* %576 to i64*
  %loadedValue1629.i = load i64* %pSB_LocalId1628.i, align 8, !alias.scope !68, !noalias !69
  %577 = getelementptr inbounds float addrspace(1)* %559, i64 %loadedValue1629.i
  %578 = load float addrspace(1)* %563, align 1, !noalias !58
  %579 = load float addrspace(1)* %565, align 1, !noalias !58
  %580 = load float addrspace(1)* %567, align 1, !noalias !58
  %581 = load float addrspace(1)* %569, align 1, !noalias !58
  %582 = load float addrspace(1)* %571, align 1, !noalias !58
  %583 = load float addrspace(1)* %573, align 1, !noalias !58
  %584 = load float addrspace(1)* %575, align 1, !noalias !58
  %585 = load float addrspace(1)* %577, align 1, !noalias !58
  %SB_LocalId_Offset1347.i = add nuw i64 %pCurrSBIndex.1.i, 160
  %586 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1347.i
  %pSB_LocalId1348.i = bitcast i8* %586 to <8 x i32>*
  %loadedValue1349.i = load <8 x i32>* %pSB_LocalId1348.i, align 32, !alias.scope !68, !noalias !69
  %587 = or <8 x i32> %561, %loadedValue1349.i
  %extract517.i = extractelement <8 x i32> %587, i32 0
  %extract518.i = extractelement <8 x i32> %587, i32 1
  %extract519.i = extractelement <8 x i32> %587, i32 2
  %extract520.i = extractelement <8 x i32> %587, i32 3
  %extract521.i = extractelement <8 x i32> %587, i32 4
  %extract522.i = extractelement <8 x i32> %587, i32 5
  %extract523.i = extractelement <8 x i32> %587, i32 6
  %extract524.i = extractelement <8 x i32> %587, i32 7
  %588 = sext i32 %extract517.i to i64
  %589 = sext i32 %extract518.i to i64
  %590 = sext i32 %extract519.i to i64
  %591 = sext i32 %extract520.i to i64
  %592 = sext i32 %extract521.i to i64
  %593 = sext i32 %extract522.i to i64
  %594 = sext i32 %extract523.i to i64
  %595 = sext i32 %extract524.i to i64
  %sunkaddr311 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr312 = mul i64 %588, 4
  %sunkaddr313 = add i64 %sunkaddr311, %sunkaddr312
  %sunkaddr314 = add i64 %sunkaddr313, 128
  %sunkaddr315 = inttoptr i64 %sunkaddr314 to float addrspace(3)*
  store float %578, float addrspace(3)* %sunkaddr315, align 4, !alias.scope !70, !noalias !71
  %sunkaddr316 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr317 = mul i64 %589, 4
  %sunkaddr318 = add i64 %sunkaddr316, %sunkaddr317
  %sunkaddr319 = add i64 %sunkaddr318, 128
  %sunkaddr320 = inttoptr i64 %sunkaddr319 to float addrspace(3)*
  store float %579, float addrspace(3)* %sunkaddr320, align 4, !alias.scope !70, !noalias !71
  %sunkaddr321 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr322 = mul i64 %590, 4
  %sunkaddr323 = add i64 %sunkaddr321, %sunkaddr322
  %sunkaddr324 = add i64 %sunkaddr323, 128
  %sunkaddr325 = inttoptr i64 %sunkaddr324 to float addrspace(3)*
  store float %580, float addrspace(3)* %sunkaddr325, align 4, !alias.scope !70, !noalias !71
  %sunkaddr326 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr327 = mul i64 %591, 4
  %sunkaddr328 = add i64 %sunkaddr326, %sunkaddr327
  %sunkaddr329 = add i64 %sunkaddr328, 128
  %sunkaddr330 = inttoptr i64 %sunkaddr329 to float addrspace(3)*
  store float %581, float addrspace(3)* %sunkaddr330, align 4, !alias.scope !70, !noalias !71
  %sunkaddr331 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr332 = mul i64 %592, 4
  %sunkaddr333 = add i64 %sunkaddr331, %sunkaddr332
  %sunkaddr334 = add i64 %sunkaddr333, 128
  %sunkaddr335 = inttoptr i64 %sunkaddr334 to float addrspace(3)*
  store float %582, float addrspace(3)* %sunkaddr335, align 4, !alias.scope !70, !noalias !71
  %sunkaddr336 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr337 = mul i64 %593, 4
  %sunkaddr338 = add i64 %sunkaddr336, %sunkaddr337
  %sunkaddr339 = add i64 %sunkaddr338, 128
  %sunkaddr340 = inttoptr i64 %sunkaddr339 to float addrspace(3)*
  store float %583, float addrspace(3)* %sunkaddr340, align 4, !alias.scope !70, !noalias !71
  %sunkaddr341 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr342 = mul i64 %594, 4
  %sunkaddr343 = add i64 %sunkaddr341, %sunkaddr342
  %sunkaddr344 = add i64 %sunkaddr343, 128
  %sunkaddr345 = inttoptr i64 %sunkaddr344 to float addrspace(3)*
  store float %584, float addrspace(3)* %sunkaddr345, align 4, !alias.scope !70, !noalias !71
  %sunkaddr346 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr347 = mul i64 %595, 4
  %sunkaddr348 = add i64 %sunkaddr346, %sunkaddr347
  %sunkaddr349 = add i64 %sunkaddr348, 128
  %sunkaddr350 = inttoptr i64 %sunkaddr349 to float addrspace(3)*
  store float %585, float addrspace(3)* %sunkaddr350, align 4, !alias.scope !70, !noalias !71
  %SB_LocalId_Offset1662.i = add nuw i64 %pCurrSBIndex.1.i, 256
  %596 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1662.i
  %pSB_LocalId1663.i = bitcast i8* %596 to i64*
  %loadedValue1664.i = load i64* %pSB_LocalId1663.i, align 8, !alias.scope !68, !noalias !69
  %597 = getelementptr inbounds float addrspace(1)* %552, i64 %loadedValue1664.i
  %SB_LocalId_Offset1697.i = add nuw i64 %pCurrSBIndex.1.i, 264
  %598 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1697.i
  %pSB_LocalId1698.i = bitcast i8* %598 to i64*
  %loadedValue1699.i = load i64* %pSB_LocalId1698.i, align 8, !alias.scope !68, !noalias !69
  %599 = getelementptr inbounds float addrspace(1)* %553, i64 %loadedValue1699.i
  %SB_LocalId_Offset1732.i = add nuw i64 %pCurrSBIndex.1.i, 272
  %600 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1732.i
  %pSB_LocalId1733.i = bitcast i8* %600 to i64*
  %loadedValue1734.i = load i64* %pSB_LocalId1733.i, align 8, !alias.scope !68, !noalias !69
  %601 = getelementptr inbounds float addrspace(1)* %554, i64 %loadedValue1734.i
  %SB_LocalId_Offset1767.i = add nuw i64 %pCurrSBIndex.1.i, 280
  %602 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1767.i
  %pSB_LocalId1768.i = bitcast i8* %602 to i64*
  %loadedValue1769.i = load i64* %pSB_LocalId1768.i, align 8, !alias.scope !68, !noalias !69
  %603 = getelementptr inbounds float addrspace(1)* %555, i64 %loadedValue1769.i
  %SB_LocalId_Offset1802.i = add nuw i64 %pCurrSBIndex.1.i, 288
  %604 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1802.i
  %pSB_LocalId1803.i = bitcast i8* %604 to i64*
  %loadedValue1804.i = load i64* %pSB_LocalId1803.i, align 8, !alias.scope !68, !noalias !69
  %605 = getelementptr inbounds float addrspace(1)* %556, i64 %loadedValue1804.i
  %SB_LocalId_Offset1837.i = add nuw i64 %pCurrSBIndex.1.i, 296
  %606 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1837.i
  %pSB_LocalId1838.i = bitcast i8* %606 to i64*
  %loadedValue1839.i = load i64* %pSB_LocalId1838.i, align 8, !alias.scope !68, !noalias !69
  %607 = getelementptr inbounds float addrspace(1)* %557, i64 %loadedValue1839.i
  %SB_LocalId_Offset1872.i = add nuw i64 %pCurrSBIndex.1.i, 304
  %608 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1872.i
  %pSB_LocalId1873.i = bitcast i8* %608 to i64*
  %loadedValue1874.i = load i64* %pSB_LocalId1873.i, align 8, !alias.scope !68, !noalias !69
  %609 = getelementptr inbounds float addrspace(1)* %558, i64 %loadedValue1874.i
  %SB_LocalId_Offset1907.i = add nuw i64 %pCurrSBIndex.1.i, 312
  %610 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1907.i
  %pSB_LocalId1908.i = bitcast i8* %610 to i64*
  %loadedValue1909.i = load i64* %pSB_LocalId1908.i, align 8, !alias.scope !68, !noalias !69
  %611 = getelementptr inbounds float addrspace(1)* %559, i64 %loadedValue1909.i
  %612 = load float addrspace(1)* %597, align 1, !noalias !58
  %613 = load float addrspace(1)* %599, align 1, !noalias !58
  %614 = load float addrspace(1)* %601, align 1, !noalias !58
  %615 = load float addrspace(1)* %603, align 1, !noalias !58
  %616 = load float addrspace(1)* %605, align 1, !noalias !58
  %617 = load float addrspace(1)* %607, align 1, !noalias !58
  %618 = load float addrspace(1)* %609, align 1, !noalias !58
  %619 = load float addrspace(1)* %611, align 1, !noalias !58
  %620 = or <8 x i32> %587, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %extract525.i = extractelement <8 x i32> %620, i32 0
  %extract526.i = extractelement <8 x i32> %620, i32 1
  %extract527.i = extractelement <8 x i32> %620, i32 2
  %extract528.i = extractelement <8 x i32> %620, i32 3
  %extract529.i = extractelement <8 x i32> %620, i32 4
  %extract530.i = extractelement <8 x i32> %620, i32 5
  %extract531.i = extractelement <8 x i32> %620, i32 6
  %extract532.i = extractelement <8 x i32> %620, i32 7
  %621 = sext i32 %extract525.i to i64
  %622 = sext i32 %extract526.i to i64
  %623 = sext i32 %extract527.i to i64
  %624 = sext i32 %extract528.i to i64
  %625 = sext i32 %extract529.i to i64
  %626 = sext i32 %extract530.i to i64
  %627 = sext i32 %extract531.i to i64
  %628 = sext i32 %extract532.i to i64
  %sunkaddr351 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr352 = mul i64 %621, 4
  %sunkaddr353 = add i64 %sunkaddr351, %sunkaddr352
  %sunkaddr354 = add i64 %sunkaddr353, 128
  %sunkaddr355 = inttoptr i64 %sunkaddr354 to float addrspace(3)*
  store float %612, float addrspace(3)* %sunkaddr355, align 4, !alias.scope !70, !noalias !71
  %sunkaddr356 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr357 = mul i64 %622, 4
  %sunkaddr358 = add i64 %sunkaddr356, %sunkaddr357
  %sunkaddr359 = add i64 %sunkaddr358, 128
  %sunkaddr360 = inttoptr i64 %sunkaddr359 to float addrspace(3)*
  store float %613, float addrspace(3)* %sunkaddr360, align 4, !alias.scope !70, !noalias !71
  %sunkaddr361 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr362 = mul i64 %623, 4
  %sunkaddr363 = add i64 %sunkaddr361, %sunkaddr362
  %sunkaddr364 = add i64 %sunkaddr363, 128
  %sunkaddr365 = inttoptr i64 %sunkaddr364 to float addrspace(3)*
  store float %614, float addrspace(3)* %sunkaddr365, align 4, !alias.scope !70, !noalias !71
  %sunkaddr366 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr367 = mul i64 %624, 4
  %sunkaddr368 = add i64 %sunkaddr366, %sunkaddr367
  %sunkaddr369 = add i64 %sunkaddr368, 128
  %sunkaddr370 = inttoptr i64 %sunkaddr369 to float addrspace(3)*
  store float %615, float addrspace(3)* %sunkaddr370, align 4, !alias.scope !70, !noalias !71
  %sunkaddr371 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr372 = mul i64 %625, 4
  %sunkaddr373 = add i64 %sunkaddr371, %sunkaddr372
  %sunkaddr374 = add i64 %sunkaddr373, 128
  %sunkaddr375 = inttoptr i64 %sunkaddr374 to float addrspace(3)*
  store float %616, float addrspace(3)* %sunkaddr375, align 4, !alias.scope !70, !noalias !71
  %sunkaddr376 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr377 = mul i64 %626, 4
  %sunkaddr378 = add i64 %sunkaddr376, %sunkaddr377
  %sunkaddr379 = add i64 %sunkaddr378, 128
  %sunkaddr380 = inttoptr i64 %sunkaddr379 to float addrspace(3)*
  store float %617, float addrspace(3)* %sunkaddr380, align 4, !alias.scope !70, !noalias !71
  %sunkaddr381 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr382 = mul i64 %627, 4
  %sunkaddr383 = add i64 %sunkaddr381, %sunkaddr382
  %sunkaddr384 = add i64 %sunkaddr383, 128
  %sunkaddr385 = inttoptr i64 %sunkaddr384 to float addrspace(3)*
  store float %618, float addrspace(3)* %sunkaddr385, align 4, !alias.scope !70, !noalias !71
  %sunkaddr386 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr387 = mul i64 %628, 4
  %sunkaddr388 = add i64 %sunkaddr386, %sunkaddr387
  %sunkaddr389 = add i64 %sunkaddr388, 128
  %sunkaddr390 = inttoptr i64 %sunkaddr389 to float addrspace(3)*
  store float %619, float addrspace(3)* %sunkaddr390, align 4, !alias.scope !70, !noalias !71
  br label %post_288.i

; <label>:629                                     ; preds = %pre_287.i
  %630 = bitcast <4 x i32>* %dummy.i132.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %630) #5, !noalias !58
  %631 = bitcast <8 x i32> %_to_4611156.i to <8 x float>
  %632 = call i32 @llvm.x86.avx.movmsk.ps.256(<8 x float> %631) #5
  %633 = and i32 %632, 255
  %634 = icmp eq i32 %633, 255
  br i1 %634, label %635, label %652

; <label>:635                                     ; preds = %629
  %636 = addrspacecast <4 x i32> addrspace(2)* %514 to <4 x i32>*
  %637 = addrspacecast <4 x i32> addrspace(2)* %513 to <4 x i32>*
  %638 = addrspacecast <4 x i32> addrspace(2)* %512 to <4 x i32>*
  %639 = addrspacecast <4 x i32> addrspace(2)* %511 to <4 x i32>*
  %640 = addrspacecast <4 x i32> addrspace(2)* %510 to <4 x i32>*
  %641 = addrspacecast <4 x i32> addrspace(2)* %509 to <4 x i32>*
  %642 = addrspacecast <4 x i32> addrspace(2)* %508 to <4 x i32>*
  %643 = addrspacecast <4 x i32> addrspace(2)* %507 to <4 x i32>*
  %644 = load <4 x i32>* %643, align 16, !tbaa !72, !noalias !58
  %645 = load <4 x i32>* %639, align 16, !tbaa !72, !noalias !58
  %newShuffle.i85.i = shufflevector <4 x i32> %644, <4 x i32> %645, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %646 = load <4 x i32>* %642, align 16, !tbaa !72, !noalias !58
  %647 = load <4 x i32>* %638, align 16, !tbaa !72, !noalias !58
  %newShuffle1.i86.i = shufflevector <4 x i32> %646, <4 x i32> %647, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %648 = load <4 x i32>* %641, align 16, !tbaa !72, !noalias !58
  %649 = load <4 x i32>* %637, align 16, !tbaa !72, !noalias !58
  %newShuffle2.i87.i = shufflevector <4 x i32> %648, <4 x i32> %649, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %650 = load <4 x i32>* %640, align 16, !tbaa !72, !noalias !58
  %651 = load <4 x i32>* %636, align 16, !tbaa !72, !noalias !58
  %newShuffle3.i88.i = shufflevector <4 x i32> %650, <4 x i32> %651, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %newShuffle4.i89.i = shufflevector <8 x i32> %newShuffle.i85.i, <8 x i32> %newShuffle2.i87.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle5.i90.i = shufflevector <8 x i32> %newShuffle.i85.i, <8 x i32> %newShuffle2.i87.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle6.i91.i = shufflevector <8 x i32> %newShuffle1.i86.i, <8 x i32> %newShuffle3.i88.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle7.i92.i = shufflevector <8 x i32> %newShuffle1.i86.i, <8 x i32> %newShuffle3.i88.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle8.i93.i = shufflevector <8 x i32> %newShuffle4.i89.i, <8 x i32> %newShuffle6.i91.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr391 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr392 = add i64 %sunkaddr391, %pCurrSBIndex.1.i
  %sunkaddr393 = add i64 %sunkaddr392, 992
  %sunkaddr394 = inttoptr i64 %sunkaddr393 to <8 x i32>*
  store <8 x i32> %newShuffle8.i93.i, <8 x i32>* %sunkaddr394, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle9.i94.i = shufflevector <8 x i32> %newShuffle4.i89.i, <8 x i32> %newShuffle6.i91.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %sunkaddr395 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr396 = add i64 %sunkaddr395, %pCurrSBIndex.1.i
  %sunkaddr397 = add i64 %sunkaddr396, 1024
  %sunkaddr398 = inttoptr i64 %sunkaddr397 to <8 x i32>*
  store <8 x i32> %newShuffle9.i94.i, <8 x i32>* %sunkaddr398, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle10.i95.i = shufflevector <8 x i32> %newShuffle5.i90.i, <8 x i32> %newShuffle7.i92.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr399 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr400 = add i64 %sunkaddr399, %pCurrSBIndex.1.i
  %sunkaddr401 = add i64 %sunkaddr400, 1056
  %sunkaddr402 = inttoptr i64 %sunkaddr401 to <8 x i32>*
  store <8 x i32> %newShuffle10.i95.i, <8 x i32>* %sunkaddr402, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle11.i96.i = shufflevector <8 x i32> %newShuffle5.i90.i, <8 x i32> %newShuffle7.i92.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  br label %__ocl_masked_gather_transpose_int_4x8.exit110.i

; <label>:652                                     ; preds = %629
  %653 = addrspacecast <4 x i32> addrspace(2)* %514 to <4 x i32>*
  %654 = addrspacecast <4 x i32> addrspace(2)* %513 to <4 x i32>*
  %655 = addrspacecast <4 x i32> addrspace(2)* %512 to <4 x i32>*
  %656 = addrspacecast <4 x i32> addrspace(2)* %511 to <4 x i32>*
  %657 = addrspacecast <4 x i32> addrspace(2)* %510 to <4 x i32>*
  %658 = addrspacecast <4 x i32> addrspace(2)* %509 to <4 x i32>*
  %659 = addrspacecast <4 x i32> addrspace(2)* %508 to <4 x i32>*
  %660 = addrspacecast <4 x i32> addrspace(2)* %507 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %dummy.i132.i, align 16, !noalias !58
  %661 = extractelement <8 x i32> %_to_4611156.i, i64 0
  %662 = icmp ne i32 %661, 0
  %663 = select i1 %662, <4 x i32>* %660, <4 x i32>* %dummy.i132.i
  %664 = extractelement <8 x i32> %_to_4611156.i, i64 1
  %665 = icmp ne i32 %664, 0
  %666 = select i1 %665, <4 x i32>* %659, <4 x i32>* %dummy.i132.i
  %667 = extractelement <8 x i32> %_to_4611156.i, i64 2
  %668 = icmp ne i32 %667, 0
  %669 = select i1 %668, <4 x i32>* %658, <4 x i32>* %dummy.i132.i
  %670 = extractelement <8 x i32> %_to_4611156.i, i64 3
  %671 = icmp ne i32 %670, 0
  %672 = select i1 %671, <4 x i32>* %657, <4 x i32>* %dummy.i132.i
  %673 = extractelement <8 x i32> %_to_4611156.i, i64 4
  %674 = icmp ne i32 %673, 0
  %675 = select i1 %674, <4 x i32>* %656, <4 x i32>* %dummy.i132.i
  %676 = extractelement <8 x i32> %_to_4611156.i, i64 5
  %677 = icmp ne i32 %676, 0
  %678 = select i1 %677, <4 x i32>* %655, <4 x i32>* %dummy.i132.i
  %679 = extractelement <8 x i32> %_to_4611156.i, i64 6
  %680 = icmp ne i32 %679, 0
  %681 = select i1 %680, <4 x i32>* %654, <4 x i32>* %dummy.i132.i
  %682 = extractelement <8 x i32> %_to_4611156.i, i64 7
  %683 = icmp ne i32 %682, 0
  %684 = select i1 %683, <4 x i32>* %653, <4 x i32>* %dummy.i132.i
  %685 = load <4 x i32>* %663, align 16, !tbaa !72, !noalias !58
  %686 = load <4 x i32>* %675, align 16, !tbaa !72, !noalias !58
  %newShuffle12.i97.i = shufflevector <4 x i32> %685, <4 x i32> %686, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %687 = load <4 x i32>* %666, align 16, !tbaa !72, !noalias !58
  %688 = load <4 x i32>* %678, align 16, !tbaa !72, !noalias !58
  %newShuffle13.i98.i = shufflevector <4 x i32> %687, <4 x i32> %688, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %689 = load <4 x i32>* %669, align 16, !tbaa !72, !noalias !58
  %690 = load <4 x i32>* %681, align 16, !tbaa !72, !noalias !58
  %newShuffle14.i99.i = shufflevector <4 x i32> %689, <4 x i32> %690, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %691 = load <4 x i32>* %672, align 16, !tbaa !72, !noalias !58
  %692 = load <4 x i32>* %684, align 16, !tbaa !72, !noalias !58
  %newShuffle15.i100.i = shufflevector <4 x i32> %691, <4 x i32> %692, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %newShuffle16.i101.i = shufflevector <8 x i32> %newShuffle12.i97.i, <8 x i32> %newShuffle14.i99.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle17.i102.i = shufflevector <8 x i32> %newShuffle12.i97.i, <8 x i32> %newShuffle14.i99.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle18.i103.i = shufflevector <8 x i32> %newShuffle13.i98.i, <8 x i32> %newShuffle15.i100.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle19.i104.i = shufflevector <8 x i32> %newShuffle13.i98.i, <8 x i32> %newShuffle15.i100.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle20.i105.i = shufflevector <8 x i32> %newShuffle16.i101.i, <8 x i32> %newShuffle18.i103.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr403 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr404 = add i64 %sunkaddr403, %pCurrSBIndex.1.i
  %sunkaddr405 = add i64 %sunkaddr404, 992
  %sunkaddr406 = inttoptr i64 %sunkaddr405 to <8 x i32>*
  store <8 x i32> %newShuffle20.i105.i, <8 x i32>* %sunkaddr406, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle21.i106.i = shufflevector <8 x i32> %newShuffle16.i101.i, <8 x i32> %newShuffle18.i103.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %sunkaddr407 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr408 = add i64 %sunkaddr407, %pCurrSBIndex.1.i
  %sunkaddr409 = add i64 %sunkaddr408, 1024
  %sunkaddr410 = inttoptr i64 %sunkaddr409 to <8 x i32>*
  store <8 x i32> %newShuffle21.i106.i, <8 x i32>* %sunkaddr410, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle22.i107.i = shufflevector <8 x i32> %newShuffle17.i102.i, <8 x i32> %newShuffle19.i104.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr411 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr412 = add i64 %sunkaddr411, %pCurrSBIndex.1.i
  %sunkaddr413 = add i64 %sunkaddr412, 1056
  %sunkaddr414 = inttoptr i64 %sunkaddr413 to <8 x i32>*
  store <8 x i32> %newShuffle22.i107.i, <8 x i32>* %sunkaddr414, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle23.i108.i = shufflevector <8 x i32> %newShuffle17.i102.i, <8 x i32> %newShuffle19.i104.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  br label %__ocl_masked_gather_transpose_int_4x8.exit110.i

__ocl_masked_gather_transpose_int_4x8.exit110.i:  ; preds = %652, %635
  %693 = phi <8 x i32> [ %newShuffle10.i95.i, %635 ], [ %newShuffle22.i107.i, %652 ]
  %694 = phi <8 x i32> [ %newShuffle9.i94.i, %635 ], [ %newShuffle21.i106.i, %652 ]
  %695 = phi <8 x i32> [ %newShuffle8.i93.i, %635 ], [ %newShuffle20.i105.i, %652 ]
  %storemerge.i109.i = phi <8 x i32> [ %newShuffle11.i96.i, %635 ], [ %newShuffle23.i108.i, %652 ]
  %696 = bitcast <4 x i32>* %dummy.i132.i to i8*
  %sunkaddr415 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr416 = add i64 %sunkaddr415, %pCurrSBIndex.1.i
  %sunkaddr417 = add i64 %sunkaddr416, 1088
  %sunkaddr418 = inttoptr i64 %sunkaddr417 to <8 x i32>*
  store <8 x i32> %storemerge.i109.i, <8 x i32>* %sunkaddr418, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  call void @llvm.lifetime.end(i64 16, i8* %696) #5, !noalias !58
  %697 = add nsw <8 x i32> %695, %vector376.i
  %698 = add nsw <8 x i32> %694, %vector378.i
  %699 = add nsw <8 x i32> %693, %vector380.i
  %700 = mul nsw <8 x i32> %699, %vector382.i
  %701 = add nsw <8 x i32> %698, %700
  %702 = mul nsw <8 x i32> %701, %vector384.i
  %703 = add nsw <8 x i32> %697, %702
  %704 = shl <8 x i32> %703, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %extract534.i = extractelement <8 x i32> %704, i32 0
  %extract535.i = extractelement <8 x i32> %704, i32 1
  %extract536.i = extractelement <8 x i32> %704, i32 2
  %extract537.i = extractelement <8 x i32> %704, i32 3
  %extract538.i = extractelement <8 x i32> %704, i32 4
  %extract539.i = extractelement <8 x i32> %704, i32 5
  %extract540.i = extractelement <8 x i32> %704, i32 6
  %extract541.i = extractelement <8 x i32> %704, i32 7
  %705 = sext i32 %extract534.i to i64
  %706 = sext i32 %extract535.i to i64
  %707 = sext i32 %extract536.i to i64
  %708 = sext i32 %extract537.i to i64
  %709 = sext i32 %extract538.i to i64
  %710 = sext i32 %extract539.i to i64
  %711 = sext i32 %extract540.i to i64
  %712 = sext i32 %extract541.i to i64
  %713 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %705
  %714 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %706
  %715 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %707
  %716 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %708
  %717 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %709
  %718 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %710
  %719 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %711
  %720 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %712
  %SB_LocalId_Offset1308.i = add nuw i64 %pCurrSBIndex.1.i, 128
  %721 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1308.i
  %pSB_LocalId1309.i = bitcast i8* %721 to <8 x i32>*
  %loadedValue1310.i = load <8 x i32>* %pSB_LocalId1309.i, align 32, !alias.scope !68, !noalias !69
  %722 = add nsw <8 x i32> %loadedValue1310.i, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %SB_LocalId_Offset1413.i = add nuw i64 %pCurrSBIndex.1.i, 200
  %723 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1413.i
  %pSB_LocalId1414.i = bitcast i8* %723 to i64*
  %loadedValue1415.i = load i64* %pSB_LocalId1414.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1448.i = add nuw i64 %pCurrSBIndex.1.i, 208
  %724 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1448.i
  %pSB_LocalId1449.i = bitcast i8* %724 to i64*
  %loadedValue1450.i = load i64* %pSB_LocalId1449.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1483.i = add nuw i64 %pCurrSBIndex.1.i, 216
  %725 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1483.i
  %pSB_LocalId1484.i = bitcast i8* %725 to i64*
  %loadedValue1485.i = load i64* %pSB_LocalId1484.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1518.i = add nuw i64 %pCurrSBIndex.1.i, 224
  %726 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1518.i
  %pSB_LocalId1519.i = bitcast i8* %726 to i64*
  %loadedValue1520.i = load i64* %pSB_LocalId1519.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1553.i = add nuw i64 %pCurrSBIndex.1.i, 232
  %727 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1553.i
  %pSB_LocalId1554.i = bitcast i8* %727 to i64*
  %loadedValue1555.i = load i64* %pSB_LocalId1554.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1588.i = add nuw i64 %pCurrSBIndex.1.i, 240
  %728 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1588.i
  %pSB_LocalId1589.i = bitcast i8* %728 to i64*
  %loadedValue1590.i = load i64* %pSB_LocalId1589.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1623.i = add nuw i64 %pCurrSBIndex.1.i, 248
  %729 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1623.i
  %pSB_LocalId1624.i = bitcast i8* %729 to i64*
  %loadedValue1625.i = load i64* %pSB_LocalId1624.i, align 8, !alias.scope !68, !noalias !69
  br i1 %extract542.i, label %preload932.i, label %postload933.i

preload932.i:                                     ; preds = %__ocl_masked_gather_transpose_int_4x8.exit110.i
  %SB_LocalId_Offset1378.i = add nuw i64 %pCurrSBIndex.1.i, 192
  %730 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1378.i
  %pSB_LocalId1379.i = bitcast i8* %730 to i64*
  %loadedValue1380.i = load i64* %pSB_LocalId1379.i, align 8, !alias.scope !68, !noalias !69
  %731 = getelementptr inbounds float addrspace(1)* %713, i64 %loadedValue1380.i
  %masked_load767.i = load float addrspace(1)* %731, align 1, !noalias !58
  br label %postload933.i

postload933.i:                                    ; preds = %preload932.i, %__ocl_masked_gather_transpose_int_4x8.exit110.i
  %phi934.i = phi float [ 0.000000e+00, %__ocl_masked_gather_transpose_int_4x8.exit110.i ], [ %masked_load767.i, %preload932.i ]
  br i1 %extract543.i, label %preload942.i, label %postload943.i

preload942.i:                                     ; preds = %postload933.i
  %sunkaddr419 = ptrtoint float addrspace(1)* %714 to i64
  %sunkaddr420 = mul i64 %loadedValue1415.i, 4
  %sunkaddr421 = add i64 %sunkaddr419, %sunkaddr420
  %sunkaddr422 = inttoptr i64 %sunkaddr421 to float addrspace(1)*
  %masked_load768.i = load float addrspace(1)* %sunkaddr422, align 1, !noalias !58
  br label %postload943.i

postload943.i:                                    ; preds = %preload942.i, %postload933.i
  %phi944.i = phi float [ 0.000000e+00, %postload933.i ], [ %masked_load768.i, %preload942.i ]
  br i1 %extract544.i, label %preload952.i, label %postload953.i

preload952.i:                                     ; preds = %postload943.i
  %sunkaddr423 = ptrtoint float addrspace(1)* %715 to i64
  %sunkaddr424 = mul i64 %loadedValue1450.i, 4
  %sunkaddr425 = add i64 %sunkaddr423, %sunkaddr424
  %sunkaddr426 = inttoptr i64 %sunkaddr425 to float addrspace(1)*
  %masked_load769.i = load float addrspace(1)* %sunkaddr426, align 1, !noalias !58
  br label %postload953.i

postload953.i:                                    ; preds = %preload952.i, %postload943.i
  %phi954.i = phi float [ 0.000000e+00, %postload943.i ], [ %masked_load769.i, %preload952.i ]
  br i1 %extract545.i, label %preload962.i, label %postload963.i

preload962.i:                                     ; preds = %postload953.i
  %sunkaddr427 = ptrtoint float addrspace(1)* %716 to i64
  %sunkaddr428 = mul i64 %loadedValue1485.i, 4
  %sunkaddr429 = add i64 %sunkaddr427, %sunkaddr428
  %sunkaddr430 = inttoptr i64 %sunkaddr429 to float addrspace(1)*
  %masked_load770.i = load float addrspace(1)* %sunkaddr430, align 1, !noalias !58
  br label %postload963.i

postload963.i:                                    ; preds = %preload962.i, %postload953.i
  %phi964.i = phi float [ 0.000000e+00, %postload953.i ], [ %masked_load770.i, %preload962.i ]
  br i1 %extract546.i, label %preload972.i, label %postload973.i

preload972.i:                                     ; preds = %postload963.i
  %sunkaddr431 = ptrtoint float addrspace(1)* %717 to i64
  %sunkaddr432 = mul i64 %loadedValue1520.i, 4
  %sunkaddr433 = add i64 %sunkaddr431, %sunkaddr432
  %sunkaddr434 = inttoptr i64 %sunkaddr433 to float addrspace(1)*
  %masked_load771.i = load float addrspace(1)* %sunkaddr434, align 1, !noalias !58
  br label %postload973.i

postload973.i:                                    ; preds = %preload972.i, %postload963.i
  %phi974.i = phi float [ 0.000000e+00, %postload963.i ], [ %masked_load771.i, %preload972.i ]
  br i1 %extract547.i, label %preload982.i, label %postload983.i

preload982.i:                                     ; preds = %postload973.i
  %sunkaddr435 = ptrtoint float addrspace(1)* %718 to i64
  %sunkaddr436 = mul i64 %loadedValue1555.i, 4
  %sunkaddr437 = add i64 %sunkaddr435, %sunkaddr436
  %sunkaddr438 = inttoptr i64 %sunkaddr437 to float addrspace(1)*
  %masked_load772.i = load float addrspace(1)* %sunkaddr438, align 1, !noalias !58
  br label %postload983.i

postload983.i:                                    ; preds = %preload982.i, %postload973.i
  %phi984.i = phi float [ 0.000000e+00, %postload973.i ], [ %masked_load772.i, %preload982.i ]
  br i1 %extract548.i, label %preload992.i, label %postload993.i

preload992.i:                                     ; preds = %postload983.i
  %sunkaddr439 = ptrtoint float addrspace(1)* %719 to i64
  %sunkaddr440 = mul i64 %loadedValue1590.i, 4
  %sunkaddr441 = add i64 %sunkaddr439, %sunkaddr440
  %sunkaddr442 = inttoptr i64 %sunkaddr441 to float addrspace(1)*
  %masked_load773.i = load float addrspace(1)* %sunkaddr442, align 1, !noalias !58
  br label %postload993.i

postload993.i:                                    ; preds = %preload992.i, %postload983.i
  %phi994.i = phi float [ 0.000000e+00, %postload983.i ], [ %masked_load773.i, %preload992.i ]
  br i1 %extract549.i, label %preload1002.i, label %postload1003.i

preload1002.i:                                    ; preds = %postload993.i
  %sunkaddr443 = ptrtoint float addrspace(1)* %720 to i64
  %sunkaddr444 = mul i64 %loadedValue1625.i, 4
  %sunkaddr445 = add i64 %sunkaddr443, %sunkaddr444
  %sunkaddr446 = inttoptr i64 %sunkaddr445 to float addrspace(1)*
  %masked_load774.i = load float addrspace(1)* %sunkaddr446, align 1, !noalias !58
  br label %postload1003.i

postload1003.i:                                   ; preds = %preload1002.i, %postload993.i
  %phi1004.i = phi float [ 0.000000e+00, %postload993.i ], [ %masked_load774.i, %preload1002.i ]
  %SB_LocalId_Offset1343.i = add nuw i64 %pCurrSBIndex.1.i, 160
  %732 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1343.i
  %pSB_LocalId1344.i = bitcast i8* %732 to <8 x i32>*
  %loadedValue1345.i = load <8 x i32>* %pSB_LocalId1344.i, align 32, !alias.scope !68, !noalias !69
  %733 = or <8 x i32> %722, %loadedValue1345.i
  %extract551.i = extractelement <8 x i32> %733, i32 1
  %extract552.i = extractelement <8 x i32> %733, i32 2
  %extract553.i = extractelement <8 x i32> %733, i32 3
  %extract554.i = extractelement <8 x i32> %733, i32 4
  %extract555.i = extractelement <8 x i32> %733, i32 5
  %extract556.i = extractelement <8 x i32> %733, i32 6
  %extract557.i = extractelement <8 x i32> %733, i32 7
  %734 = sext i32 %extract551.i to i64
  %735 = sext i32 %extract552.i to i64
  %736 = sext i32 %extract553.i to i64
  %737 = sext i32 %extract554.i to i64
  %738 = sext i32 %extract555.i to i64
  %739 = sext i32 %extract556.i to i64
  %740 = sext i32 %extract557.i to i64
  br i1 %extract542.i, label %preload935.i, label %postload936.i

preload935.i:                                     ; preds = %postload1003.i
  %extract550.i = extractelement <8 x i32> %733, i32 0
  %741 = sext i32 %extract550.i to i64
  %sunkaddr447 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr448 = mul i64 %741, 4
  %sunkaddr449 = add i64 %sunkaddr447, %sunkaddr448
  %sunkaddr450 = add i64 %sunkaddr449, 128
  %sunkaddr451 = inttoptr i64 %sunkaddr450 to float addrspace(3)*
  store float %phi934.i, float addrspace(3)* %sunkaddr451, align 4, !alias.scope !70, !noalias !71
  br label %postload936.i

postload936.i:                                    ; preds = %preload935.i, %postload1003.i
  br i1 %extract543.i, label %preload945.i, label %postload946.i

preload945.i:                                     ; preds = %postload936.i
  %sunkaddr452 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr453 = mul i64 %734, 4
  %sunkaddr454 = add i64 %sunkaddr452, %sunkaddr453
  %sunkaddr455 = add i64 %sunkaddr454, 128
  %sunkaddr456 = inttoptr i64 %sunkaddr455 to float addrspace(3)*
  store float %phi944.i, float addrspace(3)* %sunkaddr456, align 4, !alias.scope !70, !noalias !71
  br label %postload946.i

postload946.i:                                    ; preds = %preload945.i, %postload936.i
  br i1 %extract544.i, label %preload955.i, label %postload956.i

preload955.i:                                     ; preds = %postload946.i
  %sunkaddr457 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr458 = mul i64 %735, 4
  %sunkaddr459 = add i64 %sunkaddr457, %sunkaddr458
  %sunkaddr460 = add i64 %sunkaddr459, 128
  %sunkaddr461 = inttoptr i64 %sunkaddr460 to float addrspace(3)*
  store float %phi954.i, float addrspace(3)* %sunkaddr461, align 4, !alias.scope !70, !noalias !71
  br label %postload956.i

postload956.i:                                    ; preds = %preload955.i, %postload946.i
  br i1 %extract545.i, label %preload965.i, label %postload966.i

preload965.i:                                     ; preds = %postload956.i
  %sunkaddr462 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr463 = mul i64 %736, 4
  %sunkaddr464 = add i64 %sunkaddr462, %sunkaddr463
  %sunkaddr465 = add i64 %sunkaddr464, 128
  %sunkaddr466 = inttoptr i64 %sunkaddr465 to float addrspace(3)*
  store float %phi964.i, float addrspace(3)* %sunkaddr466, align 4, !alias.scope !70, !noalias !71
  br label %postload966.i

postload966.i:                                    ; preds = %preload965.i, %postload956.i
  br i1 %extract546.i, label %preload975.i, label %postload976.i

preload975.i:                                     ; preds = %postload966.i
  %sunkaddr467 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr468 = mul i64 %737, 4
  %sunkaddr469 = add i64 %sunkaddr467, %sunkaddr468
  %sunkaddr470 = add i64 %sunkaddr469, 128
  %sunkaddr471 = inttoptr i64 %sunkaddr470 to float addrspace(3)*
  store float %phi974.i, float addrspace(3)* %sunkaddr471, align 4, !alias.scope !70, !noalias !71
  br label %postload976.i

postload976.i:                                    ; preds = %preload975.i, %postload966.i
  br i1 %extract547.i, label %preload985.i, label %postload986.i

preload985.i:                                     ; preds = %postload976.i
  %sunkaddr472 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr473 = mul i64 %738, 4
  %sunkaddr474 = add i64 %sunkaddr472, %sunkaddr473
  %sunkaddr475 = add i64 %sunkaddr474, 128
  %sunkaddr476 = inttoptr i64 %sunkaddr475 to float addrspace(3)*
  store float %phi984.i, float addrspace(3)* %sunkaddr476, align 4, !alias.scope !70, !noalias !71
  br label %postload986.i

postload986.i:                                    ; preds = %preload985.i, %postload976.i
  br i1 %extract548.i, label %preload995.i, label %postload996.i

preload995.i:                                     ; preds = %postload986.i
  %sunkaddr477 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr478 = mul i64 %739, 4
  %sunkaddr479 = add i64 %sunkaddr477, %sunkaddr478
  %sunkaddr480 = add i64 %sunkaddr479, 128
  %sunkaddr481 = inttoptr i64 %sunkaddr480 to float addrspace(3)*
  store float %phi994.i, float addrspace(3)* %sunkaddr481, align 4, !alias.scope !70, !noalias !71
  br label %postload996.i

postload996.i:                                    ; preds = %preload995.i, %postload986.i
  br i1 %extract549.i, label %preload1005.i, label %postload1006.i

preload1005.i:                                    ; preds = %postload996.i
  %sunkaddr482 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr483 = mul i64 %740, 4
  %sunkaddr484 = add i64 %sunkaddr482, %sunkaddr483
  %sunkaddr485 = add i64 %sunkaddr484, 128
  %sunkaddr486 = inttoptr i64 %sunkaddr485 to float addrspace(3)*
  store float %phi1004.i, float addrspace(3)* %sunkaddr486, align 4, !alias.scope !70, !noalias !71
  br label %postload1006.i

postload1006.i:                                   ; preds = %preload1005.i, %postload996.i
  %SB_LocalId_Offset1693.i = add nuw i64 %pCurrSBIndex.1.i, 264
  %742 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1693.i
  %SB_LocalId_Offset1728.i = add nuw i64 %pCurrSBIndex.1.i, 272
  %743 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1728.i
  %SB_LocalId_Offset1763.i = add nuw i64 %pCurrSBIndex.1.i, 280
  %744 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1763.i
  %SB_LocalId_Offset1798.i = add nuw i64 %pCurrSBIndex.1.i, 288
  %745 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1798.i
  %SB_LocalId_Offset1833.i = add nuw i64 %pCurrSBIndex.1.i, 296
  %746 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1833.i
  %SB_LocalId_Offset1868.i = add nuw i64 %pCurrSBIndex.1.i, 304
  %747 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1868.i
  %SB_LocalId_Offset1903.i = add nuw i64 %pCurrSBIndex.1.i, 312
  %748 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1903.i
  br i1 %extract542.i, label %preload937.i, label %postload938.i

preload937.i:                                     ; preds = %postload1006.i
  %SB_LocalId_Offset1658.i = add nuw i64 %pCurrSBIndex.1.i, 256
  %749 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1658.i
  %pSB_LocalId1659.i = bitcast i8* %749 to i64*
  %loadedValue1660.i = load i64* %pSB_LocalId1659.i, align 8, !alias.scope !68, !noalias !69
  %750 = getelementptr inbounds float addrspace(1)* %713, i64 %loadedValue1660.i
  %masked_load775.i = load float addrspace(1)* %750, align 1, !noalias !58
  br label %postload938.i

postload938.i:                                    ; preds = %preload937.i, %postload1006.i
  %phi939.i = phi float [ 0.000000e+00, %postload1006.i ], [ %masked_load775.i, %preload937.i ]
  br i1 %extract543.i, label %preload947.i, label %postload948.i

preload947.i:                                     ; preds = %postload938.i
  %sunkaddr487 = ptrtoint float addrspace(1)* %714 to i64
  %sunkaddr488 = mul i64 %loadedValue1695.i, 4
  %sunkaddr489 = add i64 %sunkaddr487, %sunkaddr488
  %sunkaddr490 = inttoptr i64 %sunkaddr489 to float addrspace(1)*
  %masked_load776.i = load float addrspace(1)* %sunkaddr490, align 1, !noalias !58
  br label %postload948.i

postload948.i:                                    ; preds = %preload947.i, %postload938.i
  %phi949.i = phi float [ 0.000000e+00, %postload938.i ], [ %masked_load776.i, %preload947.i ]
  br i1 %extract544.i, label %preload957.i, label %postload958.i

preload957.i:                                     ; preds = %postload948.i
  %sunkaddr491 = ptrtoint float addrspace(1)* %715 to i64
  %sunkaddr492 = mul i64 %loadedValue1730.i, 4
  %sunkaddr493 = add i64 %sunkaddr491, %sunkaddr492
  %sunkaddr494 = inttoptr i64 %sunkaddr493 to float addrspace(1)*
  %masked_load777.i = load float addrspace(1)* %sunkaddr494, align 1, !noalias !58
  br label %postload958.i

postload958.i:                                    ; preds = %preload957.i, %postload948.i
  %phi959.i = phi float [ 0.000000e+00, %postload948.i ], [ %masked_load777.i, %preload957.i ]
  br i1 %extract545.i, label %preload967.i, label %postload968.i

preload967.i:                                     ; preds = %postload958.i
  %sunkaddr495 = ptrtoint float addrspace(1)* %716 to i64
  %sunkaddr496 = mul i64 %loadedValue1765.i, 4
  %sunkaddr497 = add i64 %sunkaddr495, %sunkaddr496
  %sunkaddr498 = inttoptr i64 %sunkaddr497 to float addrspace(1)*
  %masked_load778.i = load float addrspace(1)* %sunkaddr498, align 1, !noalias !58
  br label %postload968.i

postload968.i:                                    ; preds = %preload967.i, %postload958.i
  %phi969.i = phi float [ 0.000000e+00, %postload958.i ], [ %masked_load778.i, %preload967.i ]
  br i1 %extract546.i, label %preload977.i, label %postload978.i

preload977.i:                                     ; preds = %postload968.i
  %sunkaddr499 = ptrtoint float addrspace(1)* %717 to i64
  %sunkaddr500 = mul i64 %loadedValue1800.i, 4
  %sunkaddr501 = add i64 %sunkaddr499, %sunkaddr500
  %sunkaddr502 = inttoptr i64 %sunkaddr501 to float addrspace(1)*
  %masked_load779.i = load float addrspace(1)* %sunkaddr502, align 1, !noalias !58
  br label %postload978.i

postload978.i:                                    ; preds = %preload977.i, %postload968.i
  %phi979.i = phi float [ 0.000000e+00, %postload968.i ], [ %masked_load779.i, %preload977.i ]
  br i1 %extract547.i, label %preload987.i, label %postload988.i

preload987.i:                                     ; preds = %postload978.i
  %sunkaddr503 = ptrtoint float addrspace(1)* %718 to i64
  %sunkaddr504 = mul i64 %loadedValue1835.i, 4
  %sunkaddr505 = add i64 %sunkaddr503, %sunkaddr504
  %sunkaddr506 = inttoptr i64 %sunkaddr505 to float addrspace(1)*
  %masked_load780.i = load float addrspace(1)* %sunkaddr506, align 1, !noalias !58
  br label %postload988.i

postload988.i:                                    ; preds = %preload987.i, %postload978.i
  %phi989.i = phi float [ 0.000000e+00, %postload978.i ], [ %masked_load780.i, %preload987.i ]
  br i1 %extract548.i, label %preload997.i, label %postload998.i

preload997.i:                                     ; preds = %postload988.i
  %sunkaddr507 = ptrtoint float addrspace(1)* %719 to i64
  %sunkaddr508 = mul i64 %loadedValue1870.i, 4
  %sunkaddr509 = add i64 %sunkaddr507, %sunkaddr508
  %sunkaddr510 = inttoptr i64 %sunkaddr509 to float addrspace(1)*
  %masked_load781.i = load float addrspace(1)* %sunkaddr510, align 1, !noalias !58
  br label %postload998.i

postload998.i:                                    ; preds = %preload997.i, %postload988.i
  %phi999.i = phi float [ 0.000000e+00, %postload988.i ], [ %masked_load781.i, %preload997.i ]
  br i1 %extract549.i, label %preload1007.i, label %postload1008.i

preload1007.i:                                    ; preds = %postload998.i
  %sunkaddr511 = ptrtoint float addrspace(1)* %720 to i64
  %sunkaddr512 = mul i64 %loadedValue1905.i, 4
  %sunkaddr513 = add i64 %sunkaddr511, %sunkaddr512
  %sunkaddr514 = inttoptr i64 %sunkaddr513 to float addrspace(1)*
  %masked_load782.i = load float addrspace(1)* %sunkaddr514, align 1, !noalias !58
  br label %postload1008.i

postload1008.i:                                   ; preds = %preload1007.i, %postload998.i
  %phi1009.i = phi float [ 0.000000e+00, %postload998.i ], [ %masked_load782.i, %preload1007.i ]
  %751 = or <8 x i32> %733, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %extract559.i = extractelement <8 x i32> %751, i32 1
  %extract560.i = extractelement <8 x i32> %751, i32 2
  %extract561.i = extractelement <8 x i32> %751, i32 3
  %extract562.i = extractelement <8 x i32> %751, i32 4
  %extract563.i = extractelement <8 x i32> %751, i32 5
  %extract564.i = extractelement <8 x i32> %751, i32 6
  %extract565.i = extractelement <8 x i32> %751, i32 7
  %752 = sext i32 %extract559.i to i64
  %753 = sext i32 %extract560.i to i64
  %754 = sext i32 %extract561.i to i64
  %755 = sext i32 %extract562.i to i64
  %756 = sext i32 %extract563.i to i64
  %757 = sext i32 %extract564.i to i64
  %758 = sext i32 %extract565.i to i64
  br i1 %extract542.i, label %preload940.i, label %postload941.i

preload940.i:                                     ; preds = %postload1008.i
  %extract558.i = extractelement <8 x i32> %751, i32 0
  %759 = sext i32 %extract558.i to i64
  %sunkaddr515 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr516 = mul i64 %759, 4
  %sunkaddr517 = add i64 %sunkaddr515, %sunkaddr516
  %sunkaddr518 = add i64 %sunkaddr517, 128
  %sunkaddr519 = inttoptr i64 %sunkaddr518 to float addrspace(3)*
  store float %phi939.i, float addrspace(3)* %sunkaddr519, align 4, !alias.scope !70, !noalias !71
  br label %postload941.i

postload941.i:                                    ; preds = %preload940.i, %postload1008.i
  br i1 %extract543.i, label %preload950.i, label %postload951.i

preload950.i:                                     ; preds = %postload941.i
  %sunkaddr520 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr521 = mul i64 %752, 4
  %sunkaddr522 = add i64 %sunkaddr520, %sunkaddr521
  %sunkaddr523 = add i64 %sunkaddr522, 128
  %sunkaddr524 = inttoptr i64 %sunkaddr523 to float addrspace(3)*
  store float %phi949.i, float addrspace(3)* %sunkaddr524, align 4, !alias.scope !70, !noalias !71
  br label %postload951.i

postload951.i:                                    ; preds = %preload950.i, %postload941.i
  br i1 %extract544.i, label %preload960.i, label %postload961.i

preload960.i:                                     ; preds = %postload951.i
  %sunkaddr525 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr526 = mul i64 %753, 4
  %sunkaddr527 = add i64 %sunkaddr525, %sunkaddr526
  %sunkaddr528 = add i64 %sunkaddr527, 128
  %sunkaddr529 = inttoptr i64 %sunkaddr528 to float addrspace(3)*
  store float %phi959.i, float addrspace(3)* %sunkaddr529, align 4, !alias.scope !70, !noalias !71
  br label %postload961.i

postload961.i:                                    ; preds = %preload960.i, %postload951.i
  br i1 %extract545.i, label %preload970.i, label %postload971.i

preload970.i:                                     ; preds = %postload961.i
  %sunkaddr530 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr531 = mul i64 %754, 4
  %sunkaddr532 = add i64 %sunkaddr530, %sunkaddr531
  %sunkaddr533 = add i64 %sunkaddr532, 128
  %sunkaddr534 = inttoptr i64 %sunkaddr533 to float addrspace(3)*
  store float %phi969.i, float addrspace(3)* %sunkaddr534, align 4, !alias.scope !70, !noalias !71
  br label %postload971.i

postload971.i:                                    ; preds = %preload970.i, %postload961.i
  br i1 %extract546.i, label %preload980.i, label %postload981.i

preload980.i:                                     ; preds = %postload971.i
  %sunkaddr535 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr536 = mul i64 %755, 4
  %sunkaddr537 = add i64 %sunkaddr535, %sunkaddr536
  %sunkaddr538 = add i64 %sunkaddr537, 128
  %sunkaddr539 = inttoptr i64 %sunkaddr538 to float addrspace(3)*
  store float %phi979.i, float addrspace(3)* %sunkaddr539, align 4, !alias.scope !70, !noalias !71
  br label %postload981.i

postload981.i:                                    ; preds = %preload980.i, %postload971.i
  br i1 %extract547.i, label %preload990.i, label %postload991.i

preload990.i:                                     ; preds = %postload981.i
  %sunkaddr540 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr541 = mul i64 %756, 4
  %sunkaddr542 = add i64 %sunkaddr540, %sunkaddr541
  %sunkaddr543 = add i64 %sunkaddr542, 128
  %sunkaddr544 = inttoptr i64 %sunkaddr543 to float addrspace(3)*
  store float %phi989.i, float addrspace(3)* %sunkaddr544, align 4, !alias.scope !70, !noalias !71
  br label %postload991.i

postload991.i:                                    ; preds = %preload990.i, %postload981.i
  br i1 %extract548.i, label %preload1000.i, label %postload1001.i

preload1000.i:                                    ; preds = %postload991.i
  %sunkaddr545 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr546 = mul i64 %757, 4
  %sunkaddr547 = add i64 %sunkaddr545, %sunkaddr546
  %sunkaddr548 = add i64 %sunkaddr547, 128
  %sunkaddr549 = inttoptr i64 %sunkaddr548 to float addrspace(3)*
  store float %phi999.i, float addrspace(3)* %sunkaddr549, align 4, !alias.scope !70, !noalias !71
  br label %postload1001.i

postload1001.i:                                   ; preds = %preload1000.i, %postload991.i
  br i1 %extract549.i, label %preload1010.i, label %post_288.i

preload1010.i:                                    ; preds = %postload1001.i
  %sunkaddr550 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr551 = mul i64 %758, 4
  %sunkaddr552 = add i64 %sunkaddr550, %sunkaddr551
  %sunkaddr553 = add i64 %sunkaddr552, 128
  %sunkaddr554 = inttoptr i64 %sunkaddr553 to float addrspace(3)*
  store float %phi1009.i, float addrspace(3)* %sunkaddr554, align 4, !alias.scope !70, !noalias !71
  br label %post_288.i

post_288.i:                                       ; preds = %preload1010.i, %postload1001.i, %_allOnes286.i
  %loadedValue1897.i = phi i64 [ %loadedValue1905.i, %preload1010.i ], [ %loadedValue1905.i, %postload1001.i ], [ %loadedValue1909.i, %_allOnes286.i ]
  %loadedValue1862.i = phi i64 [ %loadedValue1870.i, %preload1010.i ], [ %loadedValue1870.i, %postload1001.i ], [ %loadedValue1874.i, %_allOnes286.i ]
  %loadedValue1827.i = phi i64 [ %loadedValue1835.i, %preload1010.i ], [ %loadedValue1835.i, %postload1001.i ], [ %loadedValue1839.i, %_allOnes286.i ]
  %loadedValue1792.i = phi i64 [ %loadedValue1800.i, %preload1010.i ], [ %loadedValue1800.i, %postload1001.i ], [ %loadedValue1804.i, %_allOnes286.i ]
  %loadedValue1757.i = phi i64 [ %loadedValue1765.i, %preload1010.i ], [ %loadedValue1765.i, %postload1001.i ], [ %loadedValue1769.i, %_allOnes286.i ]
  %loadedValue1722.i = phi i64 [ %loadedValue1730.i, %preload1010.i ], [ %loadedValue1730.i, %postload1001.i ], [ %loadedValue1734.i, %_allOnes286.i ]
  %loadedValue1687.i = phi i64 [ %loadedValue1695.i, %preload1010.i ], [ %loadedValue1695.i, %postload1001.i ], [ %loadedValue1699.i, %_allOnes286.i ]
  %indvars.iv.next.1566.i = add nsw <8 x i64> %149, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %760 = icmp slt <8 x i64> %indvars.iv.next.1566.i, %vector4592260.1.i
  %761 = trunc <8 x i64> %indvars.iv.next.1566.i to <8 x i32>
  %_to_845671158.i = select <8 x i1> %760, <8 x i32> %_to_4611156.i, <8 x i32> zeroinitializer
  %762 = and <8 x i32> %_to_845671158.i, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %_to_84567.trunc.i = icmp ne <8 x i32> %762, zeroinitializer
  %extract601.i = extractelement <8 x i1> %_to_84567.trunc.i, i32 0
  %extract602.i = extractelement <8 x i1> %_to_84567.trunc.i, i32 1
  %extract603.i = extractelement <8 x i1> %_to_84567.trunc.i, i32 2
  %extract604.i = extractelement <8 x i1> %_to_84567.trunc.i, i32 3
  %extract605.i = extractelement <8 x i1> %_to_84567.trunc.i, i32 4
  %extract606.i = extractelement <8 x i1> %_to_84567.trunc.i, i32 5
  %extract607.i = extractelement <8 x i1> %_to_84567.trunc.i, i32 6
  %extract608.i = extractelement <8 x i1> %_to_84567.trunc.i, i32 7
  %a.i81.i = bitcast <8 x i32> %_to_845671158.i to <4 x i64>
  %res.i82.i = call i32 @llvm.x86.avx.ptestz.256(<4 x i64> %a.i81.i, <4 x i64> %a.i81.i) #5
  %763 = and i32 %res.i82.i, 1
  %zero.i83.i = icmp eq i32 %763, 0
  br i1 %zero.i83.i, label %pre_292.i, label %phi-split-bb27.i

pre_292.i:                                        ; preds = %post_288.i
  %764 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP317.i, i64 %150
  %765 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP317.i, i64 %151
  %766 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP317.i, i64 %152
  %767 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP317.i, i64 %153
  %768 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP317.i, i64 %154
  %769 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP317.i, i64 %155
  %770 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP317.i, i64 %156
  %771 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP317.i, i64 %157
  %res.i79.i = call i32 @llvm.x86.avx.ptestc.256(<4 x i64> %a.i81.i, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>) #5
  %772 = and i32 %res.i79.i, 1
  %one.i80.i = icmp eq i32 %772, 0
  br i1 %one.i80.i, label %886, label %_allOnes291.i

_allOnes291.i:                                    ; preds = %pre_292.i
  %773 = addrspacecast <4 x i32> addrspace(2)* %771 to <4 x i32>*
  %774 = addrspacecast <4 x i32> addrspace(2)* %770 to <4 x i32>*
  %775 = addrspacecast <4 x i32> addrspace(2)* %769 to <4 x i32>*
  %776 = addrspacecast <4 x i32> addrspace(2)* %768 to <4 x i32>*
  %777 = addrspacecast <4 x i32> addrspace(2)* %767 to <4 x i32>*
  %778 = addrspacecast <4 x i32> addrspace(2)* %766 to <4 x i32>*
  %779 = addrspacecast <4 x i32> addrspace(2)* %765 to <4 x i32>*
  %780 = addrspacecast <4 x i32> addrspace(2)* %764 to <4 x i32>*
  %SB_LocalId_Offset2051.i = add nuw i64 %pCurrSBIndex.1.i, 864
  %781 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2051.i
  %pSB_LocalId2052.i = bitcast i8* %781 to <8 x i32>*
  %SB_LocalId_Offset2057.i = add nuw i64 %pCurrSBIndex.1.i, 896
  %782 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2057.i
  %pSB_LocalId2058.i = bitcast i8* %782 to <8 x i32>*
  %SB_LocalId_Offset2063.i = add nuw i64 %pCurrSBIndex.1.i, 928
  %783 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2063.i
  %pSB_LocalId2064.i = bitcast i8* %783 to <8 x i32>*
  %SB_LocalId_Offset2066.i = add nuw i64 %pCurrSBIndex.1.i, 960
  %784 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2066.i
  %pSB_LocalId2067.i = bitcast i8* %784 to <8 x i32>*
  %785 = load <4 x i32>* %780, align 16, !tbaa !72, !noalias !58
  %786 = load <4 x i32>* %776, align 16, !tbaa !72, !noalias !58
  %newShuffle.i66.i = shufflevector <4 x i32> %785, <4 x i32> %786, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %787 = load <4 x i32>* %779, align 16, !tbaa !72, !noalias !58
  %788 = load <4 x i32>* %775, align 16, !tbaa !72, !noalias !58
  %newShuffle1.i67.i = shufflevector <4 x i32> %787, <4 x i32> %788, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %789 = load <4 x i32>* %778, align 16, !tbaa !72, !noalias !58
  %790 = load <4 x i32>* %774, align 16, !tbaa !72, !noalias !58
  %newShuffle2.i68.i = shufflevector <4 x i32> %789, <4 x i32> %790, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %791 = load <4 x i32>* %777, align 16, !tbaa !72, !noalias !58
  %792 = load <4 x i32>* %773, align 16, !tbaa !72, !noalias !58
  %newShuffle3.i69.i = shufflevector <4 x i32> %791, <4 x i32> %792, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %newShuffle4.i70.i = shufflevector <8 x i32> %newShuffle.i66.i, <8 x i32> %newShuffle2.i68.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle5.i71.i = shufflevector <8 x i32> %newShuffle.i66.i, <8 x i32> %newShuffle2.i68.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle6.i72.i = shufflevector <8 x i32> %newShuffle1.i67.i, <8 x i32> %newShuffle3.i69.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle7.i73.i = shufflevector <8 x i32> %newShuffle1.i67.i, <8 x i32> %newShuffle3.i69.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle8.i74.i = shufflevector <8 x i32> %newShuffle4.i70.i, <8 x i32> %newShuffle6.i72.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  store <8 x i32> %newShuffle8.i74.i, <8 x i32>* %pSB_LocalId2052.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle9.i75.i = shufflevector <8 x i32> %newShuffle4.i70.i, <8 x i32> %newShuffle6.i72.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  store <8 x i32> %newShuffle9.i75.i, <8 x i32>* %pSB_LocalId2058.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle10.i76.i = shufflevector <8 x i32> %newShuffle5.i71.i, <8 x i32> %newShuffle7.i73.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  store <8 x i32> %newShuffle10.i76.i, <8 x i32>* %pSB_LocalId2064.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle11.i77.i = shufflevector <8 x i32> %newShuffle5.i71.i, <8 x i32> %newShuffle7.i73.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  store <8 x i32> %newShuffle11.i77.i, <8 x i32>* %pSB_LocalId2067.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %793 = add nsw <8 x i32> %newShuffle8.i74.i, %vector376.i
  %794 = add nsw <8 x i32> %newShuffle9.i75.i, %vector378.i
  %795 = add nsw <8 x i32> %newShuffle10.i76.i, %vector380.i
  %796 = mul nsw <8 x i32> %795, %vector382.i
  %797 = add nsw <8 x i32> %794, %796
  %798 = mul nsw <8 x i32> %797, %vector384.i
  %799 = add nsw <8 x i32> %793, %798
  %800 = shl <8 x i32> %799, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %extract568.i = extractelement <8 x i32> %800, i32 0
  %extract569.i = extractelement <8 x i32> %800, i32 1
  %extract570.i = extractelement <8 x i32> %800, i32 2
  %extract571.i = extractelement <8 x i32> %800, i32 3
  %extract572.i = extractelement <8 x i32> %800, i32 4
  %extract573.i = extractelement <8 x i32> %800, i32 5
  %extract574.i = extractelement <8 x i32> %800, i32 6
  %extract575.i = extractelement <8 x i32> %800, i32 7
  %801 = sext i32 %extract568.i to i64
  %802 = sext i32 %extract569.i to i64
  %803 = sext i32 %extract570.i to i64
  %804 = sext i32 %extract571.i to i64
  %805 = sext i32 %extract572.i to i64
  %806 = sext i32 %extract573.i to i64
  %807 = sext i32 %extract574.i to i64
  %808 = sext i32 %extract575.i to i64
  %809 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %801
  %810 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %802
  %811 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %803
  %812 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %804
  %813 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %805
  %814 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %806
  %815 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %807
  %816 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %808
  %SB_LocalId_Offset1304.i = add nuw i64 %pCurrSBIndex.1.i, 128
  %817 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1304.i
  %pSB_LocalId1305.i = bitcast i8* %817 to <8 x i32>*
  %loadedValue1306.i = load <8 x i32>* %pSB_LocalId1305.i, align 32, !alias.scope !68, !noalias !69
  %818 = add nsw <8 x i32> %loadedValue1306.i, <i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512>
  %SB_LocalId_Offset1374.i = add nuw i64 %pCurrSBIndex.1.i, 192
  %819 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1374.i
  %pSB_LocalId1375.i = bitcast i8* %819 to i64*
  %loadedValue1376.i = load i64* %pSB_LocalId1375.i, align 8, !alias.scope !68, !noalias !69
  %820 = getelementptr inbounds float addrspace(1)* %809, i64 %loadedValue1376.i
  %SB_LocalId_Offset1409.i = add nuw i64 %pCurrSBIndex.1.i, 200
  %821 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1409.i
  %pSB_LocalId1410.i = bitcast i8* %821 to i64*
  %loadedValue1411.i = load i64* %pSB_LocalId1410.i, align 8, !alias.scope !68, !noalias !69
  %822 = getelementptr inbounds float addrspace(1)* %810, i64 %loadedValue1411.i
  %SB_LocalId_Offset1444.i = add nuw i64 %pCurrSBIndex.1.i, 208
  %823 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1444.i
  %pSB_LocalId1445.i = bitcast i8* %823 to i64*
  %loadedValue1446.i = load i64* %pSB_LocalId1445.i, align 8, !alias.scope !68, !noalias !69
  %824 = getelementptr inbounds float addrspace(1)* %811, i64 %loadedValue1446.i
  %SB_LocalId_Offset1479.i = add nuw i64 %pCurrSBIndex.1.i, 216
  %825 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1479.i
  %pSB_LocalId1480.i = bitcast i8* %825 to i64*
  %loadedValue1481.i = load i64* %pSB_LocalId1480.i, align 8, !alias.scope !68, !noalias !69
  %826 = getelementptr inbounds float addrspace(1)* %812, i64 %loadedValue1481.i
  %SB_LocalId_Offset1514.i = add nuw i64 %pCurrSBIndex.1.i, 224
  %827 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1514.i
  %pSB_LocalId1515.i = bitcast i8* %827 to i64*
  %loadedValue1516.i = load i64* %pSB_LocalId1515.i, align 8, !alias.scope !68, !noalias !69
  %828 = getelementptr inbounds float addrspace(1)* %813, i64 %loadedValue1516.i
  %SB_LocalId_Offset1549.i = add nuw i64 %pCurrSBIndex.1.i, 232
  %829 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1549.i
  %pSB_LocalId1550.i = bitcast i8* %829 to i64*
  %loadedValue1551.i = load i64* %pSB_LocalId1550.i, align 8, !alias.scope !68, !noalias !69
  %830 = getelementptr inbounds float addrspace(1)* %814, i64 %loadedValue1551.i
  %SB_LocalId_Offset1584.i = add nuw i64 %pCurrSBIndex.1.i, 240
  %831 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1584.i
  %pSB_LocalId1585.i = bitcast i8* %831 to i64*
  %loadedValue1586.i = load i64* %pSB_LocalId1585.i, align 8, !alias.scope !68, !noalias !69
  %832 = getelementptr inbounds float addrspace(1)* %815, i64 %loadedValue1586.i
  %SB_LocalId_Offset1619.i = add nuw i64 %pCurrSBIndex.1.i, 248
  %833 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1619.i
  %pSB_LocalId1620.i = bitcast i8* %833 to i64*
  %loadedValue1621.i = load i64* %pSB_LocalId1620.i, align 8, !alias.scope !68, !noalias !69
  %834 = getelementptr inbounds float addrspace(1)* %816, i64 %loadedValue1621.i
  %835 = load float addrspace(1)* %820, align 1, !noalias !58
  %836 = load float addrspace(1)* %822, align 1, !noalias !58
  %837 = load float addrspace(1)* %824, align 1, !noalias !58
  %838 = load float addrspace(1)* %826, align 1, !noalias !58
  %839 = load float addrspace(1)* %828, align 1, !noalias !58
  %840 = load float addrspace(1)* %830, align 1, !noalias !58
  %841 = load float addrspace(1)* %832, align 1, !noalias !58
  %842 = load float addrspace(1)* %834, align 1, !noalias !58
  %SB_LocalId_Offset1339.i = add nuw i64 %pCurrSBIndex.1.i, 160
  %843 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1339.i
  %pSB_LocalId1340.i = bitcast i8* %843 to <8 x i32>*
  %loadedValue1341.i = load <8 x i32>* %pSB_LocalId1340.i, align 32, !alias.scope !68, !noalias !69
  %844 = or <8 x i32> %818, %loadedValue1341.i
  %extract576.i = extractelement <8 x i32> %844, i32 0
  %extract577.i = extractelement <8 x i32> %844, i32 1
  %extract578.i = extractelement <8 x i32> %844, i32 2
  %extract579.i = extractelement <8 x i32> %844, i32 3
  %extract580.i = extractelement <8 x i32> %844, i32 4
  %extract581.i = extractelement <8 x i32> %844, i32 5
  %extract582.i = extractelement <8 x i32> %844, i32 6
  %extract583.i = extractelement <8 x i32> %844, i32 7
  %845 = sext i32 %extract576.i to i64
  %846 = sext i32 %extract577.i to i64
  %847 = sext i32 %extract578.i to i64
  %848 = sext i32 %extract579.i to i64
  %849 = sext i32 %extract580.i to i64
  %850 = sext i32 %extract581.i to i64
  %851 = sext i32 %extract582.i to i64
  %852 = sext i32 %extract583.i to i64
  %sunkaddr555 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr556 = mul i64 %845, 4
  %sunkaddr557 = add i64 %sunkaddr555, %sunkaddr556
  %sunkaddr558 = add i64 %sunkaddr557, 128
  %sunkaddr559 = inttoptr i64 %sunkaddr558 to float addrspace(3)*
  store float %835, float addrspace(3)* %sunkaddr559, align 4, !alias.scope !70, !noalias !71
  %sunkaddr560 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr561 = mul i64 %846, 4
  %sunkaddr562 = add i64 %sunkaddr560, %sunkaddr561
  %sunkaddr563 = add i64 %sunkaddr562, 128
  %sunkaddr564 = inttoptr i64 %sunkaddr563 to float addrspace(3)*
  store float %836, float addrspace(3)* %sunkaddr564, align 4, !alias.scope !70, !noalias !71
  %sunkaddr565 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr566 = mul i64 %847, 4
  %sunkaddr567 = add i64 %sunkaddr565, %sunkaddr566
  %sunkaddr568 = add i64 %sunkaddr567, 128
  %sunkaddr569 = inttoptr i64 %sunkaddr568 to float addrspace(3)*
  store float %837, float addrspace(3)* %sunkaddr569, align 4, !alias.scope !70, !noalias !71
  %sunkaddr570 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr571 = mul i64 %848, 4
  %sunkaddr572 = add i64 %sunkaddr570, %sunkaddr571
  %sunkaddr573 = add i64 %sunkaddr572, 128
  %sunkaddr574 = inttoptr i64 %sunkaddr573 to float addrspace(3)*
  store float %838, float addrspace(3)* %sunkaddr574, align 4, !alias.scope !70, !noalias !71
  %sunkaddr575 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr576 = mul i64 %849, 4
  %sunkaddr577 = add i64 %sunkaddr575, %sunkaddr576
  %sunkaddr578 = add i64 %sunkaddr577, 128
  %sunkaddr579 = inttoptr i64 %sunkaddr578 to float addrspace(3)*
  store float %839, float addrspace(3)* %sunkaddr579, align 4, !alias.scope !70, !noalias !71
  %sunkaddr580 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr581 = mul i64 %850, 4
  %sunkaddr582 = add i64 %sunkaddr580, %sunkaddr581
  %sunkaddr583 = add i64 %sunkaddr582, 128
  %sunkaddr584 = inttoptr i64 %sunkaddr583 to float addrspace(3)*
  store float %840, float addrspace(3)* %sunkaddr584, align 4, !alias.scope !70, !noalias !71
  %sunkaddr585 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr586 = mul i64 %851, 4
  %sunkaddr587 = add i64 %sunkaddr585, %sunkaddr586
  %sunkaddr588 = add i64 %sunkaddr587, 128
  %sunkaddr589 = inttoptr i64 %sunkaddr588 to float addrspace(3)*
  store float %841, float addrspace(3)* %sunkaddr589, align 4, !alias.scope !70, !noalias !71
  %sunkaddr590 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr591 = mul i64 %852, 4
  %sunkaddr592 = add i64 %sunkaddr590, %sunkaddr591
  %sunkaddr593 = add i64 %sunkaddr592, 128
  %sunkaddr594 = inttoptr i64 %sunkaddr593 to float addrspace(3)*
  store float %842, float addrspace(3)* %sunkaddr594, align 4, !alias.scope !70, !noalias !71
  %SB_LocalId_Offset1654.i = add nuw i64 %pCurrSBIndex.1.i, 256
  %853 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1654.i
  %pSB_LocalId1655.i = bitcast i8* %853 to i64*
  %loadedValue1656.i = load i64* %pSB_LocalId1655.i, align 8, !alias.scope !68, !noalias !69
  %854 = getelementptr inbounds float addrspace(1)* %809, i64 %loadedValue1656.i
  %SB_LocalId_Offset1689.i = add nuw i64 %pCurrSBIndex.1.i, 264
  %855 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1689.i
  %pSB_LocalId1690.i = bitcast i8* %855 to i64*
  %loadedValue1691.i = load i64* %pSB_LocalId1690.i, align 8, !alias.scope !68, !noalias !69
  %856 = getelementptr inbounds float addrspace(1)* %810, i64 %loadedValue1691.i
  %SB_LocalId_Offset1724.i = add nuw i64 %pCurrSBIndex.1.i, 272
  %857 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1724.i
  %pSB_LocalId1725.i = bitcast i8* %857 to i64*
  %loadedValue1726.i = load i64* %pSB_LocalId1725.i, align 8, !alias.scope !68, !noalias !69
  %858 = getelementptr inbounds float addrspace(1)* %811, i64 %loadedValue1726.i
  %SB_LocalId_Offset1759.i = add nuw i64 %pCurrSBIndex.1.i, 280
  %859 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1759.i
  %pSB_LocalId1760.i = bitcast i8* %859 to i64*
  %loadedValue1761.i = load i64* %pSB_LocalId1760.i, align 8, !alias.scope !68, !noalias !69
  %860 = getelementptr inbounds float addrspace(1)* %812, i64 %loadedValue1761.i
  %SB_LocalId_Offset1794.i = add nuw i64 %pCurrSBIndex.1.i, 288
  %861 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1794.i
  %pSB_LocalId1795.i = bitcast i8* %861 to i64*
  %loadedValue1796.i = load i64* %pSB_LocalId1795.i, align 8, !alias.scope !68, !noalias !69
  %862 = getelementptr inbounds float addrspace(1)* %813, i64 %loadedValue1796.i
  %SB_LocalId_Offset1829.i = add nuw i64 %pCurrSBIndex.1.i, 296
  %863 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1829.i
  %pSB_LocalId1830.i = bitcast i8* %863 to i64*
  %loadedValue1831.i = load i64* %pSB_LocalId1830.i, align 8, !alias.scope !68, !noalias !69
  %864 = getelementptr inbounds float addrspace(1)* %814, i64 %loadedValue1831.i
  %SB_LocalId_Offset1864.i = add nuw i64 %pCurrSBIndex.1.i, 304
  %865 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1864.i
  %pSB_LocalId1865.i = bitcast i8* %865 to i64*
  %loadedValue1866.i = load i64* %pSB_LocalId1865.i, align 8, !alias.scope !68, !noalias !69
  %866 = getelementptr inbounds float addrspace(1)* %815, i64 %loadedValue1866.i
  %SB_LocalId_Offset1899.i = add nuw i64 %pCurrSBIndex.1.i, 312
  %867 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1899.i
  %pSB_LocalId1900.i = bitcast i8* %867 to i64*
  %loadedValue1901.i = load i64* %pSB_LocalId1900.i, align 8, !alias.scope !68, !noalias !69
  %868 = getelementptr inbounds float addrspace(1)* %816, i64 %loadedValue1901.i
  %869 = load float addrspace(1)* %854, align 1, !noalias !58
  %870 = load float addrspace(1)* %856, align 1, !noalias !58
  %871 = load float addrspace(1)* %858, align 1, !noalias !58
  %872 = load float addrspace(1)* %860, align 1, !noalias !58
  %873 = load float addrspace(1)* %862, align 1, !noalias !58
  %874 = load float addrspace(1)* %864, align 1, !noalias !58
  %875 = load float addrspace(1)* %866, align 1, !noalias !58
  %876 = load float addrspace(1)* %868, align 1, !noalias !58
  %877 = or <8 x i32> %844, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %extract584.i = extractelement <8 x i32> %877, i32 0
  %extract585.i = extractelement <8 x i32> %877, i32 1
  %extract586.i = extractelement <8 x i32> %877, i32 2
  %extract587.i = extractelement <8 x i32> %877, i32 3
  %extract588.i = extractelement <8 x i32> %877, i32 4
  %extract589.i = extractelement <8 x i32> %877, i32 5
  %extract590.i = extractelement <8 x i32> %877, i32 6
  %extract591.i = extractelement <8 x i32> %877, i32 7
  %878 = sext i32 %extract584.i to i64
  %879 = sext i32 %extract585.i to i64
  %880 = sext i32 %extract586.i to i64
  %881 = sext i32 %extract587.i to i64
  %882 = sext i32 %extract588.i to i64
  %883 = sext i32 %extract589.i to i64
  %884 = sext i32 %extract590.i to i64
  %885 = sext i32 %extract591.i to i64
  %sunkaddr595 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr596 = mul i64 %878, 4
  %sunkaddr597 = add i64 %sunkaddr595, %sunkaddr596
  %sunkaddr598 = add i64 %sunkaddr597, 128
  %sunkaddr599 = inttoptr i64 %sunkaddr598 to float addrspace(3)*
  store float %869, float addrspace(3)* %sunkaddr599, align 4, !alias.scope !70, !noalias !71
  %sunkaddr600 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr601 = mul i64 %879, 4
  %sunkaddr602 = add i64 %sunkaddr600, %sunkaddr601
  %sunkaddr603 = add i64 %sunkaddr602, 128
  %sunkaddr604 = inttoptr i64 %sunkaddr603 to float addrspace(3)*
  store float %870, float addrspace(3)* %sunkaddr604, align 4, !alias.scope !70, !noalias !71
  %sunkaddr605 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr606 = mul i64 %880, 4
  %sunkaddr607 = add i64 %sunkaddr605, %sunkaddr606
  %sunkaddr608 = add i64 %sunkaddr607, 128
  %sunkaddr609 = inttoptr i64 %sunkaddr608 to float addrspace(3)*
  store float %871, float addrspace(3)* %sunkaddr609, align 4, !alias.scope !70, !noalias !71
  %sunkaddr610 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr611 = mul i64 %881, 4
  %sunkaddr612 = add i64 %sunkaddr610, %sunkaddr611
  %sunkaddr613 = add i64 %sunkaddr612, 128
  %sunkaddr614 = inttoptr i64 %sunkaddr613 to float addrspace(3)*
  store float %872, float addrspace(3)* %sunkaddr614, align 4, !alias.scope !70, !noalias !71
  %sunkaddr615 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr616 = mul i64 %882, 4
  %sunkaddr617 = add i64 %sunkaddr615, %sunkaddr616
  %sunkaddr618 = add i64 %sunkaddr617, 128
  %sunkaddr619 = inttoptr i64 %sunkaddr618 to float addrspace(3)*
  store float %873, float addrspace(3)* %sunkaddr619, align 4, !alias.scope !70, !noalias !71
  %sunkaddr620 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr621 = mul i64 %883, 4
  %sunkaddr622 = add i64 %sunkaddr620, %sunkaddr621
  %sunkaddr623 = add i64 %sunkaddr622, 128
  %sunkaddr624 = inttoptr i64 %sunkaddr623 to float addrspace(3)*
  store float %874, float addrspace(3)* %sunkaddr624, align 4, !alias.scope !70, !noalias !71
  %sunkaddr625 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr626 = mul i64 %884, 4
  %sunkaddr627 = add i64 %sunkaddr625, %sunkaddr626
  %sunkaddr628 = add i64 %sunkaddr627, 128
  %sunkaddr629 = inttoptr i64 %sunkaddr628 to float addrspace(3)*
  store float %875, float addrspace(3)* %sunkaddr629, align 4, !alias.scope !70, !noalias !71
  %sunkaddr630 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr631 = mul i64 %885, 4
  %sunkaddr632 = add i64 %sunkaddr630, %sunkaddr631
  %sunkaddr633 = add i64 %sunkaddr632, 128
  %sunkaddr634 = inttoptr i64 %sunkaddr633 to float addrspace(3)*
  store float %876, float addrspace(3)* %sunkaddr634, align 4, !alias.scope !70, !noalias !71
  br label %post_293.i

; <label>:886                                     ; preds = %pre_292.i
  %887 = bitcast <4 x i32>* %dummy.i132.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %887) #5, !noalias !58
  %888 = bitcast <8 x i32> %_to_845671158.i to <8 x float>
  %889 = call i32 @llvm.x86.avx.movmsk.ps.256(<8 x float> %888) #5
  %890 = and i32 %889, 255
  %891 = icmp eq i32 %890, 255
  br i1 %891, label %892, label %909

; <label>:892                                     ; preds = %886
  %893 = addrspacecast <4 x i32> addrspace(2)* %771 to <4 x i32>*
  %894 = addrspacecast <4 x i32> addrspace(2)* %770 to <4 x i32>*
  %895 = addrspacecast <4 x i32> addrspace(2)* %769 to <4 x i32>*
  %896 = addrspacecast <4 x i32> addrspace(2)* %768 to <4 x i32>*
  %897 = addrspacecast <4 x i32> addrspace(2)* %767 to <4 x i32>*
  %898 = addrspacecast <4 x i32> addrspace(2)* %766 to <4 x i32>*
  %899 = addrspacecast <4 x i32> addrspace(2)* %765 to <4 x i32>*
  %900 = addrspacecast <4 x i32> addrspace(2)* %764 to <4 x i32>*
  %901 = load <4 x i32>* %900, align 16, !tbaa !72, !noalias !58
  %902 = load <4 x i32>* %896, align 16, !tbaa !72, !noalias !58
  %newShuffle.i40.i = shufflevector <4 x i32> %901, <4 x i32> %902, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %903 = load <4 x i32>* %899, align 16, !tbaa !72, !noalias !58
  %904 = load <4 x i32>* %895, align 16, !tbaa !72, !noalias !58
  %newShuffle1.i41.i = shufflevector <4 x i32> %903, <4 x i32> %904, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %905 = load <4 x i32>* %898, align 16, !tbaa !72, !noalias !58
  %906 = load <4 x i32>* %894, align 16, !tbaa !72, !noalias !58
  %newShuffle2.i42.i = shufflevector <4 x i32> %905, <4 x i32> %906, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %907 = load <4 x i32>* %897, align 16, !tbaa !72, !noalias !58
  %908 = load <4 x i32>* %893, align 16, !tbaa !72, !noalias !58
  %newShuffle3.i43.i = shufflevector <4 x i32> %907, <4 x i32> %908, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %newShuffle4.i44.i = shufflevector <8 x i32> %newShuffle.i40.i, <8 x i32> %newShuffle2.i42.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle5.i45.i = shufflevector <8 x i32> %newShuffle.i40.i, <8 x i32> %newShuffle2.i42.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle6.i46.i = shufflevector <8 x i32> %newShuffle1.i41.i, <8 x i32> %newShuffle3.i43.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle7.i47.i = shufflevector <8 x i32> %newShuffle1.i41.i, <8 x i32> %newShuffle3.i43.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle8.i48.i = shufflevector <8 x i32> %newShuffle4.i44.i, <8 x i32> %newShuffle6.i46.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr635 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr636 = add i64 %sunkaddr635, %pCurrSBIndex.1.i
  %sunkaddr637 = add i64 %sunkaddr636, 736
  %sunkaddr638 = inttoptr i64 %sunkaddr637 to <8 x i32>*
  store <8 x i32> %newShuffle8.i48.i, <8 x i32>* %sunkaddr638, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle9.i49.i = shufflevector <8 x i32> %newShuffle4.i44.i, <8 x i32> %newShuffle6.i46.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %sunkaddr639 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr640 = add i64 %sunkaddr639, %pCurrSBIndex.1.i
  %sunkaddr641 = add i64 %sunkaddr640, 768
  %sunkaddr642 = inttoptr i64 %sunkaddr641 to <8 x i32>*
  store <8 x i32> %newShuffle9.i49.i, <8 x i32>* %sunkaddr642, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle10.i50.i = shufflevector <8 x i32> %newShuffle5.i45.i, <8 x i32> %newShuffle7.i47.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr643 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr644 = add i64 %sunkaddr643, %pCurrSBIndex.1.i
  %sunkaddr645 = add i64 %sunkaddr644, 800
  %sunkaddr646 = inttoptr i64 %sunkaddr645 to <8 x i32>*
  store <8 x i32> %newShuffle10.i50.i, <8 x i32>* %sunkaddr646, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle11.i51.i = shufflevector <8 x i32> %newShuffle5.i45.i, <8 x i32> %newShuffle7.i47.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  br label %__ocl_masked_gather_transpose_int_4x8.exit65.i

; <label>:909                                     ; preds = %886
  %910 = addrspacecast <4 x i32> addrspace(2)* %771 to <4 x i32>*
  %911 = addrspacecast <4 x i32> addrspace(2)* %770 to <4 x i32>*
  %912 = addrspacecast <4 x i32> addrspace(2)* %769 to <4 x i32>*
  %913 = addrspacecast <4 x i32> addrspace(2)* %768 to <4 x i32>*
  %914 = addrspacecast <4 x i32> addrspace(2)* %767 to <4 x i32>*
  %915 = addrspacecast <4 x i32> addrspace(2)* %766 to <4 x i32>*
  %916 = addrspacecast <4 x i32> addrspace(2)* %765 to <4 x i32>*
  %917 = addrspacecast <4 x i32> addrspace(2)* %764 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %dummy.i132.i, align 16, !noalias !58
  %918 = extractelement <8 x i32> %_to_845671158.i, i64 0
  %919 = icmp ne i32 %918, 0
  %920 = select i1 %919, <4 x i32>* %917, <4 x i32>* %dummy.i132.i
  %921 = extractelement <8 x i32> %_to_845671158.i, i64 1
  %922 = icmp ne i32 %921, 0
  %923 = select i1 %922, <4 x i32>* %916, <4 x i32>* %dummy.i132.i
  %924 = extractelement <8 x i32> %_to_845671158.i, i64 2
  %925 = icmp ne i32 %924, 0
  %926 = select i1 %925, <4 x i32>* %915, <4 x i32>* %dummy.i132.i
  %927 = extractelement <8 x i32> %_to_845671158.i, i64 3
  %928 = icmp ne i32 %927, 0
  %929 = select i1 %928, <4 x i32>* %914, <4 x i32>* %dummy.i132.i
  %930 = extractelement <8 x i32> %_to_845671158.i, i64 4
  %931 = icmp ne i32 %930, 0
  %932 = select i1 %931, <4 x i32>* %913, <4 x i32>* %dummy.i132.i
  %933 = extractelement <8 x i32> %_to_845671158.i, i64 5
  %934 = icmp ne i32 %933, 0
  %935 = select i1 %934, <4 x i32>* %912, <4 x i32>* %dummy.i132.i
  %936 = extractelement <8 x i32> %_to_845671158.i, i64 6
  %937 = icmp ne i32 %936, 0
  %938 = select i1 %937, <4 x i32>* %911, <4 x i32>* %dummy.i132.i
  %939 = extractelement <8 x i32> %_to_845671158.i, i64 7
  %940 = icmp ne i32 %939, 0
  %941 = select i1 %940, <4 x i32>* %910, <4 x i32>* %dummy.i132.i
  %942 = load <4 x i32>* %920, align 16, !tbaa !72, !noalias !58
  %943 = load <4 x i32>* %932, align 16, !tbaa !72, !noalias !58
  %newShuffle12.i52.i = shufflevector <4 x i32> %942, <4 x i32> %943, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %944 = load <4 x i32>* %923, align 16, !tbaa !72, !noalias !58
  %945 = load <4 x i32>* %935, align 16, !tbaa !72, !noalias !58
  %newShuffle13.i53.i = shufflevector <4 x i32> %944, <4 x i32> %945, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %946 = load <4 x i32>* %926, align 16, !tbaa !72, !noalias !58
  %947 = load <4 x i32>* %938, align 16, !tbaa !72, !noalias !58
  %newShuffle14.i54.i = shufflevector <4 x i32> %946, <4 x i32> %947, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %948 = load <4 x i32>* %929, align 16, !tbaa !72, !noalias !58
  %949 = load <4 x i32>* %941, align 16, !tbaa !72, !noalias !58
  %newShuffle15.i55.i = shufflevector <4 x i32> %948, <4 x i32> %949, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %newShuffle16.i56.i = shufflevector <8 x i32> %newShuffle12.i52.i, <8 x i32> %newShuffle14.i54.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle17.i57.i = shufflevector <8 x i32> %newShuffle12.i52.i, <8 x i32> %newShuffle14.i54.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle18.i58.i = shufflevector <8 x i32> %newShuffle13.i53.i, <8 x i32> %newShuffle15.i55.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle19.i59.i = shufflevector <8 x i32> %newShuffle13.i53.i, <8 x i32> %newShuffle15.i55.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle20.i60.i = shufflevector <8 x i32> %newShuffle16.i56.i, <8 x i32> %newShuffle18.i58.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr647 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr648 = add i64 %sunkaddr647, %pCurrSBIndex.1.i
  %sunkaddr649 = add i64 %sunkaddr648, 736
  %sunkaddr650 = inttoptr i64 %sunkaddr649 to <8 x i32>*
  store <8 x i32> %newShuffle20.i60.i, <8 x i32>* %sunkaddr650, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle21.i61.i = shufflevector <8 x i32> %newShuffle16.i56.i, <8 x i32> %newShuffle18.i58.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %sunkaddr651 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr652 = add i64 %sunkaddr651, %pCurrSBIndex.1.i
  %sunkaddr653 = add i64 %sunkaddr652, 768
  %sunkaddr654 = inttoptr i64 %sunkaddr653 to <8 x i32>*
  store <8 x i32> %newShuffle21.i61.i, <8 x i32>* %sunkaddr654, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle22.i62.i = shufflevector <8 x i32> %newShuffle17.i57.i, <8 x i32> %newShuffle19.i59.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr655 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr656 = add i64 %sunkaddr655, %pCurrSBIndex.1.i
  %sunkaddr657 = add i64 %sunkaddr656, 800
  %sunkaddr658 = inttoptr i64 %sunkaddr657 to <8 x i32>*
  store <8 x i32> %newShuffle22.i62.i, <8 x i32>* %sunkaddr658, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle23.i63.i = shufflevector <8 x i32> %newShuffle17.i57.i, <8 x i32> %newShuffle19.i59.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  br label %__ocl_masked_gather_transpose_int_4x8.exit65.i

__ocl_masked_gather_transpose_int_4x8.exit65.i:   ; preds = %909, %892
  %950 = phi <8 x i32> [ %newShuffle10.i50.i, %892 ], [ %newShuffle22.i62.i, %909 ]
  %951 = phi <8 x i32> [ %newShuffle9.i49.i, %892 ], [ %newShuffle21.i61.i, %909 ]
  %952 = phi <8 x i32> [ %newShuffle8.i48.i, %892 ], [ %newShuffle20.i60.i, %909 ]
  %storemerge.i64.i = phi <8 x i32> [ %newShuffle11.i51.i, %892 ], [ %newShuffle23.i63.i, %909 ]
  %953 = bitcast <4 x i32>* %dummy.i132.i to i8*
  %sunkaddr659 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr660 = add i64 %sunkaddr659, %pCurrSBIndex.1.i
  %sunkaddr661 = add i64 %sunkaddr660, 832
  %sunkaddr662 = inttoptr i64 %sunkaddr661 to <8 x i32>*
  store <8 x i32> %storemerge.i64.i, <8 x i32>* %sunkaddr662, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  call void @llvm.lifetime.end(i64 16, i8* %953) #5, !noalias !58
  %954 = add nsw <8 x i32> %952, %vector376.i
  %955 = add nsw <8 x i32> %951, %vector378.i
  %956 = add nsw <8 x i32> %950, %vector380.i
  %957 = mul nsw <8 x i32> %956, %vector382.i
  %958 = add nsw <8 x i32> %955, %957
  %959 = mul nsw <8 x i32> %958, %vector384.i
  %960 = add nsw <8 x i32> %954, %959
  %961 = shl <8 x i32> %960, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %extract593.i = extractelement <8 x i32> %961, i32 0
  %extract594.i = extractelement <8 x i32> %961, i32 1
  %extract595.i = extractelement <8 x i32> %961, i32 2
  %extract596.i = extractelement <8 x i32> %961, i32 3
  %extract597.i = extractelement <8 x i32> %961, i32 4
  %extract598.i = extractelement <8 x i32> %961, i32 5
  %extract599.i = extractelement <8 x i32> %961, i32 6
  %extract600.i = extractelement <8 x i32> %961, i32 7
  %962 = sext i32 %extract593.i to i64
  %963 = sext i32 %extract594.i to i64
  %964 = sext i32 %extract595.i to i64
  %965 = sext i32 %extract596.i to i64
  %966 = sext i32 %extract597.i to i64
  %967 = sext i32 %extract598.i to i64
  %968 = sext i32 %extract599.i to i64
  %969 = sext i32 %extract600.i to i64
  %970 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %962
  %971 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %963
  %972 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %964
  %973 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %965
  %974 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %966
  %975 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %967
  %976 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %968
  %977 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %969
  %SB_LocalId_Offset1300.i = add nuw i64 %pCurrSBIndex.1.i, 128
  %978 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1300.i
  %pSB_LocalId1301.i = bitcast i8* %978 to <8 x i32>*
  %loadedValue1302.i = load <8 x i32>* %pSB_LocalId1301.i, align 32, !alias.scope !68, !noalias !69
  %979 = add nsw <8 x i32> %loadedValue1302.i, <i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512>
  %SB_LocalId_Offset1405.i = add nuw i64 %pCurrSBIndex.1.i, 200
  %980 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1405.i
  %pSB_LocalId1406.i = bitcast i8* %980 to i64*
  %loadedValue1407.i = load i64* %pSB_LocalId1406.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1440.i = add nuw i64 %pCurrSBIndex.1.i, 208
  %981 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1440.i
  %pSB_LocalId1441.i = bitcast i8* %981 to i64*
  %loadedValue1442.i = load i64* %pSB_LocalId1441.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1475.i = add nuw i64 %pCurrSBIndex.1.i, 216
  %982 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1475.i
  %pSB_LocalId1476.i = bitcast i8* %982 to i64*
  %loadedValue1477.i = load i64* %pSB_LocalId1476.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1510.i = add nuw i64 %pCurrSBIndex.1.i, 224
  %983 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1510.i
  %pSB_LocalId1511.i = bitcast i8* %983 to i64*
  %loadedValue1512.i = load i64* %pSB_LocalId1511.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1545.i = add nuw i64 %pCurrSBIndex.1.i, 232
  %984 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1545.i
  %pSB_LocalId1546.i = bitcast i8* %984 to i64*
  %loadedValue1547.i = load i64* %pSB_LocalId1546.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1580.i = add nuw i64 %pCurrSBIndex.1.i, 240
  %985 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1580.i
  %pSB_LocalId1581.i = bitcast i8* %985 to i64*
  %loadedValue1582.i = load i64* %pSB_LocalId1581.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1615.i = add nuw i64 %pCurrSBIndex.1.i, 248
  %986 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1615.i
  %pSB_LocalId1616.i = bitcast i8* %986 to i64*
  %loadedValue1617.i = load i64* %pSB_LocalId1616.i, align 8, !alias.scope !68, !noalias !69
  br i1 %extract601.i, label %preload892.i, label %postload893.i

preload892.i:                                     ; preds = %__ocl_masked_gather_transpose_int_4x8.exit65.i
  %SB_LocalId_Offset1370.i = add nuw i64 %pCurrSBIndex.1.i, 192
  %987 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1370.i
  %pSB_LocalId1371.i = bitcast i8* %987 to i64*
  %loadedValue1372.i = load i64* %pSB_LocalId1371.i, align 8, !alias.scope !68, !noalias !69
  %988 = getelementptr inbounds float addrspace(1)* %970, i64 %loadedValue1372.i
  %masked_load783.i = load float addrspace(1)* %988, align 1, !noalias !58
  br label %postload893.i

postload893.i:                                    ; preds = %preload892.i, %__ocl_masked_gather_transpose_int_4x8.exit65.i
  %phi894.i = phi float [ 0.000000e+00, %__ocl_masked_gather_transpose_int_4x8.exit65.i ], [ %masked_load783.i, %preload892.i ]
  br i1 %extract602.i, label %preload902.i, label %postload903.i

preload902.i:                                     ; preds = %postload893.i
  %sunkaddr663 = ptrtoint float addrspace(1)* %971 to i64
  %sunkaddr664 = mul i64 %loadedValue1407.i, 4
  %sunkaddr665 = add i64 %sunkaddr663, %sunkaddr664
  %sunkaddr666 = inttoptr i64 %sunkaddr665 to float addrspace(1)*
  %masked_load784.i = load float addrspace(1)* %sunkaddr666, align 1, !noalias !58
  br label %postload903.i

postload903.i:                                    ; preds = %preload902.i, %postload893.i
  %phi904.i = phi float [ 0.000000e+00, %postload893.i ], [ %masked_load784.i, %preload902.i ]
  br i1 %extract603.i, label %preload912.i, label %postload913.i

preload912.i:                                     ; preds = %postload903.i
  %sunkaddr667 = ptrtoint float addrspace(1)* %972 to i64
  %sunkaddr668 = mul i64 %loadedValue1442.i, 4
  %sunkaddr669 = add i64 %sunkaddr667, %sunkaddr668
  %sunkaddr670 = inttoptr i64 %sunkaddr669 to float addrspace(1)*
  %masked_load785.i = load float addrspace(1)* %sunkaddr670, align 1, !noalias !58
  br label %postload913.i

postload913.i:                                    ; preds = %preload912.i, %postload903.i
  %phi914.i = phi float [ 0.000000e+00, %postload903.i ], [ %masked_load785.i, %preload912.i ]
  br i1 %extract604.i, label %preload922.i, label %postload923.i

preload922.i:                                     ; preds = %postload913.i
  %sunkaddr671 = ptrtoint float addrspace(1)* %973 to i64
  %sunkaddr672 = mul i64 %loadedValue1477.i, 4
  %sunkaddr673 = add i64 %sunkaddr671, %sunkaddr672
  %sunkaddr674 = inttoptr i64 %sunkaddr673 to float addrspace(1)*
  %masked_load786.i = load float addrspace(1)* %sunkaddr674, align 1, !noalias !58
  br label %postload923.i

postload923.i:                                    ; preds = %preload922.i, %postload913.i
  %phi924.i = phi float [ 0.000000e+00, %postload913.i ], [ %masked_load786.i, %preload922.i ]
  br i1 %extract605.i, label %preload1012.i, label %postload1013.i

preload1012.i:                                    ; preds = %postload923.i
  %sunkaddr675 = ptrtoint float addrspace(1)* %974 to i64
  %sunkaddr676 = mul i64 %loadedValue1512.i, 4
  %sunkaddr677 = add i64 %sunkaddr675, %sunkaddr676
  %sunkaddr678 = inttoptr i64 %sunkaddr677 to float addrspace(1)*
  %masked_load787.i = load float addrspace(1)* %sunkaddr678, align 1, !noalias !58
  br label %postload1013.i

postload1013.i:                                   ; preds = %preload1012.i, %postload923.i
  %phi1014.i = phi float [ 0.000000e+00, %postload923.i ], [ %masked_load787.i, %preload1012.i ]
  br i1 %extract606.i, label %preload1022.i, label %postload1023.i

preload1022.i:                                    ; preds = %postload1013.i
  %sunkaddr679 = ptrtoint float addrspace(1)* %975 to i64
  %sunkaddr680 = mul i64 %loadedValue1547.i, 4
  %sunkaddr681 = add i64 %sunkaddr679, %sunkaddr680
  %sunkaddr682 = inttoptr i64 %sunkaddr681 to float addrspace(1)*
  %masked_load788.i = load float addrspace(1)* %sunkaddr682, align 1, !noalias !58
  br label %postload1023.i

postload1023.i:                                   ; preds = %preload1022.i, %postload1013.i
  %phi1024.i = phi float [ 0.000000e+00, %postload1013.i ], [ %masked_load788.i, %preload1022.i ]
  br i1 %extract607.i, label %preload1032.i, label %postload1033.i

preload1032.i:                                    ; preds = %postload1023.i
  %sunkaddr683 = ptrtoint float addrspace(1)* %976 to i64
  %sunkaddr684 = mul i64 %loadedValue1582.i, 4
  %sunkaddr685 = add i64 %sunkaddr683, %sunkaddr684
  %sunkaddr686 = inttoptr i64 %sunkaddr685 to float addrspace(1)*
  %masked_load789.i = load float addrspace(1)* %sunkaddr686, align 1, !noalias !58
  br label %postload1033.i

postload1033.i:                                   ; preds = %preload1032.i, %postload1023.i
  %phi1034.i = phi float [ 0.000000e+00, %postload1023.i ], [ %masked_load789.i, %preload1032.i ]
  br i1 %extract608.i, label %preload1042.i, label %postload1043.i

preload1042.i:                                    ; preds = %postload1033.i
  %sunkaddr687 = ptrtoint float addrspace(1)* %977 to i64
  %sunkaddr688 = mul i64 %loadedValue1617.i, 4
  %sunkaddr689 = add i64 %sunkaddr687, %sunkaddr688
  %sunkaddr690 = inttoptr i64 %sunkaddr689 to float addrspace(1)*
  %masked_load790.i = load float addrspace(1)* %sunkaddr690, align 1, !noalias !58
  br label %postload1043.i

postload1043.i:                                   ; preds = %preload1042.i, %postload1033.i
  %phi1044.i = phi float [ 0.000000e+00, %postload1033.i ], [ %masked_load790.i, %preload1042.i ]
  %SB_LocalId_Offset1335.i = add nuw i64 %pCurrSBIndex.1.i, 160
  %989 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1335.i
  %pSB_LocalId1336.i = bitcast i8* %989 to <8 x i32>*
  %loadedValue1337.i = load <8 x i32>* %pSB_LocalId1336.i, align 32, !alias.scope !68, !noalias !69
  %990 = or <8 x i32> %979, %loadedValue1337.i
  %extract610.i = extractelement <8 x i32> %990, i32 1
  %extract611.i = extractelement <8 x i32> %990, i32 2
  %extract612.i = extractelement <8 x i32> %990, i32 3
  %extract613.i = extractelement <8 x i32> %990, i32 4
  %extract614.i = extractelement <8 x i32> %990, i32 5
  %extract615.i = extractelement <8 x i32> %990, i32 6
  %extract616.i = extractelement <8 x i32> %990, i32 7
  %991 = sext i32 %extract610.i to i64
  %992 = sext i32 %extract611.i to i64
  %993 = sext i32 %extract612.i to i64
  %994 = sext i32 %extract613.i to i64
  %995 = sext i32 %extract614.i to i64
  %996 = sext i32 %extract615.i to i64
  %997 = sext i32 %extract616.i to i64
  br i1 %extract601.i, label %preload895.i, label %postload896.i

preload895.i:                                     ; preds = %postload1043.i
  %extract609.i = extractelement <8 x i32> %990, i32 0
  %998 = sext i32 %extract609.i to i64
  %sunkaddr691 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr692 = mul i64 %998, 4
  %sunkaddr693 = add i64 %sunkaddr691, %sunkaddr692
  %sunkaddr694 = add i64 %sunkaddr693, 128
  %sunkaddr695 = inttoptr i64 %sunkaddr694 to float addrspace(3)*
  store float %phi894.i, float addrspace(3)* %sunkaddr695, align 4, !alias.scope !70, !noalias !71
  br label %postload896.i

postload896.i:                                    ; preds = %preload895.i, %postload1043.i
  br i1 %extract602.i, label %preload905.i, label %postload906.i

preload905.i:                                     ; preds = %postload896.i
  %sunkaddr696 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr697 = mul i64 %991, 4
  %sunkaddr698 = add i64 %sunkaddr696, %sunkaddr697
  %sunkaddr699 = add i64 %sunkaddr698, 128
  %sunkaddr700 = inttoptr i64 %sunkaddr699 to float addrspace(3)*
  store float %phi904.i, float addrspace(3)* %sunkaddr700, align 4, !alias.scope !70, !noalias !71
  br label %postload906.i

postload906.i:                                    ; preds = %preload905.i, %postload896.i
  br i1 %extract603.i, label %preload915.i, label %postload916.i

preload915.i:                                     ; preds = %postload906.i
  %sunkaddr701 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr702 = mul i64 %992, 4
  %sunkaddr703 = add i64 %sunkaddr701, %sunkaddr702
  %sunkaddr704 = add i64 %sunkaddr703, 128
  %sunkaddr705 = inttoptr i64 %sunkaddr704 to float addrspace(3)*
  store float %phi914.i, float addrspace(3)* %sunkaddr705, align 4, !alias.scope !70, !noalias !71
  br label %postload916.i

postload916.i:                                    ; preds = %preload915.i, %postload906.i
  br i1 %extract604.i, label %preload925.i, label %postload926.i

preload925.i:                                     ; preds = %postload916.i
  %sunkaddr706 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr707 = mul i64 %993, 4
  %sunkaddr708 = add i64 %sunkaddr706, %sunkaddr707
  %sunkaddr709 = add i64 %sunkaddr708, 128
  %sunkaddr710 = inttoptr i64 %sunkaddr709 to float addrspace(3)*
  store float %phi924.i, float addrspace(3)* %sunkaddr710, align 4, !alias.scope !70, !noalias !71
  br label %postload926.i

postload926.i:                                    ; preds = %preload925.i, %postload916.i
  br i1 %extract605.i, label %preload1015.i, label %postload1016.i

preload1015.i:                                    ; preds = %postload926.i
  %sunkaddr711 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr712 = mul i64 %994, 4
  %sunkaddr713 = add i64 %sunkaddr711, %sunkaddr712
  %sunkaddr714 = add i64 %sunkaddr713, 128
  %sunkaddr715 = inttoptr i64 %sunkaddr714 to float addrspace(3)*
  store float %phi1014.i, float addrspace(3)* %sunkaddr715, align 4, !alias.scope !70, !noalias !71
  br label %postload1016.i

postload1016.i:                                   ; preds = %preload1015.i, %postload926.i
  br i1 %extract606.i, label %preload1025.i, label %postload1026.i

preload1025.i:                                    ; preds = %postload1016.i
  %sunkaddr716 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr717 = mul i64 %995, 4
  %sunkaddr718 = add i64 %sunkaddr716, %sunkaddr717
  %sunkaddr719 = add i64 %sunkaddr718, 128
  %sunkaddr720 = inttoptr i64 %sunkaddr719 to float addrspace(3)*
  store float %phi1024.i, float addrspace(3)* %sunkaddr720, align 4, !alias.scope !70, !noalias !71
  br label %postload1026.i

postload1026.i:                                   ; preds = %preload1025.i, %postload1016.i
  br i1 %extract607.i, label %preload1035.i, label %postload1036.i

preload1035.i:                                    ; preds = %postload1026.i
  %sunkaddr721 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr722 = mul i64 %996, 4
  %sunkaddr723 = add i64 %sunkaddr721, %sunkaddr722
  %sunkaddr724 = add i64 %sunkaddr723, 128
  %sunkaddr725 = inttoptr i64 %sunkaddr724 to float addrspace(3)*
  store float %phi1034.i, float addrspace(3)* %sunkaddr725, align 4, !alias.scope !70, !noalias !71
  br label %postload1036.i

postload1036.i:                                   ; preds = %preload1035.i, %postload1026.i
  br i1 %extract608.i, label %preload1045.i, label %postload1046.i

preload1045.i:                                    ; preds = %postload1036.i
  %sunkaddr726 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr727 = mul i64 %997, 4
  %sunkaddr728 = add i64 %sunkaddr726, %sunkaddr727
  %sunkaddr729 = add i64 %sunkaddr728, 128
  %sunkaddr730 = inttoptr i64 %sunkaddr729 to float addrspace(3)*
  store float %phi1044.i, float addrspace(3)* %sunkaddr730, align 4, !alias.scope !70, !noalias !71
  br label %postload1046.i

postload1046.i:                                   ; preds = %preload1045.i, %postload1036.i
  %SB_LocalId_Offset1685.i = add nuw i64 %pCurrSBIndex.1.i, 264
  %999 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1685.i
  %SB_LocalId_Offset1720.i = add nuw i64 %pCurrSBIndex.1.i, 272
  %1000 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1720.i
  %SB_LocalId_Offset1755.i = add nuw i64 %pCurrSBIndex.1.i, 280
  %1001 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1755.i
  %SB_LocalId_Offset1790.i = add nuw i64 %pCurrSBIndex.1.i, 288
  %1002 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1790.i
  %SB_LocalId_Offset1825.i = add nuw i64 %pCurrSBIndex.1.i, 296
  %1003 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1825.i
  %SB_LocalId_Offset1860.i = add nuw i64 %pCurrSBIndex.1.i, 304
  %1004 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1860.i
  %SB_LocalId_Offset1895.i = add nuw i64 %pCurrSBIndex.1.i, 312
  %1005 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1895.i
  br i1 %extract601.i, label %preload897.i, label %postload898.i

preload897.i:                                     ; preds = %postload1046.i
  %SB_LocalId_Offset1650.i = add nuw i64 %pCurrSBIndex.1.i, 256
  %1006 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1650.i
  %pSB_LocalId1651.i = bitcast i8* %1006 to i64*
  %loadedValue1652.i = load i64* %pSB_LocalId1651.i, align 8, !alias.scope !68, !noalias !69
  %1007 = getelementptr inbounds float addrspace(1)* %970, i64 %loadedValue1652.i
  %masked_load791.i = load float addrspace(1)* %1007, align 1, !noalias !58
  br label %postload898.i

postload898.i:                                    ; preds = %preload897.i, %postload1046.i
  %phi899.i = phi float [ 0.000000e+00, %postload1046.i ], [ %masked_load791.i, %preload897.i ]
  br i1 %extract602.i, label %preload907.i, label %postload908.i

preload907.i:                                     ; preds = %postload898.i
  %sunkaddr731 = ptrtoint float addrspace(1)* %971 to i64
  %sunkaddr732 = mul i64 %loadedValue1687.i, 4
  %sunkaddr733 = add i64 %sunkaddr731, %sunkaddr732
  %sunkaddr734 = inttoptr i64 %sunkaddr733 to float addrspace(1)*
  %masked_load792.i = load float addrspace(1)* %sunkaddr734, align 1, !noalias !58
  br label %postload908.i

postload908.i:                                    ; preds = %preload907.i, %postload898.i
  %phi909.i = phi float [ 0.000000e+00, %postload898.i ], [ %masked_load792.i, %preload907.i ]
  br i1 %extract603.i, label %preload917.i, label %postload918.i

preload917.i:                                     ; preds = %postload908.i
  %sunkaddr735 = ptrtoint float addrspace(1)* %972 to i64
  %sunkaddr736 = mul i64 %loadedValue1722.i, 4
  %sunkaddr737 = add i64 %sunkaddr735, %sunkaddr736
  %sunkaddr738 = inttoptr i64 %sunkaddr737 to float addrspace(1)*
  %masked_load793.i = load float addrspace(1)* %sunkaddr738, align 1, !noalias !58
  br label %postload918.i

postload918.i:                                    ; preds = %preload917.i, %postload908.i
  %phi919.i = phi float [ 0.000000e+00, %postload908.i ], [ %masked_load793.i, %preload917.i ]
  br i1 %extract604.i, label %preload927.i, label %postload928.i

preload927.i:                                     ; preds = %postload918.i
  %sunkaddr739 = ptrtoint float addrspace(1)* %973 to i64
  %sunkaddr740 = mul i64 %loadedValue1757.i, 4
  %sunkaddr741 = add i64 %sunkaddr739, %sunkaddr740
  %sunkaddr742 = inttoptr i64 %sunkaddr741 to float addrspace(1)*
  %masked_load794.i = load float addrspace(1)* %sunkaddr742, align 1, !noalias !58
  br label %postload928.i

postload928.i:                                    ; preds = %preload927.i, %postload918.i
  %phi929.i = phi float [ 0.000000e+00, %postload918.i ], [ %masked_load794.i, %preload927.i ]
  br i1 %extract605.i, label %preload1017.i, label %postload1018.i

preload1017.i:                                    ; preds = %postload928.i
  %sunkaddr743 = ptrtoint float addrspace(1)* %974 to i64
  %sunkaddr744 = mul i64 %loadedValue1792.i, 4
  %sunkaddr745 = add i64 %sunkaddr743, %sunkaddr744
  %sunkaddr746 = inttoptr i64 %sunkaddr745 to float addrspace(1)*
  %masked_load795.i = load float addrspace(1)* %sunkaddr746, align 1, !noalias !58
  br label %postload1018.i

postload1018.i:                                   ; preds = %preload1017.i, %postload928.i
  %phi1019.i = phi float [ 0.000000e+00, %postload928.i ], [ %masked_load795.i, %preload1017.i ]
  br i1 %extract606.i, label %preload1027.i, label %postload1028.i

preload1027.i:                                    ; preds = %postload1018.i
  %sunkaddr747 = ptrtoint float addrspace(1)* %975 to i64
  %sunkaddr748 = mul i64 %loadedValue1827.i, 4
  %sunkaddr749 = add i64 %sunkaddr747, %sunkaddr748
  %sunkaddr750 = inttoptr i64 %sunkaddr749 to float addrspace(1)*
  %masked_load796.i = load float addrspace(1)* %sunkaddr750, align 1, !noalias !58
  br label %postload1028.i

postload1028.i:                                   ; preds = %preload1027.i, %postload1018.i
  %phi1029.i = phi float [ 0.000000e+00, %postload1018.i ], [ %masked_load796.i, %preload1027.i ]
  br i1 %extract607.i, label %preload1037.i, label %postload1038.i

preload1037.i:                                    ; preds = %postload1028.i
  %sunkaddr751 = ptrtoint float addrspace(1)* %976 to i64
  %sunkaddr752 = mul i64 %loadedValue1862.i, 4
  %sunkaddr753 = add i64 %sunkaddr751, %sunkaddr752
  %sunkaddr754 = inttoptr i64 %sunkaddr753 to float addrspace(1)*
  %masked_load797.i = load float addrspace(1)* %sunkaddr754, align 1, !noalias !58
  br label %postload1038.i

postload1038.i:                                   ; preds = %preload1037.i, %postload1028.i
  %phi1039.i = phi float [ 0.000000e+00, %postload1028.i ], [ %masked_load797.i, %preload1037.i ]
  br i1 %extract608.i, label %preload1047.i, label %postload1048.i

preload1047.i:                                    ; preds = %postload1038.i
  %sunkaddr755 = ptrtoint float addrspace(1)* %977 to i64
  %sunkaddr756 = mul i64 %loadedValue1897.i, 4
  %sunkaddr757 = add i64 %sunkaddr755, %sunkaddr756
  %sunkaddr758 = inttoptr i64 %sunkaddr757 to float addrspace(1)*
  %masked_load798.i = load float addrspace(1)* %sunkaddr758, align 1, !noalias !58
  br label %postload1048.i

postload1048.i:                                   ; preds = %preload1047.i, %postload1038.i
  %phi1049.i = phi float [ 0.000000e+00, %postload1038.i ], [ %masked_load798.i, %preload1047.i ]
  %1008 = or <8 x i32> %990, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %extract618.i = extractelement <8 x i32> %1008, i32 1
  %extract619.i = extractelement <8 x i32> %1008, i32 2
  %extract620.i = extractelement <8 x i32> %1008, i32 3
  %extract621.i = extractelement <8 x i32> %1008, i32 4
  %extract622.i = extractelement <8 x i32> %1008, i32 5
  %extract623.i = extractelement <8 x i32> %1008, i32 6
  %extract624.i = extractelement <8 x i32> %1008, i32 7
  %1009 = sext i32 %extract618.i to i64
  %1010 = sext i32 %extract619.i to i64
  %1011 = sext i32 %extract620.i to i64
  %1012 = sext i32 %extract621.i to i64
  %1013 = sext i32 %extract622.i to i64
  %1014 = sext i32 %extract623.i to i64
  %1015 = sext i32 %extract624.i to i64
  br i1 %extract601.i, label %preload900.i, label %postload901.i

preload900.i:                                     ; preds = %postload1048.i
  %extract617.i = extractelement <8 x i32> %1008, i32 0
  %1016 = sext i32 %extract617.i to i64
  %sunkaddr759 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr760 = mul i64 %1016, 4
  %sunkaddr761 = add i64 %sunkaddr759, %sunkaddr760
  %sunkaddr762 = add i64 %sunkaddr761, 128
  %sunkaddr763 = inttoptr i64 %sunkaddr762 to float addrspace(3)*
  store float %phi899.i, float addrspace(3)* %sunkaddr763, align 4, !alias.scope !70, !noalias !71
  br label %postload901.i

postload901.i:                                    ; preds = %preload900.i, %postload1048.i
  br i1 %extract602.i, label %preload910.i, label %postload911.i

preload910.i:                                     ; preds = %postload901.i
  %sunkaddr764 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr765 = mul i64 %1009, 4
  %sunkaddr766 = add i64 %sunkaddr764, %sunkaddr765
  %sunkaddr767 = add i64 %sunkaddr766, 128
  %sunkaddr768 = inttoptr i64 %sunkaddr767 to float addrspace(3)*
  store float %phi909.i, float addrspace(3)* %sunkaddr768, align 4, !alias.scope !70, !noalias !71
  br label %postload911.i

postload911.i:                                    ; preds = %preload910.i, %postload901.i
  br i1 %extract603.i, label %preload920.i, label %postload921.i

preload920.i:                                     ; preds = %postload911.i
  %sunkaddr769 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr770 = mul i64 %1010, 4
  %sunkaddr771 = add i64 %sunkaddr769, %sunkaddr770
  %sunkaddr772 = add i64 %sunkaddr771, 128
  %sunkaddr773 = inttoptr i64 %sunkaddr772 to float addrspace(3)*
  store float %phi919.i, float addrspace(3)* %sunkaddr773, align 4, !alias.scope !70, !noalias !71
  br label %postload921.i

postload921.i:                                    ; preds = %preload920.i, %postload911.i
  br i1 %extract604.i, label %preload930.i, label %postload931.i

preload930.i:                                     ; preds = %postload921.i
  %sunkaddr774 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr775 = mul i64 %1011, 4
  %sunkaddr776 = add i64 %sunkaddr774, %sunkaddr775
  %sunkaddr777 = add i64 %sunkaddr776, 128
  %sunkaddr778 = inttoptr i64 %sunkaddr777 to float addrspace(3)*
  store float %phi929.i, float addrspace(3)* %sunkaddr778, align 4, !alias.scope !70, !noalias !71
  br label %postload931.i

postload931.i:                                    ; preds = %preload930.i, %postload921.i
  br i1 %extract605.i, label %preload1020.i, label %postload1021.i

preload1020.i:                                    ; preds = %postload931.i
  %sunkaddr779 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr780 = mul i64 %1012, 4
  %sunkaddr781 = add i64 %sunkaddr779, %sunkaddr780
  %sunkaddr782 = add i64 %sunkaddr781, 128
  %sunkaddr783 = inttoptr i64 %sunkaddr782 to float addrspace(3)*
  store float %phi1019.i, float addrspace(3)* %sunkaddr783, align 4, !alias.scope !70, !noalias !71
  br label %postload1021.i

postload1021.i:                                   ; preds = %preload1020.i, %postload931.i
  br i1 %extract606.i, label %preload1030.i, label %postload1031.i

preload1030.i:                                    ; preds = %postload1021.i
  %sunkaddr784 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr785 = mul i64 %1013, 4
  %sunkaddr786 = add i64 %sunkaddr784, %sunkaddr785
  %sunkaddr787 = add i64 %sunkaddr786, 128
  %sunkaddr788 = inttoptr i64 %sunkaddr787 to float addrspace(3)*
  store float %phi1029.i, float addrspace(3)* %sunkaddr788, align 4, !alias.scope !70, !noalias !71
  br label %postload1031.i

postload1031.i:                                   ; preds = %preload1030.i, %postload1021.i
  br i1 %extract607.i, label %preload1040.i, label %postload1041.i

preload1040.i:                                    ; preds = %postload1031.i
  %sunkaddr789 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr790 = mul i64 %1014, 4
  %sunkaddr791 = add i64 %sunkaddr789, %sunkaddr790
  %sunkaddr792 = add i64 %sunkaddr791, 128
  %sunkaddr793 = inttoptr i64 %sunkaddr792 to float addrspace(3)*
  store float %phi1039.i, float addrspace(3)* %sunkaddr793, align 4, !alias.scope !70, !noalias !71
  br label %postload1041.i

postload1041.i:                                   ; preds = %preload1040.i, %postload1031.i
  br i1 %extract608.i, label %preload1050.i, label %post_293.i

preload1050.i:                                    ; preds = %postload1041.i
  %sunkaddr794 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr795 = mul i64 %1015, 4
  %sunkaddr796 = add i64 %sunkaddr794, %sunkaddr795
  %sunkaddr797 = add i64 %sunkaddr796, 128
  %sunkaddr798 = inttoptr i64 %sunkaddr797 to float addrspace(3)*
  store float %phi1049.i, float addrspace(3)* %sunkaddr798, align 4, !alias.scope !70, !noalias !71
  br label %post_293.i

post_293.i:                                       ; preds = %preload1050.i, %postload1041.i, %_allOnes291.i
  %loadedValue1889.i = phi i64 [ %loadedValue1897.i, %preload1050.i ], [ %loadedValue1897.i, %postload1041.i ], [ %loadedValue1901.i, %_allOnes291.i ]
  %loadedValue1854.i = phi i64 [ %loadedValue1862.i, %preload1050.i ], [ %loadedValue1862.i, %postload1041.i ], [ %loadedValue1866.i, %_allOnes291.i ]
  %loadedValue1819.i = phi i64 [ %loadedValue1827.i, %preload1050.i ], [ %loadedValue1827.i, %postload1041.i ], [ %loadedValue1831.i, %_allOnes291.i ]
  %loadedValue1784.i = phi i64 [ %loadedValue1792.i, %preload1050.i ], [ %loadedValue1792.i, %postload1041.i ], [ %loadedValue1796.i, %_allOnes291.i ]
  %loadedValue1749.i = phi i64 [ %loadedValue1757.i, %preload1050.i ], [ %loadedValue1757.i, %postload1041.i ], [ %loadedValue1761.i, %_allOnes291.i ]
  %loadedValue1714.i = phi i64 [ %loadedValue1722.i, %preload1050.i ], [ %loadedValue1722.i, %postload1041.i ], [ %loadedValue1726.i, %_allOnes291.i ]
  %loadedValue1679.i = phi i64 [ %loadedValue1687.i, %preload1050.i ], [ %loadedValue1687.i, %postload1041.i ], [ %loadedValue1691.i, %_allOnes291.i ]
  %indvars.iv.next.2625.i = add nsw <8 x i64> %149, <i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24, i64 24>
  %1017 = icmp slt <8 x i64> %indvars.iv.next.2625.i, %vector4592260.1.i
  %1018 = trunc <8 x i64> %indvars.iv.next.2625.i to <8 x i32>
  %_to_886261160.i = select <8 x i1> %1017, <8 x i32> %_to_845671158.i, <8 x i32> zeroinitializer
  %1019 = and <8 x i32> %_to_886261160.i, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %_to_88626.trunc.i = icmp ne <8 x i32> %1019, zeroinitializer
  %extract660.i = extractelement <8 x i1> %_to_88626.trunc.i, i32 0
  %extract661.i = extractelement <8 x i1> %_to_88626.trunc.i, i32 1
  %extract662.i = extractelement <8 x i1> %_to_88626.trunc.i, i32 2
  %extract663.i = extractelement <8 x i1> %_to_88626.trunc.i, i32 3
  %extract664.i = extractelement <8 x i1> %_to_88626.trunc.i, i32 4
  %extract665.i = extractelement <8 x i1> %_to_88626.trunc.i, i32 5
  %extract666.i = extractelement <8 x i1> %_to_88626.trunc.i, i32 6
  %extract667.i = extractelement <8 x i1> %_to_88626.trunc.i, i32 7
  %a.i36.i = bitcast <8 x i32> %_to_886261160.i to <4 x i64>
  %res.i37.i = call i32 @llvm.x86.avx.ptestz.256(<4 x i64> %a.i36.i, <4 x i64> %a.i36.i) #5
  %1020 = and i32 %res.i37.i, 1
  %zero.i38.i = icmp eq i32 %1020, 0
  br i1 %zero.i38.i, label %pre_297.i, label %phi-split-bb.i

pre_297.i:                                        ; preds = %post_293.i
  %1021 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP325.i, i64 %150
  %1022 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP325.i, i64 %151
  %1023 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP325.i, i64 %152
  %1024 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP325.i, i64 %153
  %1025 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP325.i, i64 %154
  %1026 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP325.i, i64 %155
  %1027 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP325.i, i64 %156
  %1028 = getelementptr inbounds <4 x i32> addrspace(2)* %uniformGEP325.i, i64 %157
  %res.i35.i = call i32 @llvm.x86.avx.ptestc.256(<4 x i64> %a.i36.i, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>) #5
  %1029 = and i32 %res.i35.i, 1
  %one.i.i = icmp eq i32 %1029, 0
  br i1 %one.i.i, label %1143, label %_allOnes296.i

_allOnes296.i:                                    ; preds = %pre_297.i
  %1030 = addrspacecast <4 x i32> addrspace(2)* %1028 to <4 x i32>*
  %1031 = addrspacecast <4 x i32> addrspace(2)* %1027 to <4 x i32>*
  %1032 = addrspacecast <4 x i32> addrspace(2)* %1026 to <4 x i32>*
  %1033 = addrspacecast <4 x i32> addrspace(2)* %1025 to <4 x i32>*
  %1034 = addrspacecast <4 x i32> addrspace(2)* %1024 to <4 x i32>*
  %1035 = addrspacecast <4 x i32> addrspace(2)* %1023 to <4 x i32>*
  %1036 = addrspacecast <4 x i32> addrspace(2)* %1022 to <4 x i32>*
  %1037 = addrspacecast <4 x i32> addrspace(2)* %1021 to <4 x i32>*
  %SB_LocalId_Offset2009.i = add nuw i64 %pCurrSBIndex.1.i, 608
  %1038 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2009.i
  %pSB_LocalId2010.i = bitcast i8* %1038 to <8 x i32>*
  %SB_LocalId_Offset2015.i = add nuw i64 %pCurrSBIndex.1.i, 640
  %1039 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2015.i
  %pSB_LocalId2016.i = bitcast i8* %1039 to <8 x i32>*
  %SB_LocalId_Offset2021.i = add nuw i64 %pCurrSBIndex.1.i, 672
  %1040 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2021.i
  %pSB_LocalId2022.i = bitcast i8* %1040 to <8 x i32>*
  %SB_LocalId_Offset2024.i = add nuw i64 %pCurrSBIndex.1.i, 704
  %1041 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset2024.i
  %pSB_LocalId2025.i = bitcast i8* %1041 to <8 x i32>*
  %1042 = load <4 x i32>* %1037, align 16, !tbaa !72, !noalias !58
  %1043 = load <4 x i32>* %1033, align 16, !tbaa !72, !noalias !58
  %newShuffle.i22.i = shufflevector <4 x i32> %1042, <4 x i32> %1043, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %1044 = load <4 x i32>* %1036, align 16, !tbaa !72, !noalias !58
  %1045 = load <4 x i32>* %1032, align 16, !tbaa !72, !noalias !58
  %newShuffle1.i23.i = shufflevector <4 x i32> %1044, <4 x i32> %1045, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %1046 = load <4 x i32>* %1035, align 16, !tbaa !72, !noalias !58
  %1047 = load <4 x i32>* %1031, align 16, !tbaa !72, !noalias !58
  %newShuffle2.i24.i = shufflevector <4 x i32> %1046, <4 x i32> %1047, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %1048 = load <4 x i32>* %1034, align 16, !tbaa !72, !noalias !58
  %1049 = load <4 x i32>* %1030, align 16, !tbaa !72, !noalias !58
  %newShuffle3.i25.i = shufflevector <4 x i32> %1048, <4 x i32> %1049, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %newShuffle4.i26.i = shufflevector <8 x i32> %newShuffle.i22.i, <8 x i32> %newShuffle2.i24.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle5.i27.i = shufflevector <8 x i32> %newShuffle.i22.i, <8 x i32> %newShuffle2.i24.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle6.i28.i = shufflevector <8 x i32> %newShuffle1.i23.i, <8 x i32> %newShuffle3.i25.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle7.i29.i = shufflevector <8 x i32> %newShuffle1.i23.i, <8 x i32> %newShuffle3.i25.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle8.i30.i = shufflevector <8 x i32> %newShuffle4.i26.i, <8 x i32> %newShuffle6.i28.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  store <8 x i32> %newShuffle8.i30.i, <8 x i32>* %pSB_LocalId2010.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle9.i31.i = shufflevector <8 x i32> %newShuffle4.i26.i, <8 x i32> %newShuffle6.i28.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  store <8 x i32> %newShuffle9.i31.i, <8 x i32>* %pSB_LocalId2016.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle10.i32.i = shufflevector <8 x i32> %newShuffle5.i27.i, <8 x i32> %newShuffle7.i29.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  store <8 x i32> %newShuffle10.i32.i, <8 x i32>* %pSB_LocalId2022.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle11.i33.i = shufflevector <8 x i32> %newShuffle5.i27.i, <8 x i32> %newShuffle7.i29.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  store <8 x i32> %newShuffle11.i33.i, <8 x i32>* %pSB_LocalId2025.i, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %1050 = add nsw <8 x i32> %newShuffle8.i30.i, %vector376.i
  %1051 = add nsw <8 x i32> %newShuffle9.i31.i, %vector378.i
  %1052 = add nsw <8 x i32> %newShuffle10.i32.i, %vector380.i
  %1053 = mul nsw <8 x i32> %1052, %vector382.i
  %1054 = add nsw <8 x i32> %1051, %1053
  %1055 = mul nsw <8 x i32> %1054, %vector384.i
  %1056 = add nsw <8 x i32> %1050, %1055
  %1057 = shl <8 x i32> %1056, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %extract627.i = extractelement <8 x i32> %1057, i32 0
  %extract628.i = extractelement <8 x i32> %1057, i32 1
  %extract629.i = extractelement <8 x i32> %1057, i32 2
  %extract630.i = extractelement <8 x i32> %1057, i32 3
  %extract631.i = extractelement <8 x i32> %1057, i32 4
  %extract632.i = extractelement <8 x i32> %1057, i32 5
  %extract633.i = extractelement <8 x i32> %1057, i32 6
  %extract634.i = extractelement <8 x i32> %1057, i32 7
  %1058 = sext i32 %extract627.i to i64
  %1059 = sext i32 %extract628.i to i64
  %1060 = sext i32 %extract629.i to i64
  %1061 = sext i32 %extract630.i to i64
  %1062 = sext i32 %extract631.i to i64
  %1063 = sext i32 %extract632.i to i64
  %1064 = sext i32 %extract633.i to i64
  %1065 = sext i32 %extract634.i to i64
  %1066 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1058
  %1067 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1059
  %1068 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1060
  %1069 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1061
  %1070 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1062
  %1071 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1063
  %1072 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1064
  %1073 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1065
  %SB_LocalId_Offset1296.i = add nuw i64 %pCurrSBIndex.1.i, 128
  %1074 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1296.i
  %pSB_LocalId1297.i = bitcast i8* %1074 to <8 x i32>*
  %loadedValue1298.i = load <8 x i32>* %pSB_LocalId1297.i, align 32, !alias.scope !68, !noalias !69
  %1075 = add nsw <8 x i32> %loadedValue1298.i, <i32 768, i32 768, i32 768, i32 768, i32 768, i32 768, i32 768, i32 768>
  %SB_LocalId_Offset1366.i = add nuw i64 %pCurrSBIndex.1.i, 192
  %1076 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1366.i
  %pSB_LocalId1367.i = bitcast i8* %1076 to i64*
  %loadedValue1368.i = load i64* %pSB_LocalId1367.i, align 8, !alias.scope !68, !noalias !69
  %1077 = getelementptr inbounds float addrspace(1)* %1066, i64 %loadedValue1368.i
  %SB_LocalId_Offset1401.i = add nuw i64 %pCurrSBIndex.1.i, 200
  %1078 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1401.i
  %pSB_LocalId1402.i = bitcast i8* %1078 to i64*
  %loadedValue1403.i = load i64* %pSB_LocalId1402.i, align 8, !alias.scope !68, !noalias !69
  %1079 = getelementptr inbounds float addrspace(1)* %1067, i64 %loadedValue1403.i
  %SB_LocalId_Offset1436.i = add nuw i64 %pCurrSBIndex.1.i, 208
  %1080 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1436.i
  %pSB_LocalId1437.i = bitcast i8* %1080 to i64*
  %loadedValue1438.i = load i64* %pSB_LocalId1437.i, align 8, !alias.scope !68, !noalias !69
  %1081 = getelementptr inbounds float addrspace(1)* %1068, i64 %loadedValue1438.i
  %SB_LocalId_Offset1471.i = add nuw i64 %pCurrSBIndex.1.i, 216
  %1082 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1471.i
  %pSB_LocalId1472.i = bitcast i8* %1082 to i64*
  %loadedValue1473.i = load i64* %pSB_LocalId1472.i, align 8, !alias.scope !68, !noalias !69
  %1083 = getelementptr inbounds float addrspace(1)* %1069, i64 %loadedValue1473.i
  %SB_LocalId_Offset1506.i = add nuw i64 %pCurrSBIndex.1.i, 224
  %1084 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1506.i
  %pSB_LocalId1507.i = bitcast i8* %1084 to i64*
  %loadedValue1508.i = load i64* %pSB_LocalId1507.i, align 8, !alias.scope !68, !noalias !69
  %1085 = getelementptr inbounds float addrspace(1)* %1070, i64 %loadedValue1508.i
  %SB_LocalId_Offset1541.i = add nuw i64 %pCurrSBIndex.1.i, 232
  %1086 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1541.i
  %pSB_LocalId1542.i = bitcast i8* %1086 to i64*
  %loadedValue1543.i = load i64* %pSB_LocalId1542.i, align 8, !alias.scope !68, !noalias !69
  %1087 = getelementptr inbounds float addrspace(1)* %1071, i64 %loadedValue1543.i
  %SB_LocalId_Offset1576.i = add nuw i64 %pCurrSBIndex.1.i, 240
  %1088 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1576.i
  %pSB_LocalId1577.i = bitcast i8* %1088 to i64*
  %loadedValue1578.i = load i64* %pSB_LocalId1577.i, align 8, !alias.scope !68, !noalias !69
  %1089 = getelementptr inbounds float addrspace(1)* %1072, i64 %loadedValue1578.i
  %SB_LocalId_Offset1611.i = add nuw i64 %pCurrSBIndex.1.i, 248
  %1090 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1611.i
  %pSB_LocalId1612.i = bitcast i8* %1090 to i64*
  %loadedValue1613.i = load i64* %pSB_LocalId1612.i, align 8, !alias.scope !68, !noalias !69
  %1091 = getelementptr inbounds float addrspace(1)* %1073, i64 %loadedValue1613.i
  %1092 = load float addrspace(1)* %1077, align 1, !noalias !58
  %1093 = load float addrspace(1)* %1079, align 1, !noalias !58
  %1094 = load float addrspace(1)* %1081, align 1, !noalias !58
  %1095 = load float addrspace(1)* %1083, align 1, !noalias !58
  %1096 = load float addrspace(1)* %1085, align 1, !noalias !58
  %1097 = load float addrspace(1)* %1087, align 1, !noalias !58
  %1098 = load float addrspace(1)* %1089, align 1, !noalias !58
  %1099 = load float addrspace(1)* %1091, align 1, !noalias !58
  %SB_LocalId_Offset1331.i = add nuw i64 %pCurrSBIndex.1.i, 160
  %1100 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1331.i
  %pSB_LocalId1332.i = bitcast i8* %1100 to <8 x i32>*
  %loadedValue1333.i = load <8 x i32>* %pSB_LocalId1332.i, align 32, !alias.scope !68, !noalias !69
  %1101 = or <8 x i32> %1075, %loadedValue1333.i
  %extract635.i = extractelement <8 x i32> %1101, i32 0
  %extract636.i = extractelement <8 x i32> %1101, i32 1
  %extract637.i = extractelement <8 x i32> %1101, i32 2
  %extract638.i = extractelement <8 x i32> %1101, i32 3
  %extract639.i = extractelement <8 x i32> %1101, i32 4
  %extract640.i = extractelement <8 x i32> %1101, i32 5
  %extract641.i = extractelement <8 x i32> %1101, i32 6
  %extract642.i = extractelement <8 x i32> %1101, i32 7
  %1102 = sext i32 %extract635.i to i64
  %1103 = sext i32 %extract636.i to i64
  %1104 = sext i32 %extract637.i to i64
  %1105 = sext i32 %extract638.i to i64
  %1106 = sext i32 %extract639.i to i64
  %1107 = sext i32 %extract640.i to i64
  %1108 = sext i32 %extract641.i to i64
  %1109 = sext i32 %extract642.i to i64
  %sunkaddr799 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr800 = mul i64 %1102, 4
  %sunkaddr801 = add i64 %sunkaddr799, %sunkaddr800
  %sunkaddr802 = add i64 %sunkaddr801, 128
  %sunkaddr803 = inttoptr i64 %sunkaddr802 to float addrspace(3)*
  store float %1092, float addrspace(3)* %sunkaddr803, align 4, !alias.scope !70, !noalias !71
  %sunkaddr804 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr805 = mul i64 %1103, 4
  %sunkaddr806 = add i64 %sunkaddr804, %sunkaddr805
  %sunkaddr807 = add i64 %sunkaddr806, 128
  %sunkaddr808 = inttoptr i64 %sunkaddr807 to float addrspace(3)*
  store float %1093, float addrspace(3)* %sunkaddr808, align 4, !alias.scope !70, !noalias !71
  %sunkaddr809 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr810 = mul i64 %1104, 4
  %sunkaddr811 = add i64 %sunkaddr809, %sunkaddr810
  %sunkaddr812 = add i64 %sunkaddr811, 128
  %sunkaddr813 = inttoptr i64 %sunkaddr812 to float addrspace(3)*
  store float %1094, float addrspace(3)* %sunkaddr813, align 4, !alias.scope !70, !noalias !71
  %sunkaddr814 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr815 = mul i64 %1105, 4
  %sunkaddr816 = add i64 %sunkaddr814, %sunkaddr815
  %sunkaddr817 = add i64 %sunkaddr816, 128
  %sunkaddr818 = inttoptr i64 %sunkaddr817 to float addrspace(3)*
  store float %1095, float addrspace(3)* %sunkaddr818, align 4, !alias.scope !70, !noalias !71
  %sunkaddr819 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr820 = mul i64 %1106, 4
  %sunkaddr821 = add i64 %sunkaddr819, %sunkaddr820
  %sunkaddr822 = add i64 %sunkaddr821, 128
  %sunkaddr823 = inttoptr i64 %sunkaddr822 to float addrspace(3)*
  store float %1096, float addrspace(3)* %sunkaddr823, align 4, !alias.scope !70, !noalias !71
  %sunkaddr824 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr825 = mul i64 %1107, 4
  %sunkaddr826 = add i64 %sunkaddr824, %sunkaddr825
  %sunkaddr827 = add i64 %sunkaddr826, 128
  %sunkaddr828 = inttoptr i64 %sunkaddr827 to float addrspace(3)*
  store float %1097, float addrspace(3)* %sunkaddr828, align 4, !alias.scope !70, !noalias !71
  %sunkaddr829 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr830 = mul i64 %1108, 4
  %sunkaddr831 = add i64 %sunkaddr829, %sunkaddr830
  %sunkaddr832 = add i64 %sunkaddr831, 128
  %sunkaddr833 = inttoptr i64 %sunkaddr832 to float addrspace(3)*
  store float %1098, float addrspace(3)* %sunkaddr833, align 4, !alias.scope !70, !noalias !71
  %sunkaddr834 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr835 = mul i64 %1109, 4
  %sunkaddr836 = add i64 %sunkaddr834, %sunkaddr835
  %sunkaddr837 = add i64 %sunkaddr836, 128
  %sunkaddr838 = inttoptr i64 %sunkaddr837 to float addrspace(3)*
  store float %1099, float addrspace(3)* %sunkaddr838, align 4, !alias.scope !70, !noalias !71
  %SB_LocalId_Offset1646.i = add nuw i64 %pCurrSBIndex.1.i, 256
  %1110 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1646.i
  %pSB_LocalId1647.i = bitcast i8* %1110 to i64*
  %loadedValue1648.i = load i64* %pSB_LocalId1647.i, align 8, !alias.scope !68, !noalias !69
  %1111 = getelementptr inbounds float addrspace(1)* %1066, i64 %loadedValue1648.i
  %SB_LocalId_Offset1681.i = add nuw i64 %pCurrSBIndex.1.i, 264
  %1112 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1681.i
  %pSB_LocalId1682.i = bitcast i8* %1112 to i64*
  %loadedValue1683.i = load i64* %pSB_LocalId1682.i, align 8, !alias.scope !68, !noalias !69
  %1113 = getelementptr inbounds float addrspace(1)* %1067, i64 %loadedValue1683.i
  %SB_LocalId_Offset1716.i = add nuw i64 %pCurrSBIndex.1.i, 272
  %1114 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1716.i
  %pSB_LocalId1717.i = bitcast i8* %1114 to i64*
  %loadedValue1718.i = load i64* %pSB_LocalId1717.i, align 8, !alias.scope !68, !noalias !69
  %1115 = getelementptr inbounds float addrspace(1)* %1068, i64 %loadedValue1718.i
  %SB_LocalId_Offset1751.i = add nuw i64 %pCurrSBIndex.1.i, 280
  %1116 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1751.i
  %pSB_LocalId1752.i = bitcast i8* %1116 to i64*
  %loadedValue1753.i = load i64* %pSB_LocalId1752.i, align 8, !alias.scope !68, !noalias !69
  %1117 = getelementptr inbounds float addrspace(1)* %1069, i64 %loadedValue1753.i
  %SB_LocalId_Offset1786.i = add nuw i64 %pCurrSBIndex.1.i, 288
  %1118 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1786.i
  %pSB_LocalId1787.i = bitcast i8* %1118 to i64*
  %loadedValue1788.i = load i64* %pSB_LocalId1787.i, align 8, !alias.scope !68, !noalias !69
  %1119 = getelementptr inbounds float addrspace(1)* %1070, i64 %loadedValue1788.i
  %SB_LocalId_Offset1821.i = add nuw i64 %pCurrSBIndex.1.i, 296
  %1120 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1821.i
  %pSB_LocalId1822.i = bitcast i8* %1120 to i64*
  %loadedValue1823.i = load i64* %pSB_LocalId1822.i, align 8, !alias.scope !68, !noalias !69
  %1121 = getelementptr inbounds float addrspace(1)* %1071, i64 %loadedValue1823.i
  %SB_LocalId_Offset1856.i = add nuw i64 %pCurrSBIndex.1.i, 304
  %1122 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1856.i
  %pSB_LocalId1857.i = bitcast i8* %1122 to i64*
  %loadedValue1858.i = load i64* %pSB_LocalId1857.i, align 8, !alias.scope !68, !noalias !69
  %1123 = getelementptr inbounds float addrspace(1)* %1072, i64 %loadedValue1858.i
  %SB_LocalId_Offset1891.i = add nuw i64 %pCurrSBIndex.1.i, 312
  %1124 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1891.i
  %pSB_LocalId1892.i = bitcast i8* %1124 to i64*
  %loadedValue1893.i = load i64* %pSB_LocalId1892.i, align 8, !alias.scope !68, !noalias !69
  %1125 = getelementptr inbounds float addrspace(1)* %1073, i64 %loadedValue1893.i
  %1126 = load float addrspace(1)* %1111, align 1, !noalias !58
  %1127 = load float addrspace(1)* %1113, align 1, !noalias !58
  %1128 = load float addrspace(1)* %1115, align 1, !noalias !58
  %1129 = load float addrspace(1)* %1117, align 1, !noalias !58
  %1130 = load float addrspace(1)* %1119, align 1, !noalias !58
  %1131 = load float addrspace(1)* %1121, align 1, !noalias !58
  %1132 = load float addrspace(1)* %1123, align 1, !noalias !58
  %1133 = load float addrspace(1)* %1125, align 1, !noalias !58
  %1134 = or <8 x i32> %1101, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %extract643.i = extractelement <8 x i32> %1134, i32 0
  %extract644.i = extractelement <8 x i32> %1134, i32 1
  %extract645.i = extractelement <8 x i32> %1134, i32 2
  %extract646.i = extractelement <8 x i32> %1134, i32 3
  %extract647.i = extractelement <8 x i32> %1134, i32 4
  %extract648.i = extractelement <8 x i32> %1134, i32 5
  %extract649.i = extractelement <8 x i32> %1134, i32 6
  %extract650.i = extractelement <8 x i32> %1134, i32 7
  %1135 = sext i32 %extract643.i to i64
  %1136 = sext i32 %extract644.i to i64
  %1137 = sext i32 %extract645.i to i64
  %1138 = sext i32 %extract646.i to i64
  %1139 = sext i32 %extract647.i to i64
  %1140 = sext i32 %extract648.i to i64
  %1141 = sext i32 %extract649.i to i64
  %1142 = sext i32 %extract650.i to i64
  %sunkaddr839 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr840 = mul i64 %1135, 4
  %sunkaddr841 = add i64 %sunkaddr839, %sunkaddr840
  %sunkaddr842 = add i64 %sunkaddr841, 128
  %sunkaddr843 = inttoptr i64 %sunkaddr842 to float addrspace(3)*
  store float %1126, float addrspace(3)* %sunkaddr843, align 4, !alias.scope !70, !noalias !71
  %sunkaddr844 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr845 = mul i64 %1136, 4
  %sunkaddr846 = add i64 %sunkaddr844, %sunkaddr845
  %sunkaddr847 = add i64 %sunkaddr846, 128
  %sunkaddr848 = inttoptr i64 %sunkaddr847 to float addrspace(3)*
  store float %1127, float addrspace(3)* %sunkaddr848, align 4, !alias.scope !70, !noalias !71
  %sunkaddr849 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr850 = mul i64 %1137, 4
  %sunkaddr851 = add i64 %sunkaddr849, %sunkaddr850
  %sunkaddr852 = add i64 %sunkaddr851, 128
  %sunkaddr853 = inttoptr i64 %sunkaddr852 to float addrspace(3)*
  store float %1128, float addrspace(3)* %sunkaddr853, align 4, !alias.scope !70, !noalias !71
  %sunkaddr854 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr855 = mul i64 %1138, 4
  %sunkaddr856 = add i64 %sunkaddr854, %sunkaddr855
  %sunkaddr857 = add i64 %sunkaddr856, 128
  %sunkaddr858 = inttoptr i64 %sunkaddr857 to float addrspace(3)*
  store float %1129, float addrspace(3)* %sunkaddr858, align 4, !alias.scope !70, !noalias !71
  %sunkaddr859 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr860 = mul i64 %1139, 4
  %sunkaddr861 = add i64 %sunkaddr859, %sunkaddr860
  %sunkaddr862 = add i64 %sunkaddr861, 128
  %sunkaddr863 = inttoptr i64 %sunkaddr862 to float addrspace(3)*
  store float %1130, float addrspace(3)* %sunkaddr863, align 4, !alias.scope !70, !noalias !71
  %sunkaddr864 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr865 = mul i64 %1140, 4
  %sunkaddr866 = add i64 %sunkaddr864, %sunkaddr865
  %sunkaddr867 = add i64 %sunkaddr866, 128
  %sunkaddr868 = inttoptr i64 %sunkaddr867 to float addrspace(3)*
  store float %1131, float addrspace(3)* %sunkaddr868, align 4, !alias.scope !70, !noalias !71
  %sunkaddr869 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr870 = mul i64 %1141, 4
  %sunkaddr871 = add i64 %sunkaddr869, %sunkaddr870
  %sunkaddr872 = add i64 %sunkaddr871, 128
  %sunkaddr873 = inttoptr i64 %sunkaddr872 to float addrspace(3)*
  store float %1132, float addrspace(3)* %sunkaddr873, align 4, !alias.scope !70, !noalias !71
  %sunkaddr874 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr875 = mul i64 %1142, 4
  %sunkaddr876 = add i64 %sunkaddr874, %sunkaddr875
  %sunkaddr877 = add i64 %sunkaddr876, 128
  %sunkaddr878 = inttoptr i64 %sunkaddr877 to float addrspace(3)*
  store float %1133, float addrspace(3)* %sunkaddr878, align 4, !alias.scope !70, !noalias !71
  br label %post_298.i

; <label>:1143                                    ; preds = %pre_297.i
  %1144 = bitcast <4 x i32>* %dummy.i132.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1144) #5, !noalias !58
  %1145 = bitcast <8 x i32> %_to_886261160.i to <8 x float>
  %1146 = call i32 @llvm.x86.avx.movmsk.ps.256(<8 x float> %1145) #5
  %1147 = and i32 %1146, 255
  %1148 = icmp eq i32 %1147, 255
  br i1 %1148, label %1149, label %1166

; <label>:1149                                    ; preds = %1143
  %1150 = addrspacecast <4 x i32> addrspace(2)* %1028 to <4 x i32>*
  %1151 = addrspacecast <4 x i32> addrspace(2)* %1027 to <4 x i32>*
  %1152 = addrspacecast <4 x i32> addrspace(2)* %1026 to <4 x i32>*
  %1153 = addrspacecast <4 x i32> addrspace(2)* %1025 to <4 x i32>*
  %1154 = addrspacecast <4 x i32> addrspace(2)* %1024 to <4 x i32>*
  %1155 = addrspacecast <4 x i32> addrspace(2)* %1023 to <4 x i32>*
  %1156 = addrspacecast <4 x i32> addrspace(2)* %1022 to <4 x i32>*
  %1157 = addrspacecast <4 x i32> addrspace(2)* %1021 to <4 x i32>*
  %1158 = load <4 x i32>* %1157, align 16, !tbaa !72, !noalias !58
  %1159 = load <4 x i32>* %1153, align 16, !tbaa !72, !noalias !58
  %newShuffle.i.i = shufflevector <4 x i32> %1158, <4 x i32> %1159, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %1160 = load <4 x i32>* %1156, align 16, !tbaa !72, !noalias !58
  %1161 = load <4 x i32>* %1152, align 16, !tbaa !72, !noalias !58
  %newShuffle1.i.i = shufflevector <4 x i32> %1160, <4 x i32> %1161, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %1162 = load <4 x i32>* %1155, align 16, !tbaa !72, !noalias !58
  %1163 = load <4 x i32>* %1151, align 16, !tbaa !72, !noalias !58
  %newShuffle2.i.i = shufflevector <4 x i32> %1162, <4 x i32> %1163, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %1164 = load <4 x i32>* %1154, align 16, !tbaa !72, !noalias !58
  %1165 = load <4 x i32>* %1150, align 16, !tbaa !72, !noalias !58
  %newShuffle3.i.i = shufflevector <4 x i32> %1164, <4 x i32> %1165, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %newShuffle4.i.i = shufflevector <8 x i32> %newShuffle.i.i, <8 x i32> %newShuffle2.i.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle5.i.i = shufflevector <8 x i32> %newShuffle.i.i, <8 x i32> %newShuffle2.i.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle6.i.i = shufflevector <8 x i32> %newShuffle1.i.i, <8 x i32> %newShuffle3.i.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle7.i.i = shufflevector <8 x i32> %newShuffle1.i.i, <8 x i32> %newShuffle3.i.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle8.i.i = shufflevector <8 x i32> %newShuffle4.i.i, <8 x i32> %newShuffle6.i.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr879 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr880 = add i64 %sunkaddr879, %pCurrSBIndex.1.i
  %sunkaddr881 = add i64 %sunkaddr880, 480
  %sunkaddr882 = inttoptr i64 %sunkaddr881 to <8 x i32>*
  store <8 x i32> %newShuffle8.i.i, <8 x i32>* %sunkaddr882, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle9.i.i = shufflevector <8 x i32> %newShuffle4.i.i, <8 x i32> %newShuffle6.i.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %sunkaddr883 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr884 = add i64 %sunkaddr883, %pCurrSBIndex.1.i
  %sunkaddr885 = add i64 %sunkaddr884, 512
  %sunkaddr886 = inttoptr i64 %sunkaddr885 to <8 x i32>*
  store <8 x i32> %newShuffle9.i.i, <8 x i32>* %sunkaddr886, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle10.i.i = shufflevector <8 x i32> %newShuffle5.i.i, <8 x i32> %newShuffle7.i.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr887 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr888 = add i64 %sunkaddr887, %pCurrSBIndex.1.i
  %sunkaddr889 = add i64 %sunkaddr888, 544
  %sunkaddr890 = inttoptr i64 %sunkaddr889 to <8 x i32>*
  store <8 x i32> %newShuffle10.i.i, <8 x i32>* %sunkaddr890, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle11.i.i = shufflevector <8 x i32> %newShuffle5.i.i, <8 x i32> %newShuffle7.i.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  br label %__ocl_masked_gather_transpose_int_4x8.exit.i

; <label>:1166                                    ; preds = %1143
  %1167 = addrspacecast <4 x i32> addrspace(2)* %1028 to <4 x i32>*
  %1168 = addrspacecast <4 x i32> addrspace(2)* %1027 to <4 x i32>*
  %1169 = addrspacecast <4 x i32> addrspace(2)* %1026 to <4 x i32>*
  %1170 = addrspacecast <4 x i32> addrspace(2)* %1025 to <4 x i32>*
  %1171 = addrspacecast <4 x i32> addrspace(2)* %1024 to <4 x i32>*
  %1172 = addrspacecast <4 x i32> addrspace(2)* %1023 to <4 x i32>*
  %1173 = addrspacecast <4 x i32> addrspace(2)* %1022 to <4 x i32>*
  %1174 = addrspacecast <4 x i32> addrspace(2)* %1021 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %dummy.i132.i, align 16, !noalias !58
  %1175 = extractelement <8 x i32> %_to_886261160.i, i64 0
  %1176 = icmp ne i32 %1175, 0
  %1177 = select i1 %1176, <4 x i32>* %1174, <4 x i32>* %dummy.i132.i
  %1178 = extractelement <8 x i32> %_to_886261160.i, i64 1
  %1179 = icmp ne i32 %1178, 0
  %1180 = select i1 %1179, <4 x i32>* %1173, <4 x i32>* %dummy.i132.i
  %1181 = extractelement <8 x i32> %_to_886261160.i, i64 2
  %1182 = icmp ne i32 %1181, 0
  %1183 = select i1 %1182, <4 x i32>* %1172, <4 x i32>* %dummy.i132.i
  %1184 = extractelement <8 x i32> %_to_886261160.i, i64 3
  %1185 = icmp ne i32 %1184, 0
  %1186 = select i1 %1185, <4 x i32>* %1171, <4 x i32>* %dummy.i132.i
  %1187 = extractelement <8 x i32> %_to_886261160.i, i64 4
  %1188 = icmp ne i32 %1187, 0
  %1189 = select i1 %1188, <4 x i32>* %1170, <4 x i32>* %dummy.i132.i
  %1190 = extractelement <8 x i32> %_to_886261160.i, i64 5
  %1191 = icmp ne i32 %1190, 0
  %1192 = select i1 %1191, <4 x i32>* %1169, <4 x i32>* %dummy.i132.i
  %1193 = extractelement <8 x i32> %_to_886261160.i, i64 6
  %1194 = icmp ne i32 %1193, 0
  %1195 = select i1 %1194, <4 x i32>* %1168, <4 x i32>* %dummy.i132.i
  %1196 = extractelement <8 x i32> %_to_886261160.i, i64 7
  %1197 = icmp ne i32 %1196, 0
  %1198 = select i1 %1197, <4 x i32>* %1167, <4 x i32>* %dummy.i132.i
  %1199 = load <4 x i32>* %1177, align 16, !tbaa !72, !noalias !58
  %1200 = load <4 x i32>* %1189, align 16, !tbaa !72, !noalias !58
  %newShuffle12.i.i = shufflevector <4 x i32> %1199, <4 x i32> %1200, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %1201 = load <4 x i32>* %1180, align 16, !tbaa !72, !noalias !58
  %1202 = load <4 x i32>* %1192, align 16, !tbaa !72, !noalias !58
  %newShuffle13.i.i = shufflevector <4 x i32> %1201, <4 x i32> %1202, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %1203 = load <4 x i32>* %1183, align 16, !tbaa !72, !noalias !58
  %1204 = load <4 x i32>* %1195, align 16, !tbaa !72, !noalias !58
  %newShuffle14.i.i = shufflevector <4 x i32> %1203, <4 x i32> %1204, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %1205 = load <4 x i32>* %1186, align 16, !tbaa !72, !noalias !58
  %1206 = load <4 x i32>* %1198, align 16, !tbaa !72, !noalias !58
  %newShuffle15.i.i = shufflevector <4 x i32> %1205, <4 x i32> %1206, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %newShuffle16.i.i = shufflevector <8 x i32> %newShuffle12.i.i, <8 x i32> %newShuffle14.i.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle17.i.i = shufflevector <8 x i32> %newShuffle12.i.i, <8 x i32> %newShuffle14.i.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle18.i.i = shufflevector <8 x i32> %newShuffle13.i.i, <8 x i32> %newShuffle15.i.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %newShuffle19.i.i = shufflevector <8 x i32> %newShuffle13.i.i, <8 x i32> %newShuffle15.i.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %newShuffle20.i.i = shufflevector <8 x i32> %newShuffle16.i.i, <8 x i32> %newShuffle18.i.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr891 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr892 = add i64 %sunkaddr891, %pCurrSBIndex.1.i
  %sunkaddr893 = add i64 %sunkaddr892, 480
  %sunkaddr894 = inttoptr i64 %sunkaddr893 to <8 x i32>*
  store <8 x i32> %newShuffle20.i.i, <8 x i32>* %sunkaddr894, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle21.i.i = shufflevector <8 x i32> %newShuffle16.i.i, <8 x i32> %newShuffle18.i.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %sunkaddr895 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr896 = add i64 %sunkaddr895, %pCurrSBIndex.1.i
  %sunkaddr897 = add i64 %sunkaddr896, 512
  %sunkaddr898 = inttoptr i64 %sunkaddr897 to <8 x i32>*
  store <8 x i32> %newShuffle21.i.i, <8 x i32>* %sunkaddr898, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle22.i.i = shufflevector <8 x i32> %newShuffle17.i.i, <8 x i32> %newShuffle19.i.i, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %sunkaddr899 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr900 = add i64 %sunkaddr899, %pCurrSBIndex.1.i
  %sunkaddr901 = add i64 %sunkaddr900, 544
  %sunkaddr902 = inttoptr i64 %sunkaddr901 to <8 x i32>*
  store <8 x i32> %newShuffle22.i.i, <8 x i32>* %sunkaddr902, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  %newShuffle23.i.i = shufflevector <8 x i32> %newShuffle17.i.i, <8 x i32> %newShuffle19.i.i, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  br label %__ocl_masked_gather_transpose_int_4x8.exit.i

__ocl_masked_gather_transpose_int_4x8.exit.i:     ; preds = %1166, %1149
  %1207 = phi <8 x i32> [ %newShuffle10.i.i, %1149 ], [ %newShuffle22.i.i, %1166 ]
  %1208 = phi <8 x i32> [ %newShuffle9.i.i, %1149 ], [ %newShuffle21.i.i, %1166 ]
  %1209 = phi <8 x i32> [ %newShuffle8.i.i, %1149 ], [ %newShuffle20.i.i, %1166 ]
  %storemerge.i.i = phi <8 x i32> [ %newShuffle11.i.i, %1149 ], [ %newShuffle23.i.i, %1166 ]
  %1210 = bitcast <4 x i32>* %dummy.i132.i to i8*
  %sunkaddr903 = ptrtoint i8* %pSpecialBuf to i64
  %sunkaddr904 = add i64 %sunkaddr903, %pCurrSBIndex.1.i
  %sunkaddr905 = add i64 %sunkaddr904, 576
  %sunkaddr906 = inttoptr i64 %sunkaddr905 to <8 x i32>*
  store <8 x i32> %storemerge.i.i, <8 x i32>* %sunkaddr906, align 32, !tbaa !72, !alias.scope !68, !noalias !69
  call void @llvm.lifetime.end(i64 16, i8* %1210) #5, !noalias !58
  %1211 = add nsw <8 x i32> %1209, %vector376.i
  %1212 = add nsw <8 x i32> %1208, %vector378.i
  %1213 = add nsw <8 x i32> %1207, %vector380.i
  %1214 = mul nsw <8 x i32> %1213, %vector382.i
  %1215 = add nsw <8 x i32> %1212, %1214
  %1216 = mul nsw <8 x i32> %1215, %vector384.i
  %1217 = add nsw <8 x i32> %1211, %1216
  %1218 = shl <8 x i32> %1217, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %extract652.i = extractelement <8 x i32> %1218, i32 0
  %extract653.i = extractelement <8 x i32> %1218, i32 1
  %extract654.i = extractelement <8 x i32> %1218, i32 2
  %extract655.i = extractelement <8 x i32> %1218, i32 3
  %extract656.i = extractelement <8 x i32> %1218, i32 4
  %extract657.i = extractelement <8 x i32> %1218, i32 5
  %extract658.i = extractelement <8 x i32> %1218, i32 6
  %extract659.i = extractelement <8 x i32> %1218, i32 7
  %1219 = sext i32 %extract652.i to i64
  %1220 = sext i32 %extract653.i to i64
  %1221 = sext i32 %extract654.i to i64
  %1222 = sext i32 %extract655.i to i64
  %1223 = sext i32 %extract656.i to i64
  %1224 = sext i32 %extract657.i to i64
  %1225 = sext i32 %extract658.i to i64
  %1226 = sext i32 %extract659.i to i64
  %1227 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1219
  %1228 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1220
  %1229 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1221
  %1230 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1222
  %1231 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1223
  %1232 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1224
  %1233 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1225
  %1234 = getelementptr <4 x float> addrspace(1)* %explicit_2, i64 %32, i64 %1226
  %SB_LocalId_Offset1292.i = add nuw i64 %pCurrSBIndex.1.i, 128
  %1235 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1292.i
  %pSB_LocalId1293.i = bitcast i8* %1235 to <8 x i32>*
  %loadedValue1294.i = load <8 x i32>* %pSB_LocalId1293.i, align 32, !alias.scope !68, !noalias !69
  %1236 = add nsw <8 x i32> %loadedValue1294.i, <i32 768, i32 768, i32 768, i32 768, i32 768, i32 768, i32 768, i32 768>
  %SB_LocalId_Offset1397.i = add nuw i64 %pCurrSBIndex.1.i, 200
  %1237 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1397.i
  %pSB_LocalId1398.i = bitcast i8* %1237 to i64*
  %loadedValue1399.i = load i64* %pSB_LocalId1398.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1432.i = add nuw i64 %pCurrSBIndex.1.i, 208
  %1238 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1432.i
  %pSB_LocalId1433.i = bitcast i8* %1238 to i64*
  %loadedValue1434.i = load i64* %pSB_LocalId1433.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1467.i = add nuw i64 %pCurrSBIndex.1.i, 216
  %1239 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1467.i
  %pSB_LocalId1468.i = bitcast i8* %1239 to i64*
  %loadedValue1469.i = load i64* %pSB_LocalId1468.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1502.i = add nuw i64 %pCurrSBIndex.1.i, 224
  %1240 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1502.i
  %pSB_LocalId1503.i = bitcast i8* %1240 to i64*
  %loadedValue1504.i = load i64* %pSB_LocalId1503.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1537.i = add nuw i64 %pCurrSBIndex.1.i, 232
  %1241 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1537.i
  %pSB_LocalId1538.i = bitcast i8* %1241 to i64*
  %loadedValue1539.i = load i64* %pSB_LocalId1538.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1572.i = add nuw i64 %pCurrSBIndex.1.i, 240
  %1242 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1572.i
  %pSB_LocalId1573.i = bitcast i8* %1242 to i64*
  %loadedValue1574.i = load i64* %pSB_LocalId1573.i, align 8, !alias.scope !68, !noalias !69
  %SB_LocalId_Offset1607.i = add nuw i64 %pCurrSBIndex.1.i, 248
  %1243 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1607.i
  %pSB_LocalId1608.i = bitcast i8* %1243 to i64*
  %loadedValue1609.i = load i64* %pSB_LocalId1608.i, align 8, !alias.scope !68, !noalias !69
  br i1 %extract660.i, label %preload1052.i, label %postload1053.i

preload1052.i:                                    ; preds = %__ocl_masked_gather_transpose_int_4x8.exit.i
  %SB_LocalId_Offset1362.i = add nuw i64 %pCurrSBIndex.1.i, 192
  %1244 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1362.i
  %pSB_LocalId1363.i = bitcast i8* %1244 to i64*
  %loadedValue1364.i = load i64* %pSB_LocalId1363.i, align 8, !alias.scope !68, !noalias !69
  %1245 = getelementptr inbounds float addrspace(1)* %1227, i64 %loadedValue1364.i
  %masked_load799.i = load float addrspace(1)* %1245, align 1, !noalias !58
  br label %postload1053.i

postload1053.i:                                   ; preds = %preload1052.i, %__ocl_masked_gather_transpose_int_4x8.exit.i
  %phi1054.i = phi float [ 0.000000e+00, %__ocl_masked_gather_transpose_int_4x8.exit.i ], [ %masked_load799.i, %preload1052.i ]
  br i1 %extract661.i, label %preload1062.i, label %postload1063.i

preload1062.i:                                    ; preds = %postload1053.i
  %sunkaddr907 = ptrtoint float addrspace(1)* %1228 to i64
  %sunkaddr908 = mul i64 %loadedValue1399.i, 4
  %sunkaddr909 = add i64 %sunkaddr907, %sunkaddr908
  %sunkaddr910 = inttoptr i64 %sunkaddr909 to float addrspace(1)*
  %masked_load800.i = load float addrspace(1)* %sunkaddr910, align 1, !noalias !58
  br label %postload1063.i

postload1063.i:                                   ; preds = %preload1062.i, %postload1053.i
  %phi1064.i = phi float [ 0.000000e+00, %postload1053.i ], [ %masked_load800.i, %preload1062.i ]
  br i1 %extract662.i, label %preload1072.i, label %postload1073.i

preload1072.i:                                    ; preds = %postload1063.i
  %sunkaddr911 = ptrtoint float addrspace(1)* %1229 to i64
  %sunkaddr912 = mul i64 %loadedValue1434.i, 4
  %sunkaddr913 = add i64 %sunkaddr911, %sunkaddr912
  %sunkaddr914 = inttoptr i64 %sunkaddr913 to float addrspace(1)*
  %masked_load801.i = load float addrspace(1)* %sunkaddr914, align 1, !noalias !58
  br label %postload1073.i

postload1073.i:                                   ; preds = %preload1072.i, %postload1063.i
  %phi1074.i = phi float [ 0.000000e+00, %postload1063.i ], [ %masked_load801.i, %preload1072.i ]
  br i1 %extract663.i, label %preload1082.i, label %postload1083.i

preload1082.i:                                    ; preds = %postload1073.i
  %sunkaddr915 = ptrtoint float addrspace(1)* %1230 to i64
  %sunkaddr916 = mul i64 %loadedValue1469.i, 4
  %sunkaddr917 = add i64 %sunkaddr915, %sunkaddr916
  %sunkaddr918 = inttoptr i64 %sunkaddr917 to float addrspace(1)*
  %masked_load802.i = load float addrspace(1)* %sunkaddr918, align 1, !noalias !58
  br label %postload1083.i

postload1083.i:                                   ; preds = %preload1082.i, %postload1073.i
  %phi1084.i = phi float [ 0.000000e+00, %postload1073.i ], [ %masked_load802.i, %preload1082.i ]
  br i1 %extract664.i, label %preload1092.i, label %postload1093.i

preload1092.i:                                    ; preds = %postload1083.i
  %sunkaddr919 = ptrtoint float addrspace(1)* %1231 to i64
  %sunkaddr920 = mul i64 %loadedValue1504.i, 4
  %sunkaddr921 = add i64 %sunkaddr919, %sunkaddr920
  %sunkaddr922 = inttoptr i64 %sunkaddr921 to float addrspace(1)*
  %masked_load803.i = load float addrspace(1)* %sunkaddr922, align 1, !noalias !58
  br label %postload1093.i

postload1093.i:                                   ; preds = %preload1092.i, %postload1083.i
  %phi1094.i = phi float [ 0.000000e+00, %postload1083.i ], [ %masked_load803.i, %preload1092.i ]
  br i1 %extract665.i, label %preload1102.i, label %postload1103.i

preload1102.i:                                    ; preds = %postload1093.i
  %sunkaddr923 = ptrtoint float addrspace(1)* %1232 to i64
  %sunkaddr924 = mul i64 %loadedValue1539.i, 4
  %sunkaddr925 = add i64 %sunkaddr923, %sunkaddr924
  %sunkaddr926 = inttoptr i64 %sunkaddr925 to float addrspace(1)*
  %masked_load804.i = load float addrspace(1)* %sunkaddr926, align 1, !noalias !58
  br label %postload1103.i

postload1103.i:                                   ; preds = %preload1102.i, %postload1093.i
  %phi1104.i = phi float [ 0.000000e+00, %postload1093.i ], [ %masked_load804.i, %preload1102.i ]
  br i1 %extract666.i, label %preload1112.i, label %postload1113.i

preload1112.i:                                    ; preds = %postload1103.i
  %sunkaddr927 = ptrtoint float addrspace(1)* %1233 to i64
  %sunkaddr928 = mul i64 %loadedValue1574.i, 4
  %sunkaddr929 = add i64 %sunkaddr927, %sunkaddr928
  %sunkaddr930 = inttoptr i64 %sunkaddr929 to float addrspace(1)*
  %masked_load805.i = load float addrspace(1)* %sunkaddr930, align 1, !noalias !58
  br label %postload1113.i

postload1113.i:                                   ; preds = %preload1112.i, %postload1103.i
  %phi1114.i = phi float [ 0.000000e+00, %postload1103.i ], [ %masked_load805.i, %preload1112.i ]
  br i1 %extract667.i, label %preload1122.i, label %postload1123.i

preload1122.i:                                    ; preds = %postload1113.i
  %sunkaddr931 = ptrtoint float addrspace(1)* %1234 to i64
  %sunkaddr932 = mul i64 %loadedValue1609.i, 4
  %sunkaddr933 = add i64 %sunkaddr931, %sunkaddr932
  %sunkaddr934 = inttoptr i64 %sunkaddr933 to float addrspace(1)*
  %masked_load806.i = load float addrspace(1)* %sunkaddr934, align 1, !noalias !58
  br label %postload1123.i

postload1123.i:                                   ; preds = %preload1122.i, %postload1113.i
  %phi1124.i = phi float [ 0.000000e+00, %postload1113.i ], [ %masked_load806.i, %preload1122.i ]
  %SB_LocalId_Offset1327.i = add nuw i64 %pCurrSBIndex.1.i, 160
  %1246 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1327.i
  %pSB_LocalId1328.i = bitcast i8* %1246 to <8 x i32>*
  %loadedValue1329.i = load <8 x i32>* %pSB_LocalId1328.i, align 32, !alias.scope !68, !noalias !69
  %1247 = or <8 x i32> %1236, %loadedValue1329.i
  %extract669.i = extractelement <8 x i32> %1247, i32 1
  %extract670.i = extractelement <8 x i32> %1247, i32 2
  %extract671.i = extractelement <8 x i32> %1247, i32 3
  %extract672.i = extractelement <8 x i32> %1247, i32 4
  %extract673.i = extractelement <8 x i32> %1247, i32 5
  %extract674.i = extractelement <8 x i32> %1247, i32 6
  %extract675.i = extractelement <8 x i32> %1247, i32 7
  %1248 = sext i32 %extract669.i to i64
  %1249 = sext i32 %extract670.i to i64
  %1250 = sext i32 %extract671.i to i64
  %1251 = sext i32 %extract672.i to i64
  %1252 = sext i32 %extract673.i to i64
  %1253 = sext i32 %extract674.i to i64
  %1254 = sext i32 %extract675.i to i64
  br i1 %extract660.i, label %preload1055.i, label %postload1056.i

preload1055.i:                                    ; preds = %postload1123.i
  %extract668.i = extractelement <8 x i32> %1247, i32 0
  %1255 = sext i32 %extract668.i to i64
  %sunkaddr935 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr936 = mul i64 %1255, 4
  %sunkaddr937 = add i64 %sunkaddr935, %sunkaddr936
  %sunkaddr938 = add i64 %sunkaddr937, 128
  %sunkaddr939 = inttoptr i64 %sunkaddr938 to float addrspace(3)*
  store float %phi1054.i, float addrspace(3)* %sunkaddr939, align 4, !alias.scope !70, !noalias !71
  br label %postload1056.i

postload1056.i:                                   ; preds = %preload1055.i, %postload1123.i
  br i1 %extract661.i, label %preload1065.i, label %postload1066.i

preload1065.i:                                    ; preds = %postload1056.i
  %sunkaddr940 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr941 = mul i64 %1248, 4
  %sunkaddr942 = add i64 %sunkaddr940, %sunkaddr941
  %sunkaddr943 = add i64 %sunkaddr942, 128
  %sunkaddr944 = inttoptr i64 %sunkaddr943 to float addrspace(3)*
  store float %phi1064.i, float addrspace(3)* %sunkaddr944, align 4, !alias.scope !70, !noalias !71
  br label %postload1066.i

postload1066.i:                                   ; preds = %preload1065.i, %postload1056.i
  br i1 %extract662.i, label %preload1075.i, label %postload1076.i

preload1075.i:                                    ; preds = %postload1066.i
  %sunkaddr945 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr946 = mul i64 %1249, 4
  %sunkaddr947 = add i64 %sunkaddr945, %sunkaddr946
  %sunkaddr948 = add i64 %sunkaddr947, 128
  %sunkaddr949 = inttoptr i64 %sunkaddr948 to float addrspace(3)*
  store float %phi1074.i, float addrspace(3)* %sunkaddr949, align 4, !alias.scope !70, !noalias !71
  br label %postload1076.i

postload1076.i:                                   ; preds = %preload1075.i, %postload1066.i
  br i1 %extract663.i, label %preload1085.i, label %postload1086.i

preload1085.i:                                    ; preds = %postload1076.i
  %sunkaddr950 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr951 = mul i64 %1250, 4
  %sunkaddr952 = add i64 %sunkaddr950, %sunkaddr951
  %sunkaddr953 = add i64 %sunkaddr952, 128
  %sunkaddr954 = inttoptr i64 %sunkaddr953 to float addrspace(3)*
  store float %phi1084.i, float addrspace(3)* %sunkaddr954, align 4, !alias.scope !70, !noalias !71
  br label %postload1086.i

postload1086.i:                                   ; preds = %preload1085.i, %postload1076.i
  br i1 %extract664.i, label %preload1095.i, label %postload1096.i

preload1095.i:                                    ; preds = %postload1086.i
  %sunkaddr955 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr956 = mul i64 %1251, 4
  %sunkaddr957 = add i64 %sunkaddr955, %sunkaddr956
  %sunkaddr958 = add i64 %sunkaddr957, 128
  %sunkaddr959 = inttoptr i64 %sunkaddr958 to float addrspace(3)*
  store float %phi1094.i, float addrspace(3)* %sunkaddr959, align 4, !alias.scope !70, !noalias !71
  br label %postload1096.i

postload1096.i:                                   ; preds = %preload1095.i, %postload1086.i
  br i1 %extract665.i, label %preload1105.i, label %postload1106.i

preload1105.i:                                    ; preds = %postload1096.i
  %sunkaddr960 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr961 = mul i64 %1252, 4
  %sunkaddr962 = add i64 %sunkaddr960, %sunkaddr961
  %sunkaddr963 = add i64 %sunkaddr962, 128
  %sunkaddr964 = inttoptr i64 %sunkaddr963 to float addrspace(3)*
  store float %phi1104.i, float addrspace(3)* %sunkaddr964, align 4, !alias.scope !70, !noalias !71
  br label %postload1106.i

postload1106.i:                                   ; preds = %preload1105.i, %postload1096.i
  br i1 %extract666.i, label %preload1115.i, label %postload1116.i

preload1115.i:                                    ; preds = %postload1106.i
  %sunkaddr965 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr966 = mul i64 %1253, 4
  %sunkaddr967 = add i64 %sunkaddr965, %sunkaddr966
  %sunkaddr968 = add i64 %sunkaddr967, 128
  %sunkaddr969 = inttoptr i64 %sunkaddr968 to float addrspace(3)*
  store float %phi1114.i, float addrspace(3)* %sunkaddr969, align 4, !alias.scope !70, !noalias !71
  br label %postload1116.i

postload1116.i:                                   ; preds = %preload1115.i, %postload1106.i
  br i1 %extract667.i, label %preload1125.i, label %postload1126.i

preload1125.i:                                    ; preds = %postload1116.i
  %sunkaddr970 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr971 = mul i64 %1254, 4
  %sunkaddr972 = add i64 %sunkaddr970, %sunkaddr971
  %sunkaddr973 = add i64 %sunkaddr972, 128
  %sunkaddr974 = inttoptr i64 %sunkaddr973 to float addrspace(3)*
  store float %phi1124.i, float addrspace(3)* %sunkaddr974, align 4, !alias.scope !70, !noalias !71
  br label %postload1126.i

postload1126.i:                                   ; preds = %preload1125.i, %postload1116.i
  %SB_LocalId_Offset1677.i = add nuw i64 %pCurrSBIndex.1.i, 264
  %1256 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1677.i
  %SB_LocalId_Offset1712.i = add nuw i64 %pCurrSBIndex.1.i, 272
  %1257 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1712.i
  %SB_LocalId_Offset1747.i = add nuw i64 %pCurrSBIndex.1.i, 280
  %1258 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1747.i
  %SB_LocalId_Offset1782.i = add nuw i64 %pCurrSBIndex.1.i, 288
  %1259 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1782.i
  %SB_LocalId_Offset1817.i = add nuw i64 %pCurrSBIndex.1.i, 296
  %1260 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1817.i
  %SB_LocalId_Offset1852.i = add nuw i64 %pCurrSBIndex.1.i, 304
  %1261 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1852.i
  %SB_LocalId_Offset1887.i = add nuw i64 %pCurrSBIndex.1.i, 312
  %1262 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1887.i
  br i1 %extract660.i, label %preload1057.i, label %postload1058.i

preload1057.i:                                    ; preds = %postload1126.i
  %SB_LocalId_Offset1642.i = add nuw i64 %pCurrSBIndex.1.i, 256
  %1263 = getelementptr inbounds i8* %pSpecialBuf, i64 %SB_LocalId_Offset1642.i
  %pSB_LocalId1643.i = bitcast i8* %1263 to i64*
  %loadedValue1644.i = load i64* %pSB_LocalId1643.i, align 8, !alias.scope !68, !noalias !69
  %1264 = getelementptr inbounds float addrspace(1)* %1227, i64 %loadedValue1644.i
  %masked_load807.i = load float addrspace(1)* %1264, align 1, !noalias !58
  br label %postload1058.i

postload1058.i:                                   ; preds = %preload1057.i, %postload1126.i
  %phi1059.i = phi float [ 0.000000e+00, %postload1126.i ], [ %masked_load807.i, %preload1057.i ]
  br i1 %extract661.i, label %preload1067.i, label %postload1068.i

preload1067.i:                                    ; preds = %postload1058.i
  %sunkaddr975 = ptrtoint float addrspace(1)* %1228 to i64
  %sunkaddr976 = mul i64 %loadedValue1679.i, 4
  %sunkaddr977 = add i64 %sunkaddr975, %sunkaddr976
  %sunkaddr978 = inttoptr i64 %sunkaddr977 to float addrspace(1)*
  %masked_load808.i = load float addrspace(1)* %sunkaddr978, align 1, !noalias !58
  br label %postload1068.i

postload1068.i:                                   ; preds = %preload1067.i, %postload1058.i
  %phi1069.i = phi float [ 0.000000e+00, %postload1058.i ], [ %masked_load808.i, %preload1067.i ]
  br i1 %extract662.i, label %preload1077.i, label %postload1078.i

preload1077.i:                                    ; preds = %postload1068.i
  %sunkaddr979 = ptrtoint float addrspace(1)* %1229 to i64
  %sunkaddr980 = mul i64 %loadedValue1714.i, 4
  %sunkaddr981 = add i64 %sunkaddr979, %sunkaddr980
  %sunkaddr982 = inttoptr i64 %sunkaddr981 to float addrspace(1)*
  %masked_load809.i = load float addrspace(1)* %sunkaddr982, align 1, !noalias !58
  br label %postload1078.i

postload1078.i:                                   ; preds = %preload1077.i, %postload1068.i
  %phi1079.i = phi float [ 0.000000e+00, %postload1068.i ], [ %masked_load809.i, %preload1077.i ]
  br i1 %extract663.i, label %preload1087.i, label %postload1088.i

preload1087.i:                                    ; preds = %postload1078.i
  %sunkaddr983 = ptrtoint float addrspace(1)* %1230 to i64
  %sunkaddr984 = mul i64 %loadedValue1749.i, 4
  %sunkaddr985 = add i64 %sunkaddr983, %sunkaddr984
  %sunkaddr986 = inttoptr i64 %sunkaddr985 to float addrspace(1)*
  %masked_load810.i = load float addrspace(1)* %sunkaddr986, align 1, !noalias !58
  br label %postload1088.i

postload1088.i:                                   ; preds = %preload1087.i, %postload1078.i
  %phi1089.i = phi float [ 0.000000e+00, %postload1078.i ], [ %masked_load810.i, %preload1087.i ]
  br i1 %extract664.i, label %preload1097.i, label %postload1098.i

preload1097.i:                                    ; preds = %postload1088.i
  %sunkaddr987 = ptrtoint float addrspace(1)* %1231 to i64
  %sunkaddr988 = mul i64 %loadedValue1784.i, 4
  %sunkaddr989 = add i64 %sunkaddr987, %sunkaddr988
  %sunkaddr990 = inttoptr i64 %sunkaddr989 to float addrspace(1)*
  %masked_load811.i = load float addrspace(1)* %sunkaddr990, align 1, !noalias !58
  br label %postload1098.i

postload1098.i:                                   ; preds = %preload1097.i, %postload1088.i
  %phi1099.i = phi float [ 0.000000e+00, %postload1088.i ], [ %masked_load811.i, %preload1097.i ]
  br i1 %extract665.i, label %preload1107.i, label %postload1108.i

preload1107.i:                                    ; preds = %postload1098.i
  %sunkaddr991 = ptrtoint float addrspace(1)* %1232 to i64
  %sunkaddr992 = mul i64 %loadedValue1819.i, 4
  %sunkaddr993 = add i64 %sunkaddr991, %sunkaddr992
  %sunkaddr994 = inttoptr i64 %sunkaddr993 to float addrspace(1)*
  %masked_load812.i = load float addrspace(1)* %sunkaddr994, align 1, !noalias !58
  br label %postload1108.i

postload1108.i:                                   ; preds = %preload1107.i, %postload1098.i
  %phi1109.i = phi float [ 0.000000e+00, %postload1098.i ], [ %masked_load812.i, %preload1107.i ]
  br i1 %extract666.i, label %preload1117.i, label %postload1118.i

preload1117.i:                                    ; preds = %postload1108.i
  %sunkaddr995 = ptrtoint float addrspace(1)* %1233 to i64
  %sunkaddr996 = mul i64 %loadedValue1854.i, 4
  %sunkaddr997 = add i64 %sunkaddr995, %sunkaddr996
  %sunkaddr998 = inttoptr i64 %sunkaddr997 to float addrspace(1)*
  %masked_load813.i = load float addrspace(1)* %sunkaddr998, align 1, !noalias !58
  br label %postload1118.i

postload1118.i:                                   ; preds = %preload1117.i, %postload1108.i
  %phi1119.i = phi float [ 0.000000e+00, %postload1108.i ], [ %masked_load813.i, %preload1117.i ]
  br i1 %extract667.i, label %preload1127.i, label %postload1128.i

preload1127.i:                                    ; preds = %postload1118.i
  %sunkaddr999 = ptrtoint float addrspace(1)* %1234 to i64
  %sunkaddr1000 = mul i64 %loadedValue1889.i, 4
  %sunkaddr1001 = add i64 %sunkaddr999, %sunkaddr1000
  %sunkaddr1002 = inttoptr i64 %sunkaddr1001 to float addrspace(1)*
  %masked_load814.i = load float addrspace(1)* %sunkaddr1002, align 1, !noalias !58
  br label %postload1128.i

postload1128.i:                                   ; preds = %preload1127.i, %postload1118.i
  %phi1129.i = phi float [ 0.000000e+00, %postload1118.i ], [ %masked_load814.i, %preload1127.i ]
  %1265 = or <8 x i32> %1247, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %extract677.i = extractelement <8 x i32> %1265, i32 1
  %extract678.i = extractelement <8 x i32> %1265, i32 2
  %extract679.i = extractelement <8 x i32> %1265, i32 3
  %extract680.i = extractelement <8 x i32> %1265, i32 4
  %extract681.i = extractelement <8 x i32> %1265, i32 5
  %extract682.i = extractelement <8 x i32> %1265, i32 6
  %extract683.i = extractelement <8 x i32> %1265, i32 7
  %1266 = sext i32 %extract677.i to i64
  %1267 = sext i32 %extract678.i to i64
  %1268 = sext i32 %extract679.i to i64
  %1269 = sext i32 %extract680.i to i64
  %1270 = sext i32 %extract681.i to i64
  %1271 = sext i32 %extract682.i to i64
  %1272 = sext i32 %extract683.i to i64
  br i1 %extract660.i, label %preload1060.i, label %postload1061.i

preload1060.i:                                    ; preds = %postload1128.i
  %extract676.i = extractelement <8 x i32> %1265, i32 0
  %1273 = sext i32 %extract676.i to i64
  %sunkaddr1003 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1004 = mul i64 %1273, 4
  %sunkaddr1005 = add i64 %sunkaddr1003, %sunkaddr1004
  %sunkaddr1006 = add i64 %sunkaddr1005, 128
  %sunkaddr1007 = inttoptr i64 %sunkaddr1006 to float addrspace(3)*
  store float %phi1059.i, float addrspace(3)* %sunkaddr1007, align 4, !alias.scope !70, !noalias !71
  br label %postload1061.i

postload1061.i:                                   ; preds = %preload1060.i, %postload1128.i
  br i1 %extract661.i, label %preload1070.i, label %postload1071.i

preload1070.i:                                    ; preds = %postload1061.i
  %sunkaddr1008 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1009 = mul i64 %1266, 4
  %sunkaddr1010 = add i64 %sunkaddr1008, %sunkaddr1009
  %sunkaddr1011 = add i64 %sunkaddr1010, 128
  %sunkaddr1012 = inttoptr i64 %sunkaddr1011 to float addrspace(3)*
  store float %phi1069.i, float addrspace(3)* %sunkaddr1012, align 4, !alias.scope !70, !noalias !71
  br label %postload1071.i

postload1071.i:                                   ; preds = %preload1070.i, %postload1061.i
  br i1 %extract662.i, label %preload1080.i, label %postload1081.i

preload1080.i:                                    ; preds = %postload1071.i
  %sunkaddr1013 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1014 = mul i64 %1267, 4
  %sunkaddr1015 = add i64 %sunkaddr1013, %sunkaddr1014
  %sunkaddr1016 = add i64 %sunkaddr1015, 128
  %sunkaddr1017 = inttoptr i64 %sunkaddr1016 to float addrspace(3)*
  store float %phi1079.i, float addrspace(3)* %sunkaddr1017, align 4, !alias.scope !70, !noalias !71
  br label %postload1081.i

postload1081.i:                                   ; preds = %preload1080.i, %postload1071.i
  br i1 %extract663.i, label %preload1090.i, label %postload1091.i

preload1090.i:                                    ; preds = %postload1081.i
  %sunkaddr1018 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1019 = mul i64 %1268, 4
  %sunkaddr1020 = add i64 %sunkaddr1018, %sunkaddr1019
  %sunkaddr1021 = add i64 %sunkaddr1020, 128
  %sunkaddr1022 = inttoptr i64 %sunkaddr1021 to float addrspace(3)*
  store float %phi1089.i, float addrspace(3)* %sunkaddr1022, align 4, !alias.scope !70, !noalias !71
  br label %postload1091.i

postload1091.i:                                   ; preds = %preload1090.i, %postload1081.i
  br i1 %extract664.i, label %preload1100.i, label %postload1101.i

preload1100.i:                                    ; preds = %postload1091.i
  %sunkaddr1023 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1024 = mul i64 %1269, 4
  %sunkaddr1025 = add i64 %sunkaddr1023, %sunkaddr1024
  %sunkaddr1026 = add i64 %sunkaddr1025, 128
  %sunkaddr1027 = inttoptr i64 %sunkaddr1026 to float addrspace(3)*
  store float %phi1099.i, float addrspace(3)* %sunkaddr1027, align 4, !alias.scope !70, !noalias !71
  br label %postload1101.i

postload1101.i:                                   ; preds = %preload1100.i, %postload1091.i
  br i1 %extract665.i, label %preload1110.i, label %postload1111.i

preload1110.i:                                    ; preds = %postload1101.i
  %sunkaddr1028 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1029 = mul i64 %1270, 4
  %sunkaddr1030 = add i64 %sunkaddr1028, %sunkaddr1029
  %sunkaddr1031 = add i64 %sunkaddr1030, 128
  %sunkaddr1032 = inttoptr i64 %sunkaddr1031 to float addrspace(3)*
  store float %phi1109.i, float addrspace(3)* %sunkaddr1032, align 4, !alias.scope !70, !noalias !71
  br label %postload1111.i

postload1111.i:                                   ; preds = %preload1110.i, %postload1101.i
  br i1 %extract666.i, label %preload1120.i, label %postload1121.i

preload1120.i:                                    ; preds = %postload1111.i
  %sunkaddr1033 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1034 = mul i64 %1271, 4
  %sunkaddr1035 = add i64 %sunkaddr1033, %sunkaddr1034
  %sunkaddr1036 = add i64 %sunkaddr1035, 128
  %sunkaddr1037 = inttoptr i64 %sunkaddr1036 to float addrspace(3)*
  store float %phi1119.i, float addrspace(3)* %sunkaddr1037, align 4, !alias.scope !70, !noalias !71
  br label %postload1121.i

postload1121.i:                                   ; preds = %preload1120.i, %postload1111.i
  br i1 %extract667.i, label %preload1130.i, label %post_298.i

preload1130.i:                                    ; preds = %postload1121.i
  %sunkaddr1038 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1039 = mul i64 %1272, 4
  %sunkaddr1040 = add i64 %sunkaddr1038, %sunkaddr1039
  %sunkaddr1041 = add i64 %sunkaddr1040, 128
  %sunkaddr1042 = inttoptr i64 %sunkaddr1041 to float addrspace(3)*
  store float %phi1129.i, float addrspace(3)* %sunkaddr1042, align 4, !alias.scope !70, !noalias !71
  br label %post_298.i

post_298.i:                                       ; preds = %preload1130.i, %postload1121.i, %_allOnes296.i
  %1274 = add nsw <8 x i32> %vectorPHI366.i, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  br label %phi-split-bb.i

header258.i:                                      ; preds = %footer249.i
  %1275 = or i64 %440, 4
  %1276 = or i64 %440, 6
  %sunkaddr1043 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1044 = mul i64 %1276, 4
  %sunkaddr1045 = add i64 %sunkaddr1043, %sunkaddr1044
  %sunkaddr1046 = add i64 %sunkaddr1045, 128
  %sunkaddr1047 = inttoptr i64 %sunkaddr1046 to float addrspace(3)*
  %1277 = load float addrspace(3)* %sunkaddr1047, align 8, !alias.scope !70, !noalias !71
  %1278 = or i64 %440, 5
  %sunkaddr1048 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1049 = mul i64 %1278, 4
  %sunkaddr1050 = add i64 %sunkaddr1048, %sunkaddr1049
  %sunkaddr1051 = add i64 %sunkaddr1050, 128
  %sunkaddr1052 = inttoptr i64 %sunkaddr1051 to float addrspace(3)*
  %1279 = load float addrspace(3)* %sunkaddr1052, align 4, !alias.scope !70, !noalias !71
  %sunkaddr1053 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1054 = mul i64 %1275, 4
  %sunkaddr1055 = add i64 %sunkaddr1053, %sunkaddr1054
  %sunkaddr1056 = add i64 %sunkaddr1055, 128
  %sunkaddr1057 = inttoptr i64 %sunkaddr1056 to float addrspace(3)*
  %1280 = load float addrspace(3)* %sunkaddr1057, align 16, !alias.scope !70, !noalias !71
  %temp685.i = insertelement <8 x float> undef, float %1280, i32 0
  %vector684.i = shufflevector <8 x float> %temp685.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1281 = fsub <8 x float> %vector684.i, %loadedValue1217.i
  %1282 = fmul <8 x float> %1281, %1281
  %1283 = fsub float %1279, %loadedValue1252.i
  %1284 = fmul float %1283, %1283
  %temp687.i = insertelement <8 x float> undef, float %1284, i32 0
  %vector686.i = shufflevector <8 x float> %temp687.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1285 = fadd <8 x float> %vector686.i, %1282
  %1286 = fsub float %1277, %loadedValue1287.i
  %1287 = fmul float %1286, %1286
  %temp689.i = insertelement <8 x float> undef, float %1287, i32 0
  %vector688.i = shufflevector <8 x float> %temp689.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1288 = fadd <8 x float> %vector688.i, %1285
  %1289 = fcmp olt <8 x float> %1288, %vector477.i
  %.sext1141.i = sext <8 x i1> %1289 to <8 x i32>
  %a.i19.i = bitcast <8 x i32> %.sext1141.i to <4 x i64>
  %res.i20.i = call i32 @llvm.x86.avx.ptestz.256(<4 x i64> %a.i19.i, <4 x i64> %a.i19.i) #5
  %1290 = and i32 %res.i20.i, 1
  %zero.i21.i = icmp eq i32 %1290, 0
  br i1 %zero.i21.i, label %1291, label %footer259.i

; <label>:1291                                    ; preds = %header258.i
  %1292 = fmul <8 x float> %1288, %vector479.i
  %1293 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1292
  %1294 = call <8 x float> @llvm.x86.avx.sqrt.ps.256(<8 x float> %1288) #5
  %1295 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1294, !fpmath !75
  %1296 = fmul <8 x float> %vector690.i, %1295
  %1297 = fmul <8 x float> %1293, %1296
  %1298 = fmul <8 x float> %1293, %1297
  %1299 = fadd <8 x float> %merge200484.i, %1298
  br label %footer259.i

footer259.i:                                      ; preds = %1291, %header258.i
  %vectorPHI692.i = phi <8 x float> [ %1299, %1291 ], [ undef, %header258.i ]
  %1300 = fcmp olt <8 x float> %1288, %vector477.i
  %merge204693.i = select <8 x i1> %1300, <8 x float> %vectorPHI692.i, <8 x float> %merge200484.i
  %1301 = or i64 %440, 11
  %sunkaddr1058 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1059 = mul i64 %1301, 4
  %sunkaddr1060 = add i64 %sunkaddr1058, %sunkaddr1059
  %sunkaddr1061 = add i64 %sunkaddr1060, 128
  %sunkaddr1062 = inttoptr i64 %sunkaddr1061 to float addrspace(3)*
  %1302 = load float addrspace(3)* %sunkaddr1062, align 4, !alias.scope !70, !noalias !71
  %temp701.i = insertelement <8 x float> undef, float %1302, i32 0
  %vector700.i = shufflevector <8 x float> %temp701.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1303 = fcmp oeq float %1302, 0.000000e+00
  br i1 %1303, label %phi-split-bb45.i, label %header262.i

header262.i:                                      ; preds = %footer259.i
  %1304 = or i64 %440, 8
  %1305 = or i64 %440, 10
  %sunkaddr1063 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1064 = mul i64 %1305, 4
  %sunkaddr1065 = add i64 %sunkaddr1063, %sunkaddr1064
  %sunkaddr1066 = add i64 %sunkaddr1065, 128
  %sunkaddr1067 = inttoptr i64 %sunkaddr1066 to float addrspace(3)*
  %1306 = load float addrspace(3)* %sunkaddr1067, align 8, !alias.scope !70, !noalias !71
  %1307 = or i64 %440, 9
  %sunkaddr1068 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1069 = mul i64 %1307, 4
  %sunkaddr1070 = add i64 %sunkaddr1068, %sunkaddr1069
  %sunkaddr1071 = add i64 %sunkaddr1070, 128
  %sunkaddr1072 = inttoptr i64 %sunkaddr1071 to float addrspace(3)*
  %1308 = load float addrspace(3)* %sunkaddr1072, align 4, !alias.scope !70, !noalias !71
  %sunkaddr1073 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1074 = mul i64 %1304, 4
  %sunkaddr1075 = add i64 %sunkaddr1073, %sunkaddr1074
  %sunkaddr1076 = add i64 %sunkaddr1075, 128
  %sunkaddr1077 = inttoptr i64 %sunkaddr1076 to float addrspace(3)*
  %1309 = load float addrspace(3)* %sunkaddr1077, align 32, !alias.scope !70, !noalias !71
  %temp695.i = insertelement <8 x float> undef, float %1309, i32 0
  %vector694.i = shufflevector <8 x float> %temp695.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1310 = fsub <8 x float> %vector694.i, %loadedValue1217.i
  %1311 = fmul <8 x float> %1310, %1310
  %1312 = fsub float %1308, %loadedValue1252.i
  %1313 = fmul float %1312, %1312
  %temp697.i = insertelement <8 x float> undef, float %1313, i32 0
  %vector696.i = shufflevector <8 x float> %temp697.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1314 = fadd <8 x float> %vector696.i, %1311
  %1315 = fsub float %1306, %loadedValue1287.i
  %1316 = fmul float %1315, %1315
  %temp699.i = insertelement <8 x float> undef, float %1316, i32 0
  %vector698.i = shufflevector <8 x float> %temp699.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1317 = fadd <8 x float> %vector698.i, %1314
  %1318 = fcmp olt <8 x float> %1317, %vector477.i
  %.sext1143.i = sext <8 x i1> %1318 to <8 x i32>
  %a.i16.i = bitcast <8 x i32> %.sext1143.i to <4 x i64>
  %res.i17.i = call i32 @llvm.x86.avx.ptestz.256(<4 x i64> %a.i16.i, <4 x i64> %a.i16.i) #5
  %1319 = and i32 %res.i17.i, 1
  %zero.i18.i = icmp eq i32 %1319, 0
  br i1 %zero.i18.i, label %1320, label %footer263.i

; <label>:1320                                    ; preds = %header262.i
  %1321 = fmul <8 x float> %1317, %vector479.i
  %1322 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1321
  %1323 = call <8 x float> @llvm.x86.avx.sqrt.ps.256(<8 x float> %1317) #5
  %1324 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1323, !fpmath !75
  %1325 = fmul <8 x float> %vector700.i, %1324
  %1326 = fmul <8 x float> %1322, %1325
  %1327 = fmul <8 x float> %1322, %1326
  %1328 = fadd <8 x float> %merge204693.i, %1327
  br label %footer263.i

footer263.i:                                      ; preds = %1320, %header262.i
  %vectorPHI702.i = phi <8 x float> [ %1328, %1320 ], [ undef, %header262.i ]
  %1329 = fcmp olt <8 x float> %1317, %vector477.i
  %merge206703.i = select <8 x i1> %1329, <8 x float> %vectorPHI702.i, <8 x float> %merge204693.i
  %1330 = or i64 %440, 15
  %sunkaddr1078 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1079 = mul i64 %1330, 4
  %sunkaddr1080 = add i64 %sunkaddr1078, %sunkaddr1079
  %sunkaddr1081 = add i64 %sunkaddr1080, 128
  %sunkaddr1082 = inttoptr i64 %sunkaddr1081 to float addrspace(3)*
  %1331 = load float addrspace(3)* %sunkaddr1082, align 4, !alias.scope !70, !noalias !71
  %temp711.i = insertelement <8 x float> undef, float %1331, i32 0
  %vector710.i = shufflevector <8 x float> %temp711.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1332 = fcmp oeq float %1331, 0.000000e+00
  br i1 %1332, label %phi-split-bb45.i, label %header266.i

header266.i:                                      ; preds = %footer263.i
  %1333 = or i64 %440, 12
  %1334 = or i64 %440, 14
  %sunkaddr1083 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1084 = mul i64 %1334, 4
  %sunkaddr1085 = add i64 %sunkaddr1083, %sunkaddr1084
  %sunkaddr1086 = add i64 %sunkaddr1085, 128
  %sunkaddr1087 = inttoptr i64 %sunkaddr1086 to float addrspace(3)*
  %1335 = load float addrspace(3)* %sunkaddr1087, align 8, !alias.scope !70, !noalias !71
  %1336 = or i64 %440, 13
  %sunkaddr1088 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1089 = mul i64 %1336, 4
  %sunkaddr1090 = add i64 %sunkaddr1088, %sunkaddr1089
  %sunkaddr1091 = add i64 %sunkaddr1090, 128
  %sunkaddr1092 = inttoptr i64 %sunkaddr1091 to float addrspace(3)*
  %1337 = load float addrspace(3)* %sunkaddr1092, align 4, !alias.scope !70, !noalias !71
  %sunkaddr1093 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1094 = mul i64 %1333, 4
  %sunkaddr1095 = add i64 %sunkaddr1093, %sunkaddr1094
  %sunkaddr1096 = add i64 %sunkaddr1095, 128
  %sunkaddr1097 = inttoptr i64 %sunkaddr1096 to float addrspace(3)*
  %1338 = load float addrspace(3)* %sunkaddr1097, align 16, !alias.scope !70, !noalias !71
  %temp705.i = insertelement <8 x float> undef, float %1338, i32 0
  %vector704.i = shufflevector <8 x float> %temp705.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1339 = fsub <8 x float> %vector704.i, %loadedValue1217.i
  %1340 = fmul <8 x float> %1339, %1339
  %1341 = fsub float %1337, %loadedValue1252.i
  %1342 = fmul float %1341, %1341
  %temp707.i = insertelement <8 x float> undef, float %1342, i32 0
  %vector706.i = shufflevector <8 x float> %temp707.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1343 = fadd <8 x float> %vector706.i, %1340
  %1344 = fsub float %1335, %loadedValue1287.i
  %1345 = fmul float %1344, %1344
  %temp709.i = insertelement <8 x float> undef, float %1345, i32 0
  %vector708.i = shufflevector <8 x float> %temp709.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1346 = fadd <8 x float> %vector708.i, %1343
  %1347 = fcmp olt <8 x float> %1346, %vector477.i
  %.sext1145.i = sext <8 x i1> %1347 to <8 x i32>
  %a.i13.i = bitcast <8 x i32> %.sext1145.i to <4 x i64>
  %res.i14.i = call i32 @llvm.x86.avx.ptestz.256(<4 x i64> %a.i13.i, <4 x i64> %a.i13.i) #5
  %1348 = and i32 %res.i14.i, 1
  %zero.i15.i = icmp eq i32 %1348, 0
  br i1 %zero.i15.i, label %1349, label %footer267.i

; <label>:1349                                    ; preds = %header266.i
  %1350 = fmul <8 x float> %1346, %vector479.i
  %1351 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1350
  %1352 = call <8 x float> @llvm.x86.avx.sqrt.ps.256(<8 x float> %1346) #5
  %1353 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1352, !fpmath !75
  %1354 = fmul <8 x float> %vector710.i, %1353
  %1355 = fmul <8 x float> %1351, %1354
  %1356 = fmul <8 x float> %1351, %1355
  %1357 = fadd <8 x float> %merge206703.i, %1356
  br label %footer267.i

footer267.i:                                      ; preds = %1349, %header266.i
  %vectorPHI712.i = phi <8 x float> [ %1357, %1349 ], [ undef, %header266.i ]
  %1358 = fcmp olt <8 x float> %1346, %vector477.i
  %merge208713.i = select <8 x i1> %1358, <8 x float> %vectorPHI712.i, <8 x float> %merge206703.i
  %1359 = or i64 %440, 19
  %sunkaddr1098 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1099 = mul i64 %1359, 4
  %sunkaddr1100 = add i64 %sunkaddr1098, %sunkaddr1099
  %sunkaddr1101 = add i64 %sunkaddr1100, 128
  %sunkaddr1102 = inttoptr i64 %sunkaddr1101 to float addrspace(3)*
  %1360 = load float addrspace(3)* %sunkaddr1102, align 4, !alias.scope !70, !noalias !71
  %temp721.i = insertelement <8 x float> undef, float %1360, i32 0
  %vector720.i = shufflevector <8 x float> %temp721.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1361 = fcmp oeq float %1360, 0.000000e+00
  br i1 %1361, label %phi-split-bb45.i, label %header270.i

header270.i:                                      ; preds = %footer267.i
  %1362 = or i64 %440, 16
  %1363 = or i64 %440, 18
  %sunkaddr1103 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1104 = mul i64 %1363, 4
  %sunkaddr1105 = add i64 %sunkaddr1103, %sunkaddr1104
  %sunkaddr1106 = add i64 %sunkaddr1105, 128
  %sunkaddr1107 = inttoptr i64 %sunkaddr1106 to float addrspace(3)*
  %1364 = load float addrspace(3)* %sunkaddr1107, align 8, !alias.scope !70, !noalias !71
  %1365 = or i64 %440, 17
  %sunkaddr1108 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1109 = mul i64 %1365, 4
  %sunkaddr1110 = add i64 %sunkaddr1108, %sunkaddr1109
  %sunkaddr1111 = add i64 %sunkaddr1110, 128
  %sunkaddr1112 = inttoptr i64 %sunkaddr1111 to float addrspace(3)*
  %1366 = load float addrspace(3)* %sunkaddr1112, align 4, !alias.scope !70, !noalias !71
  %sunkaddr1113 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1114 = mul i64 %1362, 4
  %sunkaddr1115 = add i64 %sunkaddr1113, %sunkaddr1114
  %sunkaddr1116 = add i64 %sunkaddr1115, 128
  %sunkaddr1117 = inttoptr i64 %sunkaddr1116 to float addrspace(3)*
  %1367 = load float addrspace(3)* %sunkaddr1117, align 64, !alias.scope !70, !noalias !71
  %temp715.i = insertelement <8 x float> undef, float %1367, i32 0
  %vector714.i = shufflevector <8 x float> %temp715.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1368 = fsub <8 x float> %vector714.i, %loadedValue1217.i
  %1369 = fmul <8 x float> %1368, %1368
  %1370 = fsub float %1366, %loadedValue1252.i
  %1371 = fmul float %1370, %1370
  %temp717.i = insertelement <8 x float> undef, float %1371, i32 0
  %vector716.i = shufflevector <8 x float> %temp717.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1372 = fadd <8 x float> %vector716.i, %1369
  %1373 = fsub float %1364, %loadedValue1287.i
  %1374 = fmul float %1373, %1373
  %temp719.i = insertelement <8 x float> undef, float %1374, i32 0
  %vector718.i = shufflevector <8 x float> %temp719.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1375 = fadd <8 x float> %vector718.i, %1372
  %1376 = fcmp olt <8 x float> %1375, %vector477.i
  %.sext1147.i = sext <8 x i1> %1376 to <8 x i32>
  %a.i10.i = bitcast <8 x i32> %.sext1147.i to <4 x i64>
  %res.i11.i = call i32 @llvm.x86.avx.ptestz.256(<4 x i64> %a.i10.i, <4 x i64> %a.i10.i) #5
  %1377 = and i32 %res.i11.i, 1
  %zero.i12.i = icmp eq i32 %1377, 0
  br i1 %zero.i12.i, label %1378, label %footer271.i

; <label>:1378                                    ; preds = %header270.i
  %1379 = fmul <8 x float> %1375, %vector479.i
  %1380 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1379
  %1381 = call <8 x float> @llvm.x86.avx.sqrt.ps.256(<8 x float> %1375) #5
  %1382 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1381, !fpmath !75
  %1383 = fmul <8 x float> %vector720.i, %1382
  %1384 = fmul <8 x float> %1380, %1383
  %1385 = fmul <8 x float> %1380, %1384
  %1386 = fadd <8 x float> %merge208713.i, %1385
  br label %footer271.i

footer271.i:                                      ; preds = %1378, %header270.i
  %vectorPHI722.i = phi <8 x float> [ %1386, %1378 ], [ undef, %header270.i ]
  %1387 = fcmp olt <8 x float> %1375, %vector477.i
  %merge210723.i = select <8 x i1> %1387, <8 x float> %vectorPHI722.i, <8 x float> %merge208713.i
  %1388 = or i64 %440, 23
  %sunkaddr1118 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1119 = mul i64 %1388, 4
  %sunkaddr1120 = add i64 %sunkaddr1118, %sunkaddr1119
  %sunkaddr1121 = add i64 %sunkaddr1120, 128
  %sunkaddr1122 = inttoptr i64 %sunkaddr1121 to float addrspace(3)*
  %1389 = load float addrspace(3)* %sunkaddr1122, align 4, !alias.scope !70, !noalias !71
  %temp731.i = insertelement <8 x float> undef, float %1389, i32 0
  %vector730.i = shufflevector <8 x float> %temp731.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1390 = fcmp oeq float %1389, 0.000000e+00
  br i1 %1390, label %phi-split-bb45.i, label %header274.i

header274.i:                                      ; preds = %footer271.i
  %1391 = or i64 %440, 20
  %1392 = or i64 %440, 22
  %sunkaddr1123 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1124 = mul i64 %1392, 4
  %sunkaddr1125 = add i64 %sunkaddr1123, %sunkaddr1124
  %sunkaddr1126 = add i64 %sunkaddr1125, 128
  %sunkaddr1127 = inttoptr i64 %sunkaddr1126 to float addrspace(3)*
  %1393 = load float addrspace(3)* %sunkaddr1127, align 8, !alias.scope !70, !noalias !71
  %1394 = or i64 %440, 21
  %sunkaddr1128 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1129 = mul i64 %1394, 4
  %sunkaddr1130 = add i64 %sunkaddr1128, %sunkaddr1129
  %sunkaddr1131 = add i64 %sunkaddr1130, 128
  %sunkaddr1132 = inttoptr i64 %sunkaddr1131 to float addrspace(3)*
  %1395 = load float addrspace(3)* %sunkaddr1132, align 4, !alias.scope !70, !noalias !71
  %sunkaddr1133 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1134 = mul i64 %1391, 4
  %sunkaddr1135 = add i64 %sunkaddr1133, %sunkaddr1134
  %sunkaddr1136 = add i64 %sunkaddr1135, 128
  %sunkaddr1137 = inttoptr i64 %sunkaddr1136 to float addrspace(3)*
  %1396 = load float addrspace(3)* %sunkaddr1137, align 16, !alias.scope !70, !noalias !71
  %temp725.i = insertelement <8 x float> undef, float %1396, i32 0
  %vector724.i = shufflevector <8 x float> %temp725.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1397 = fsub <8 x float> %vector724.i, %loadedValue1217.i
  %1398 = fmul <8 x float> %1397, %1397
  %1399 = fsub float %1395, %loadedValue1252.i
  %1400 = fmul float %1399, %1399
  %temp727.i = insertelement <8 x float> undef, float %1400, i32 0
  %vector726.i = shufflevector <8 x float> %temp727.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1401 = fadd <8 x float> %vector726.i, %1398
  %1402 = fsub float %1393, %loadedValue1287.i
  %1403 = fmul float %1402, %1402
  %temp729.i = insertelement <8 x float> undef, float %1403, i32 0
  %vector728.i = shufflevector <8 x float> %temp729.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1404 = fadd <8 x float> %vector728.i, %1401
  %1405 = fcmp olt <8 x float> %1404, %vector477.i
  %.sext1149.i = sext <8 x i1> %1405 to <8 x i32>
  %a.i7.i = bitcast <8 x i32> %.sext1149.i to <4 x i64>
  %res.i8.i = call i32 @llvm.x86.avx.ptestz.256(<4 x i64> %a.i7.i, <4 x i64> %a.i7.i) #5
  %1406 = and i32 %res.i8.i, 1
  %zero.i9.i = icmp eq i32 %1406, 0
  br i1 %zero.i9.i, label %1407, label %footer275.i

; <label>:1407                                    ; preds = %header274.i
  %1408 = fmul <8 x float> %1404, %vector479.i
  %1409 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1408
  %1410 = call <8 x float> @llvm.x86.avx.sqrt.ps.256(<8 x float> %1404) #5
  %1411 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1410, !fpmath !75
  %1412 = fmul <8 x float> %vector730.i, %1411
  %1413 = fmul <8 x float> %1409, %1412
  %1414 = fmul <8 x float> %1409, %1413
  %1415 = fadd <8 x float> %merge210723.i, %1414
  br label %footer275.i

footer275.i:                                      ; preds = %1407, %header274.i
  %vectorPHI732.i = phi <8 x float> [ %1415, %1407 ], [ undef, %header274.i ]
  %1416 = fcmp olt <8 x float> %1404, %vector477.i
  %merge212733.i = select <8 x i1> %1416, <8 x float> %vectorPHI732.i, <8 x float> %merge210723.i
  %1417 = or i64 %440, 27
  %sunkaddr1138 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1139 = mul i64 %1417, 4
  %sunkaddr1140 = add i64 %sunkaddr1138, %sunkaddr1139
  %sunkaddr1141 = add i64 %sunkaddr1140, 128
  %sunkaddr1142 = inttoptr i64 %sunkaddr1141 to float addrspace(3)*
  %1418 = load float addrspace(3)* %sunkaddr1142, align 4, !alias.scope !70, !noalias !71
  %temp741.i = insertelement <8 x float> undef, float %1418, i32 0
  %vector740.i = shufflevector <8 x float> %temp741.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1419 = fcmp oeq float %1418, 0.000000e+00
  br i1 %1419, label %phi-split-bb45.i, label %header278.i

header278.i:                                      ; preds = %footer275.i
  %1420 = or i64 %440, 24
  %1421 = or i64 %440, 26
  %sunkaddr1143 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1144 = mul i64 %1421, 4
  %sunkaddr1145 = add i64 %sunkaddr1143, %sunkaddr1144
  %sunkaddr1146 = add i64 %sunkaddr1145, 128
  %sunkaddr1147 = inttoptr i64 %sunkaddr1146 to float addrspace(3)*
  %1422 = load float addrspace(3)* %sunkaddr1147, align 8, !alias.scope !70, !noalias !71
  %1423 = or i64 %440, 25
  %sunkaddr1148 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1149 = mul i64 %1423, 4
  %sunkaddr1150 = add i64 %sunkaddr1148, %sunkaddr1149
  %sunkaddr1151 = add i64 %sunkaddr1150, 128
  %sunkaddr1152 = inttoptr i64 %sunkaddr1151 to float addrspace(3)*
  %1424 = load float addrspace(3)* %sunkaddr1152, align 4, !alias.scope !70, !noalias !71
  %sunkaddr1153 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1154 = mul i64 %1420, 4
  %sunkaddr1155 = add i64 %sunkaddr1153, %sunkaddr1154
  %sunkaddr1156 = add i64 %sunkaddr1155, 128
  %sunkaddr1157 = inttoptr i64 %sunkaddr1156 to float addrspace(3)*
  %1425 = load float addrspace(3)* %sunkaddr1157, align 32, !alias.scope !70, !noalias !71
  %temp735.i = insertelement <8 x float> undef, float %1425, i32 0
  %vector734.i = shufflevector <8 x float> %temp735.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1426 = fsub <8 x float> %vector734.i, %loadedValue1217.i
  %1427 = fmul <8 x float> %1426, %1426
  %1428 = fsub float %1424, %loadedValue1252.i
  %1429 = fmul float %1428, %1428
  %temp737.i = insertelement <8 x float> undef, float %1429, i32 0
  %vector736.i = shufflevector <8 x float> %temp737.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1430 = fadd <8 x float> %vector736.i, %1427
  %1431 = fsub float %1422, %loadedValue1287.i
  %1432 = fmul float %1431, %1431
  %temp739.i = insertelement <8 x float> undef, float %1432, i32 0
  %vector738.i = shufflevector <8 x float> %temp739.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1433 = fadd <8 x float> %vector738.i, %1430
  %1434 = fcmp olt <8 x float> %1433, %vector477.i
  %.sext1151.i = sext <8 x i1> %1434 to <8 x i32>
  %a.i4.i = bitcast <8 x i32> %.sext1151.i to <4 x i64>
  %res.i5.i = call i32 @llvm.x86.avx.ptestz.256(<4 x i64> %a.i4.i, <4 x i64> %a.i4.i) #5
  %1435 = and i32 %res.i5.i, 1
  %zero.i6.i = icmp eq i32 %1435, 0
  br i1 %zero.i6.i, label %1436, label %footer279.i

; <label>:1436                                    ; preds = %header278.i
  %1437 = fmul <8 x float> %1433, %vector479.i
  %1438 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1437
  %1439 = call <8 x float> @llvm.x86.avx.sqrt.ps.256(<8 x float> %1433) #5
  %1440 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1439, !fpmath !75
  %1441 = fmul <8 x float> %vector740.i, %1440
  %1442 = fmul <8 x float> %1438, %1441
  %1443 = fmul <8 x float> %1438, %1442
  %1444 = fadd <8 x float> %merge212733.i, %1443
  br label %footer279.i

footer279.i:                                      ; preds = %1436, %header278.i
  %vectorPHI742.i = phi <8 x float> [ %1444, %1436 ], [ undef, %header278.i ]
  %1445 = fcmp olt <8 x float> %1433, %vector477.i
  %merge214743.i = select <8 x i1> %1445, <8 x float> %vectorPHI742.i, <8 x float> %merge212733.i
  %1446 = or i64 %440, 31
  %sunkaddr1158 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1159 = mul i64 %1446, 4
  %sunkaddr1160 = add i64 %sunkaddr1158, %sunkaddr1159
  %sunkaddr1161 = add i64 %sunkaddr1160, 128
  %sunkaddr1162 = inttoptr i64 %sunkaddr1161 to float addrspace(3)*
  %1447 = load float addrspace(3)* %sunkaddr1162, align 4, !alias.scope !70, !noalias !71
  %temp751.i = insertelement <8 x float> undef, float %1447, i32 0
  %vector750.i = shufflevector <8 x float> %temp751.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1448 = fcmp oeq float %1447, 0.000000e+00
  br i1 %1448, label %phi-split-bb45.i, label %header282.i

header282.i:                                      ; preds = %footer279.i
  %1449 = or i64 %440, 28
  %1450 = or i64 %440, 30
  %sunkaddr1163 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1164 = mul i64 %1450, 4
  %sunkaddr1165 = add i64 %sunkaddr1163, %sunkaddr1164
  %sunkaddr1166 = add i64 %sunkaddr1165, 128
  %sunkaddr1167 = inttoptr i64 %sunkaddr1166 to float addrspace(3)*
  %1451 = load float addrspace(3)* %sunkaddr1167, align 8, !alias.scope !70, !noalias !71
  %1452 = or i64 %440, 29
  %sunkaddr1168 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1169 = mul i64 %1452, 4
  %sunkaddr1170 = add i64 %sunkaddr1168, %sunkaddr1169
  %sunkaddr1171 = add i64 %sunkaddr1170, 128
  %sunkaddr1172 = inttoptr i64 %sunkaddr1171 to float addrspace(3)*
  %1453 = load float addrspace(3)* %sunkaddr1172, align 4, !alias.scope !70, !noalias !71
  %sunkaddr1173 = ptrtoint [4480 x i8]* %22 to i64
  %sunkaddr1174 = mul i64 %1449, 4
  %sunkaddr1175 = add i64 %sunkaddr1173, %sunkaddr1174
  %sunkaddr1176 = add i64 %sunkaddr1175, 128
  %sunkaddr1177 = inttoptr i64 %sunkaddr1176 to float addrspace(3)*
  %1454 = load float addrspace(3)* %sunkaddr1177, align 16, !alias.scope !70, !noalias !71
  %temp745.i = insertelement <8 x float> undef, float %1454, i32 0
  %vector744.i = shufflevector <8 x float> %temp745.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1455 = fsub <8 x float> %vector744.i, %loadedValue1217.i
  %1456 = fmul <8 x float> %1455, %1455
  %1457 = fsub float %1453, %loadedValue1252.i
  %1458 = fmul float %1457, %1457
  %temp747.i = insertelement <8 x float> undef, float %1458, i32 0
  %vector746.i = shufflevector <8 x float> %temp747.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1459 = fadd <8 x float> %vector746.i, %1456
  %1460 = fsub float %1451, %loadedValue1287.i
  %1461 = fmul float %1460, %1460
  %temp749.i = insertelement <8 x float> undef, float %1461, i32 0
  %vector748.i = shufflevector <8 x float> %temp749.i, <8 x float> undef, <8 x i32> zeroinitializer
  %1462 = fadd <8 x float> %vector748.i, %1459
  %1463 = fcmp olt <8 x float> %1462, %vector477.i
  %.sext1153.i = sext <8 x i1> %1463 to <8 x i32>
  %a.i.i = bitcast <8 x i32> %.sext1153.i to <4 x i64>
  %res.i.i = call i32 @llvm.x86.avx.ptestz.256(<4 x i64> %a.i.i, <4 x i64> %a.i.i) #5
  %1464 = and i32 %res.i.i, 1
  %zero.i.i = icmp eq i32 %1464, 0
  br i1 %zero.i.i, label %1465, label %phi-split-bb31.i

; <label>:1465                                    ; preds = %header282.i
  %1466 = fmul <8 x float> %1462, %vector479.i
  %1467 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1466
  %1468 = call <8 x float> @llvm.x86.avx.sqrt.ps.256(<8 x float> %1462) #5
  %1469 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1468, !fpmath !75
  %1470 = fmul <8 x float> %vector750.i, %1469
  %1471 = fmul <8 x float> %1467, %1470
  %1472 = fmul <8 x float> %1467, %1471
  %1473 = fadd <8 x float> %merge214743.i, %1472
  br label %phi-split-bb31.i

____Vectorized_.opencl_cutoff_potential_lattice_separated_args.exit: ; preds = %LoopEnd_1.i
  %1474 = bitcast [3 x i64]* %pLocalIds.i to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1474)
  ret void
}

attributes #0 = { noduplicate nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noduplicate "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { alwaysinline noduplicate nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!opencl.kernels = !{!0}
!opencl.enable.FP_CONTRACT = !{}
!opencl.spir.version = !{!7}
!opencl.ocl.version = !{!7}
!opencl.used.extensions = !{!8}
!opencl.used.optional.core.features = !{!8}
!opencl.compiler.options = !{!9}
!llvm.ident = !{!10}
!opencl.kernel_info = !{!11, !28}
!opencl.module_info_list = !{!40}
!llvm.functions_info = !{}
!opencl.functions_stats = !{}
!opencl.stat_descriptions = !{}
!opencl.module_stat_info = !{}

!0 = !{void (i32, i32, <4 x float> addrspace(1)*, i32, float, float, float, float addrspace(1)*, i32, i32 addrspace(2)*, <4 x i32> addrspace(2)*, i8 addrspace(3)*, { i64, [3 x i64], [3 x i64], [2 x [3 x i64]], [3 x i64], {}*, {}* }*, i64*, [4 x i64], i8*, {}*)* @__opencl_cutoff_potential_lattice_separated_args, !1, !2, !3, !4, !5, !6}
!1 = !{!"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 2}
!2 = !{!"kernel_arg_access_qual", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!3 = !{!"kernel_arg_type", !"int", !"int", !"float4*", !"int", !"float", !"float", !"float", !"float*", !"int", !"int*", !"xyz*"}
!4 = !{!"kernel_arg_base_type", !"int", !"int", !"float4*", !"int", !"float", !"float", !"float", !"float*", !"int", !"int*", !"int4*"}
!5 = !{!"kernel_arg_type_qual", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"const", !"const"}
!6 = !{!"kernel_arg_name", !"binDim_x", !"binDim_y", !"binBaseAddr", !"offset", !"h", !"cutoff2", !"inv_cutoff2", !"regionZeroAddr", !"zRegionIndex", !"NbrListLen", !"NbrList"}
!7 = !{i32 1, i32 2}
!8 = !{}
!9 = !{!"-I/home/moon/sourcecode/benchmarks/parboil/parboil/benchmarks/cutcp/src/opencl_base/"}
!10 = !{!"clang version 3.6.2 "}
!11 = !{void (i32, i32, <4 x float> addrspace(1)*, i32, float, float, float, float addrspace(1)*, i32, i32 addrspace(2)*, <4 x i32> addrspace(2)*, i8 addrspace(3)*, { i64, [3 x i64], [3 x i64], [2 x [3 x i64]], [3 x i64], {}*, {}* }*, i64*, [4 x i64], i8*, {}*)* @__opencl_cutoff_potential_lattice_separated_args, !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!13 = !{!"local_buffer_size", i32 4224}
!14 = !{!"barrier_buffer_size", i32 72}
!15 = !{!"kernel_execution_length", i32 28722}
!16 = !{!"max_wg_dimensions", null}
!17 = !{!"kernel_has_barrier", i1 true}
!18 = !{!"kernel_has_global_sync", i1 false}
!19 = !{!"no_barrier_path", i1 false}
!20 = !{!"vectorized_kernel", void (i32, i32, <4 x float> addrspace(1)*, i32, float, float, float, float addrspace(1)*, i32, i32 addrspace(2)*, <4 x i32> addrspace(2)*, i8 addrspace(3)*, { i64, [3 x i64], [3 x i64], [2 x [3 x i64]], [3 x i64], {}*, {}* }*, i64*, [4 x i64], i8*, {}*)* @____Vectorized_.opencl_cutoff_potential_lattice_separated_args}
!21 = !{!"vectorized_width", i32 1}
!22 = !{!"kernel_wrapper", void (i8*, i64*, {}*)* @opencl_cutoff_potential_lattice}
!23 = !{!"scalarized_kernel", null}
!24 = !{!"block_literal_size", null}
!25 = !{!"private_memory_size", i32 72}
!26 = !{!"vectorization_dimension", null}
!27 = !{!"can_unite_workgroups", null}
!28 = !{void (i32, i32, <4 x float> addrspace(1)*, i32, float, float, float, float addrspace(1)*, i32, i32 addrspace(2)*, <4 x i32> addrspace(2)*, i8 addrspace(3)*, { i64, [3 x i64], [3 x i64], [2 x [3 x i64]], [3 x i64], {}*, {}* }*, i64*, [4 x i64], i8*, {}*)* @____Vectorized_.opencl_cutoff_potential_lattice_separated_args, !29}
!29 = !{!13, !30, !31, !16, !17, !18, !32, !33, !34, !35, !36, !24, !37, !38, !39}
!30 = !{!"barrier_buffer_size", i32 192}
!31 = !{!"kernel_execution_length", i32 52268}
!32 = !{!"no_barrier_path", null}
!33 = !{!"vectorized_kernel", null}
!34 = !{!"vectorized_width", i32 8}
!35 = !{!"kernel_wrapper", void (i8*, i64*, {}*)* @__Vectorized_.opencl_cutoff_potential_lattice}
!36 = !{!"scalarized_kernel", void (i32, i32, <4 x float> addrspace(1)*, i32, float, float, float, float addrspace(1)*, i32, i32 addrspace(2)*, <4 x i32> addrspace(2)*, i8 addrspace(3)*, { i64, [3 x i64], [3 x i64], [2 x [3 x i64]], [3 x i64], {}*, {}* }*, i64*, [4 x i64], i8*, {}*)* @__opencl_cutoff_potential_lattice_separated_args}
!37 = !{!"private_memory_size", i32 192}
!38 = !{!"vectorization_dimension", i32 0}
!39 = !{!"can_unite_workgroups", i1 false}
!40 = !{!41, !42, !43}
!41 = !{!"global_variable_total_size", i64 0}
!42 = !{!"gen_addr_space_pointer_counter", null}
!43 = !{!"gen_addr_space_pointer_warnings"}
!44 = !{!45, !47, !48, !49}
!45 = distinct !{!45, !46, !"__opencl_cutoff_potential_lattice_separated_args: %pLocalMemBase"}
!46 = distinct !{!46, !"__opencl_cutoff_potential_lattice_separated_args"}
!47 = distinct !{!47, !46, !"__opencl_cutoff_potential_lattice_separated_args: %pWorkDim"}
!48 = distinct !{!48, !46, !"__opencl_cutoff_potential_lattice_separated_args: %pWGId"}
!49 = distinct !{!49, !46, !"__opencl_cutoff_potential_lattice_separated_args: %pSpecialBuf"}
!50 = !{!47}
!51 = !{!45, !48, !49}
!52 = !{!48}
!53 = !{!45, !47, !49}
!54 = !{!49}
!55 = !{!45, !47, !48}
!56 = !{!45}
!57 = !{!47, !48, !49}
!58 = !{!59, !61, !62, !63}
!59 = distinct !{!59, !60, !"____Vectorized_.opencl_cutoff_potential_lattice_separated_args: %pLocalMemBase"}
!60 = distinct !{!60, !"____Vectorized_.opencl_cutoff_potential_lattice_separated_args"}
!61 = distinct !{!61, !60, !"____Vectorized_.opencl_cutoff_potential_lattice_separated_args: %pWorkDim"}
!62 = distinct !{!62, !60, !"____Vectorized_.opencl_cutoff_potential_lattice_separated_args: %pWGId"}
!63 = distinct !{!63, !60, !"____Vectorized_.opencl_cutoff_potential_lattice_separated_args: %pSpecialBuf"}
!64 = !{!61}
!65 = !{!59, !62, !63}
!66 = !{!62}
!67 = !{!59, !61, !63}
!68 = !{!63}
!69 = !{!59, !61, !62}
!70 = !{!59}
!71 = !{!61, !62, !63}
!72 = !{!73, !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
!75 = !{float 2.500000e+00}
