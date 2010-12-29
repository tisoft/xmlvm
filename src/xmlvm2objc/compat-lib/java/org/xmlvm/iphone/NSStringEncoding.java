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
 * @author teras
 */
@XMLVMSkeletonOnly
public class NSStringEncoding {

    public static final int ASCII             = 1;
    public static final int NEXTSTEP          = 2;
    public static final int JapaneseEUC       = 3;
    public static final int UTF8              = 4;
    public static final int ISOLatin1         = 5;
    public static final int Symbol            = 6;
    public static final int NonLossyASCII     = 7;
    public static final int ShiftJIS          = 8;
    public static final int ISOLatin2         = 9;
    public static final int Unicode           = 10;
    public static final int WindowsCP1251     = 11;
    public static final int WindowsCP1252     = 12;
    public static final int WindowsCP1253     = 13;
    public static final int WindowsCP1254     = 14;
    public static final int WindowsCP1250     = 15;
    public static final int ISO2022JP         = 21;
    public static final int MacOSRoman        = 30;
    public static final int UTF16             = Unicode;
    public static final int UTF16BigEndian    = 0x90000100;
    public static final int UTF16LittleEndian = 0x94000100;
    public static final int UTF32             = 0x8c000100;
    public static final int UTF32BigEndian    = 0x98000100;
    public static final int UTF32LittleEndian = 0x9c000100;


    final static String convertIntToString(int value) {
        switch (value) {
        case 1:
            return "US-ASCII";
        case 2:
            return "UNSUPPORTED";
        case 3:
            return "EUC-JP";
        case 4:
            return "UTF-8";
        case 5:
            return "ISO-8859-1";
        case 6:
            return "x-MacSymbol";
        case 7:
            return "US-ASCII";
        case 8:
            return "Shift_JIS";
        case 9:
            return "ISO-8859-2";
        case 10:
            return "UTF-16";
        case 11:
            return "windows-1251";
        case 12:
            return "windows-1252";
        case 13:
            return "windows-1253";
        case 14:
            return "windows-1254";
        case 15:
            return "windows-1250";
        case 21:
            return "ISO-2022-JP";
        case 30:
            return "x-MacRoman";
        case 0x90000100:
            return "UTF-16BE";
        case 0x94000100:
            return "UTF-16LE";
        case 0x8c000100:
            return "UNSUPPORTED";
        case 0x98000100:
            return "UNSUPPORTED";
        case 0x9c000100:
            return "UNSUPPORTED";
        }
        return "UTF-8";
    }
}
