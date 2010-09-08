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

/**
 * @author teras
 * 
 */
@XMLVMSkeletonOnly
public class UIFont extends NSObject {

    private final Font font;

    private UIFont(String name, int fontsize) {
        int type = Font.PLAIN;
        name = name == null ? "" : name;
        String lower = name.toLowerCase();
        if (lower.indexOf("bold") >= 0) {
            type |= Font.BOLD;
            name = name.replaceAll("[bB][oO][lL][dD]", "");
        }
        if (lower.indexOf("italic") >= 0) {
            type |= Font.ITALIC;
            name = name.replaceAll("[iI][tT][aA][lL][iI][cC]", "");
        }
        name = name.replace("  ", " ");
        name = name.trim();
        font = new Font(name, type, fontsize);
    }

    public static UIFont systemFontOfSize(float fontSize) {
        return new UIFont("Arial", Math.round(fontSize));
    }

    public static UIFont boldSystemFontOfSize(float fontSize) {
        return new UIFont("Arial bold", Math.round(fontSize));
    }

    public static UIFont italicSystemFontOfSize(float fontSize) {
        return new UIFont("Arial italic", Math.round(fontSize));
    }

    public UIFont fontWithSize(float fontSize) {
        return new UIFont(font.getFontName(), Math.round(fontSize));
    }

    public static UIFont fontWithNameSize(String name, float fontsize) {
        return new UIFont(name, Math.round(fontsize));
    }

    public static float buttonFontSize() {
        return 14.0f;
    }

    public static float labelFontSize() {
        return 16.0f;
    }

    @XMLVMIgnore
    public Font xmlvmGetFont() {
        return font;
    }
}
