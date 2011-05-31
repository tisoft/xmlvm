
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

#include <unistd.h>

#include "xmlvm-hy.h"
#include "xmlvm-file.h"


I_64 hyfile_seek (IDATA inFD, I_64 offset, I_32 whence)
{
  int fd = (int)inFD;
  off_t localOffset = (off_t) offset;

  if ((whence < HySeekSet) || (whence > HySeekEnd))
    {
      return -1;
    }

  /* If file offsets are 32 bit, truncate the seek to that range */
  if (sizeof (off_t) < sizeof (I_64))
    {
      if (offset > 0x7FFFFFFF)
        {
          localOffset = 0x7FFFFFFF;
        }
      else if (offset < -0x7FFFFFFF)
        {
          localOffset = -0x7FFFFFFF;
        }
    }

#if (FD_BIAS != 0)
	if (fd < FD_BIAS) {
		/* Cannot seek on STD streams, and no other FD's should exist <FD_BIAS */
		return -1;
	}
#endif

  return (I_64) lseek ((int) (fd - FD_BIAS), localOffset, whence);
}
