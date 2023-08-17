/*===--------------------------------------------------------------------------
 *                   ROCm Device Libraries
 *
 * This file is distributed under the University of Illinois Open Source
 * License. See LICENSE.TXT for details.
 *===------------------------------------------------------------------------*/

#include "oclc.h"

size_t
__asan_get_dynamic_lds_size(void)
{
    if (__oclc_ABI_version < 500)
        return 0;
    return ((__constant size_t *)__builtin_amdgcn_implicitarg_ptr())[26];
}
