/*
 * (c) 2007 The Board of Trustees of the University of Illinois.
 */

#include <parboil_hstreams.h>

int parboil_hstreams_init(int logical_streams, char * lib_name)
{
  uint32_t places_per_domain = 1;
  uint32_t logical_streams_per_place = logical_streams;
  HSTR_OPTIONS hstreams_options;

  hStreams_GetCurrentOptions(&hstreams_options, sizeof(hstreams_options));
  hstreams_options.verbose = 0;
  hstreams_options.phys_domains_limit = 256;  // Limit to 256 domains
  char *libNames[20] = {NULL,NULL};
  unsigned int libNameCnt = 0;
  libNames[libNameCnt++] = lib_name;
  hstreams_options.libNames = libNames;
  hstreams_options.libNameCnt = (uint16_t)libNameCnt;
  hStreams_SetOptions(&hstreams_options);

  int iret = hStreams_app_init(places_per_domain, logical_streams_per_place);
  if( iret != 0 ) 
  {
    printf("hstreams_app_init failed!\r\n");
    exit(-1);
  }
 
  return 0;

}
double dtimeElapse(double t1)
{
  double t2;
  double telapsed;
  struct timeval tv2;
  gettimeofday(&tv2,NULL);
  t2 = (tv2.tv_sec) * 1.0e6 + tv2.tv_usec;
  telapsed = t2 - t1;
  return( telapsed );
}
double dtimeSince(double t1,char *str)
{
  double t2;
  double telapsed;
  struct timeval tv2;
  gettimeofday(&tv2,NULL);
  t2 = (tv2.tv_sec) *1.0e6 + tv2.tv_usec;
  telapsed = t2 - t1;
  printf("%.5g secs <-- Elapsed Time for: '%s'\r\n",telapsed,str);
  fflush(stdout);
  return( telapsed );
}
double dtimeGet()
{
  double t;
  struct timeval tv1;
  gettimeofday(&tv1,NULL);
  t = (tv1.tv_sec)* 1.0e6 + tv1.tv_usec;
  t = t / 1.0e6;
  return(t);
}
