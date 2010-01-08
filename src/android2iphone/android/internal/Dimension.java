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

package android.internal;

public class Dimension {

    private static final int DISPLAY_DENSITY = 160;

    public static int resolveDimension(String dimension) {
        // A missing dimension is interpreted as 0 pixel
        if (dimension == null || dimension.length() == 0) {
            return -1;
        }

        if (dimension.length() > 2 && dimension.endsWith("px")) {
            return Integer.parseInt(dimension.substring(0, dimension.length() - 2));
        }

        if (dimension.length() > 2 && dimension.endsWith("dp")) {
            return (int) (Integer.parseInt(dimension.substring(0, dimension.length() - 2)) * getDensityFactor());
        }

        if (dimension.length() > 3 && dimension.endsWith("dip")) {
            return (int) (Integer.parseInt(dimension.substring(0, dimension.length() - 3)) * getDensityFactor());
        }

        Assert.FAIL("layout dimension not supported: " + dimension);
        return -1;
    }

    private static final float getDensityFactor() {
        return ((float) DISPLAY_DENSITY) / 160.0f;
    }
}
