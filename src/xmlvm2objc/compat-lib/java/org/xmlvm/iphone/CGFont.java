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

import java.awt.Font;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class CGFont extends NSObject {

    @XMLVMIgnore
    public Font font;


    private CGFont(Font font) {
        this.font = font;
    }

    public static CGFont createFromDataProider(CGDataProvider provider) {
        try {
            return new CGFont(Font.createFont(Font.TRUETYPE_FONT, provider.in));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int getAscent() {
        return 0;
    }

    public int getDescent() {
        return 0;
    }

    public int getUnitsPerEm() {
        return 0;
    }
}
