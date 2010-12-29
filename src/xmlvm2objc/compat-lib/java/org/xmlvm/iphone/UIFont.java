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

    public String familyName() {
        return font.getFamily();
    }

    public String fontName() {
        return font.getName();
    }

    public float pointSize() {
        return font.getSize();
    }

    @XMLVMIgnore
    public Font xmlvmGetFont() {
        return font;
    }
}
