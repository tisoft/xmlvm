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

package org.xmlvm.acl.wp7.objects;

import org.xmlvm.acl.common.objects.CommonFont;

/**
 *
 */
public class WP7Font implements CommonFont {

    private float pointSize;
    private String familyName;
    
    public WP7Font(String string, float size) {
        this.familyName = string;
        this.pointSize = size;
    }

    @Override
    public CommonFont fontWithSize(float size) {
        return new WP7Font(this.familyName, size);
    }

    @Override
    public float pointSize() {
        return this.pointSize;
    }

    @Override
    public String familyName() {
        return this.familyName;
    }
    
    public static CommonFont systemFontOfSize(float size) {
        return new WP7Font("Segoe UI", size);
    }

    public static CommonFont fontWithNameSize(String name, float pointSize) {
        return new WP7Font(name, pointSize);
    }
    
    public static float labelFontSize() {
        return 16.0f;
    }

}
