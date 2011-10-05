/* Copyright (c) 2002-2011 by XMLVM.org
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

package org.xmlvm.iphone;

import org.xmlvm.XMLVMSkeletonOnly;

/**
 *
 */
@XMLVMSkeletonOnly
public final class CGBitmapInfo {
    public static final int kCGBitmapAlphaInfoMask     = 0x1F;
    public static final int kCGBitmapFloatComponents   = (1 << 8);

    public static final int kCGBitmapByteOrderMask     = 0x7000;
    public static final int kCGBitmapByteOrderDefault  = (0 << 12);
    public static final int kCGBitmapByteOrder16Little = (1 << 12);
    public static final int kCGBitmapByteOrder32Little = (2 << 12);
    public static final int kCGBitmapByteOrder16Big    = (3 << 12);
    public static final int kCGBitmapByteOrder32Big    = (4 << 12);
    
    private CGBitmapInfo() {
    }

}
