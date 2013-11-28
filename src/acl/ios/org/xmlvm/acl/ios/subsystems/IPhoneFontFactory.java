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

package org.xmlvm.acl.ios.subsystems;

import org.xmlvm.acl.common.objects.CommonFont;
import org.xmlvm.acl.common.subsystems.CommonFontFactory;
import org.xmlvm.acl.ios.objects.IPhoneFont;
import org.xmlvm.acl.ios.objects.IPhoneView;
import org.xmlvm.iphone.NSString;
import org.xmlvm.iphone.UILineBreakMode;
import org.xmlvm.iphone.UITextAlignment;

import android.graphics.RectF;
import android.internal.Assert;
import android.view.Gravity;

/**
 *
 */
public class IPhoneFontFactory implements CommonFontFactory {

    @Override
    public CommonFont systemFontOfSize(float size) {
        return IPhoneFont.systemFontOfSize(size);
    }

    @Override
    public float labelFontSize() {
        return IPhoneFont.labelFontSize();
    }

    @Override
    public CommonFont fontWithNameSize(String name, float pointSize) {
        return IPhoneFont.fontWithNameSize(name, pointSize);
    }

    @Override
    public RectF sizeWithFont(String text, CommonFont font) {
        RectF rectF = IPhoneView.toRectangle(NSString.sizeWithFont(text, ((IPhoneFont)font).getFont()));
        rectF.right += 1;
        return rectF;
    }

    @Override
    public RectF sizeWithFont(String text, CommonFont font, RectF constraints, int lineBreakMode) {
        switch(lineBreakMode) {
        case CommonFontFactory.LINEBREAK_WORD_WRAP:
            RectF rectF = IPhoneView.toRectangle(NSString.sizeWithFont(text, ((IPhoneFont)font).getFont(), IPhoneView.toCGSize(constraints), UILineBreakMode.WordWrap));
            rectF.right += 1;
            return rectF;
        default:
            Assert.NOT_IMPLEMENTED();
            return null;
        }
    }

    /* (non-Javadoc)
     * @see org.xmlvm.commondevice.CommonDeviceFontFactory#getAlignmentFromGravity()
     */
    @Override
    public int getAlignmentFromGravity(int gravity) {
        switch (gravity & Gravity.HORIZONTAL_GRAVITY_MASK) {
        case Gravity.CENTER_HORIZONTAL:
            return UITextAlignment.Center;
        case Gravity.RIGHT:
            return UITextAlignment.Right;
        case Gravity.LEFT:
        default:
            return UITextAlignment.Left;
        }
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.subsystems.CommonDeviceFontFactory#drawAtPoint(java.lang.String, android.graphics.RectF, org.xmlvm.common.objects.CommonDeviceFont)
     */
    @Override
    public void drawAtPoint(String text, RectF rect, CommonFont font) {
        NSString.drawAtPoint(text, IPhoneView.toCGPoint(rect), ((IPhoneFont)font).getFont());
    }
    
}
