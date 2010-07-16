/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.iphone;

public class NSMutableData extends NSData {
    private byte[] data = new byte[10000];
    private int    count;

    public int byteCount() {
        return count;
    }

    public int getByte(int i) {
        return data[i];
    }

    public void appendByte(int v) {
        data[count++] = (byte) v;
    }

    /**
     * @param buf
     */
    public void appendBytes(byte[] buf) {
        for (byte b : buf) {
            data[count++] = b;
        }
    }

}
