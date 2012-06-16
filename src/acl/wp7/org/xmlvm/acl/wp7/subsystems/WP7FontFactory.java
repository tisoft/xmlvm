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

package org.xmlvm.acl.wp7.subsystems;

import org.xmlvm.acl.common.objects.CommonFont;
import org.xmlvm.acl.common.subsystems.CommonFontFactory;
import org.xmlvm.acl.wp7.objects.WP7Font;

import android.graphics.RectF;

/**
 *
 */
public class WP7FontFactory implements CommonFontFactory {

    @Override
    public CommonFont systemFontOfSize(float size) {
        return WP7Font.systemFontOfSize(size);
    }

    @Override
    public float labelFontSize() {
        return WP7Font.labelFontSize();
    }

    @Override
    public CommonFont fontWithNameSize(String string, float pointSize) {
        return WP7Font.fontWithNameSize(string, pointSize);
    }

    @Override
    public RectF sizeWithFont(String string, CommonFont font) {
        //TODO HACK!!!
        return new RectF(0, 0, 72, 72);
    }

    @Override
    public RectF sizeWithFont(String string, CommonFont font, RectF constraints,
            int lineBreakMode) {
        //TODO HACK!!!
        return new RectF(0, 0, 72, 72);
    }

    @Override
    public int getAlignmentFromGravity(int gravity) {
        return 0;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceFontFactory#drawAtPoint(java.lang.String, android.graphics.RectF, org.xmlvm.common.objects.CommonDeviceFont)
     */
    @Override
    public void drawAtPoint(String text, RectF rect, CommonFont font) {
        // TODO Auto-generated method stub
        
    }

}
