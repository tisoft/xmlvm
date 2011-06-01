
/*
 * Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

#ifndef __XMLVM_FILE_H__

#define __XMLVM_FILE_H__

#include "xmlvm.h"

#ifdef ZOS
#define FD_BIAS 1000
#undef fwrite
#undef fread
#else
#define FD_BIAS 0
#endif /* ZOS */

#define org_apache_harmony_luni_platform_IFileSystem_SHARED_LOCK_TYPE 1L
#define org_apache_harmony_luni_platform_IFileSystem_EXCLUSIVE_LOCK_TYPE 2L
#define org_apache_harmony_luni_platform_IFileSystem_SEEK_SET 1L
#define org_apache_harmony_luni_platform_IFileSystem_SEEK_CUR 2L
#define org_apache_harmony_luni_platform_IFileSystem_SEEK_END 4L
#define org_apache_harmony_luni_platform_IFileSystem_O_RDONLY 0L
#define org_apache_harmony_luni_platform_IFileSystem_O_WRONLY 1L
#define org_apache_harmony_luni_platform_IFileSystem_O_RDWR 16L
#define org_apache_harmony_luni_platform_IFileSystem_O_RDWRSYNC 32L
#define org_apache_harmony_luni_platform_IFileSystem_O_APPEND 256L
#define org_apache_harmony_luni_platform_IFileSystem_O_CREAT 4096L
#define org_apache_harmony_luni_platform_IFileSystem_O_EXCL 65536L
#define org_apache_harmony_luni_platform_IFileSystem_O_NOCTTY 1048576L
#define org_apache_harmony_luni_platform_IFileSystem_O_NONBLOCK 16777216L
#define org_apache_harmony_luni_platform_IFileSystem_O_TRUNC 268435456L

I_64 hyfile_seek (IDATA inFD, I_64 offset, I_32 whence);


#endif
