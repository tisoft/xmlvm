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

package org.xmlvm.acl.ios.adapter;


import org.xmlvm.acl.common.adapter.TextViewAdapter;
import org.xmlvm.acl.common.objects.CommonFont;
import org.xmlvm.acl.ios.objects.IPhoneFont;
import org.xmlvm.acl.ios.objects.IPhoneView;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UILineBreakMode;
import org.xmlvm.iphone.UITextAlignment;

import android.view.Gravity;
import android.widget.TextView;

/**
 *
 */
public class IPhoneTextViewAdapter extends IPhoneView implements TextViewAdapter {

    public IPhoneTextViewAdapter(TextView textView) {
        super(textView, 0);
        UILabel label = new UILabel();
        label.setLineBreakMode(UILineBreakMode.WordWrap);
        label.setNumberOfLines(0);
        label.setBackgroundColor(UIColor.clearColor);
        this.setView(label);
    }

    @Override
    public CommonFont getFont() {
        return new IPhoneFont(((UILabel)this.getView()).getFont());
    }

    @Override
    public void setFont(CommonFont font) {
        ((UILabel)this.getView()).setFont(((IPhoneFont)font).getFont());
    }

    @Override
    public void setText(String string) {
        ((UILabel)this.getView()).setText(string);
    }

    @Override
    public String getText() {
        return ((UILabel)this.getView()).getText();
    }

    @Override
    public void setGravity(int gravity) {
        int alignment = 0;
        switch (gravity & Gravity.HORIZONTAL_GRAVITY_MASK) {
        case Gravity.CENTER_HORIZONTAL:
            alignment = UITextAlignment.Center;
            break;
        case Gravity.RIGHT:
            alignment = UITextAlignment.Right;
            break;
        case Gravity.LEFT:
        default:
            alignment = UITextAlignment.Left;
        }
        ((UILabel)this.getView()).setTextAlignment(alignment);
    }

    @Override
    public void setTextColor(int color) {
        ((UILabel)this.getView()).setTextColor(IPhoneView.toUIColor(color));
    }
    
}
