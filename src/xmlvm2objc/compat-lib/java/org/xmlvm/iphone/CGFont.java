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

@XMLVMSkeletonOnly
public class CGFont extends NSObject {

    @XMLVMIgnore
    public Font font;


    private CGFont(Font font) {
        this.font = font;
    }

    @SuppressWarnings("CallToThreadDumpStack")
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
