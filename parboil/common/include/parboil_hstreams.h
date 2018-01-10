#ifndef __PARBOIL_HSTREAMS_H__
#define __PARBOIL_HSTREAMS_H__

#include <time.h>
#include <stdio.h>
#include <sys/time.h>
#include <hStreams_source.h>
#include <hStreams_app_api.h>
#include <intel-coi/common/COIMacros_common.h>

#undef CHECK_HSTR_RESULT
#define CHECK_HSTR_RESULT(_HSTREAMSFUNC)                                                    \
{                                                                                           \
    _HSTREAMSFUNC;                                             \
}
/*
#define CHECK_HSTR_RESULT(_HSTREAMSFUNC)                                                    \
{                                                                                           \
    DllAccess HSTR_RESULT hstream_result = _HSTREAMSFUNC;                                             \
    if (hstream_result != HSTR_RESULT_SUCCESS)                                              \
    {                                                                                       \
        _hStreams_EmitMessage(HSTR_SEVERITY_ERROR,__FUNCTION__,                             \
                                   "%s returned %s\n",                                      \
                                   hstream_result,                                          \
                                   #_HSTREAMSFUNC,hStreams_ResultGetName(hstream_result));   \
        return hstream_result;                                                              \
    }                                                                                       \
    else                                                                                    \
    {                                                                                       \
        _hStreams_EmitMessage(HSTR_SEVERITY_INFO,__FUNCTION__,                              \
                                   "%s returned %s\n",                                      \
                                   HSTR_INFO_TYPE_GENERAL,                                  \
                                   #_HSTREAMSFUNC, hStreams_ResultGetName(hstream_result));  \
    }                                                                                       \
}
*/

int parboil_hstreams_init(int logical_streams, char * lib_name);
double dtimeGet();
double dtimeSince(double t1,char *str);
double dtimeElapse(double t1);

#endif
