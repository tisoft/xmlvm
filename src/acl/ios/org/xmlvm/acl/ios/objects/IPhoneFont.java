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

package org.xmlvm.acl.ios.objects;

import org.xmlvm.acl.common.objects.CommonFont;
import org.xmlvm.iphone.UIFont;

/**
 *
 */
public class IPhoneFont implements CommonFont {

    private UIFont font;
    
    public IPhoneFont(UIFont font) {
        this.font = font;
    }
    
    public UIFont getFont() {
        return font;
    }

    public void setFont(UIFont font) {
        this.font = font;
    }

    @Override
    public CommonFont fontWithSize(float size) {
        return new IPhoneFont(this.font.fontWithSize(size));
    }

    @Override
    public float pointSize() {
        return font.pointSize();
    }

    @Override
    public String familyName() {
        return font.familyName();
    }
    
    public static CommonFont systemFontOfSize(float size) {
        return new IPhoneFont(UIFont.systemFontOfSize(size));
    }

    public static CommonFont fontWithNameSize(String name, float pointSize) {
        return new IPhoneFont(UIFont.fontWithNameSize(name, pointSize));
    }
    
    public static float labelFontSize() {
        return UIFont.labelFontSize();
    }

}
