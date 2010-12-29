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

package android.internal;

import android.content.Context;
import android.util.DisplayMetrics;

public class Dimension {

    public static float resolveDimension(Context context, String dimension, DisplayMetrics metrics) {
        // A missing dimension is interpreted as 0 pixel
        if (dimension == null || dimension.length() == 0) {
            return -1.0f;
        }

        // Resolve dimension resource reference
        if (dimension.startsWith("@dimen/")) {
            String name = getResourceName(dimension);
            int id = context.getResources().getIdentifier(name, "dimen",
                    AndroidManifest.getPackageName());
            return (int) context.getResources().getDimension(id);
        }

        if (dimension.length() > 2 && dimension.endsWith("px")) {
            return Float.parseFloat(dimension.substring(0, dimension.length() - 2));
        }

        if (dimension.length() > 2 && dimension.endsWith("dp")) {
            return Float.parseFloat(dimension.substring(0, dimension.length() - 2))
                    * metrics.density;
        }

        if (dimension.length() > 3 && dimension.endsWith("dip")) {
            return Float.parseFloat(dimension.substring(0, dimension.length() - 3))
                    * metrics.density;
        }

        // TODO: Proper handling of sp dimensions
        if (dimension.length() > 2 && dimension.endsWith("sp")) {
            return (int) (Integer.parseInt(dimension.substring(0, dimension.length() - 2)) * getDensityFactor());
        }

        Assert.FAIL("layout dimension not supported: " + dimension);
        return -1.0f;
    }

    private static final float getDensityFactor() {
        return ((float) DisplayMetrics.DENSITY_DEFAULT) / 160.0f;
    }

    private static String getResourceName(String resourceName) {
        return resourceName.substring(resourceName.indexOf('/') + 1);
    }

}
