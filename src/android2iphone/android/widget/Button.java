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

package android.widget;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIControl;
import org.xmlvm.iphone.UIControlDelegate;
import org.xmlvm.iphone.UIControlEvent;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UIFont;

import android.content.Context;
import android.internal.XMLVMTheme;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout.LayoutParams;
import org.xmlvm.iphone.UIButtonType;
import org.xmlvm.iphone.UIView;

public class Button extends TextView {
    private static final int INSETS_X = 10;
    private static final int INSETS_Y = 5;

    public Button(Context c) {
        super(c);
        initButton(c, null);
    }

    public Button(Context c, AttributeSet attrs) {
        super(c, attrs);
        initButton(c, attrs);
    }

    private void initButton(Context c, AttributeSet attrs) {
        if (attrs != null && attrs.getAttributeCount() > 0) {
            parseButtonAttributes(attrs);
        }
        setTextColor(XMLVMTheme.BUTTONTEXT_COLOR);
        xmlvmGetViewHandler().setUserInteractionEnabled(true);
    }

    @Override
    public void setLayoutParams(ViewGroup.LayoutParams l) {
        layoutParams = l;

        int width;
        int height;

        if (l instanceof AbsoluteLayout.LayoutParams) {
            CGSize size = xmlvmGetTextSize();
            width = l.width == LayoutParams.WRAP_CONTENT ? (int) size.width + 2 * INSETS_X
                    : l.width;
            height = l.height == LayoutParams.WRAP_CONTENT ? (int) size.height + 2 * INSETS_Y
                    : l.height;

            xmlvmGetViewHandler().setFrame(
                    new CGRect(((AbsoluteLayout.LayoutParams) l).x,
                            ((AbsoluteLayout.LayoutParams) l).y, width, height));
        }
    }

    @Override
    public void setText(String text) {
        this.text = text;
        ((UIButton) xmlvmGetViewHandler().getContentView()).setTitle(text, UIControlState.Normal);
        requestLayout();
    }

    @Override
    public void setTextColor(int color) {
        ((UIButton) xmlvmGetViewHandler().getContentView()).setTitleColor(xmlvmConvertIntToUIColor(color), UIControlState.Normal);
    }

    @Override
    public void setGravity(int gravity) {
        this.gravity = gravity;
        // gravity not supported under iOS UIButton
    }

    @Override
    public void setOnClickListener(OnClickListener listener) {
        if (!(this instanceof CompoundButton)) {
            final OnClickListener theListener = listener;
            ((UIControl) xmlvmGetViewHandler().getContentView()).addTarget(new UIControlDelegate() {

                @Override
                public void raiseEvent(UIControl sender, int eventType) {
                    theListener.onClick(Button.this);
                }

            }, UIControlEvent.TouchUpInside);
        } else {
            super.setOnClickListener(listener);
        }
    }

    @Override
    protected UIView xmlvmNewUIView(AttributeSet attrs) {
        return UIButton.buttonWithType(UIButtonType.RoundedRect);
    }

    private void parseButtonAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);

        // Implementation of attribute parsing

        setIgnoreRequestLayout(false);
    }

    @Override
    protected UIFont xmlvmGetUIFont() {
        return ((UIButton) xmlvmGetViewHandler().getContentView()).getFont();
    }

    @Override
    protected int xmlvmGetInsetsX() {
        return INSETS_X;
    }

    @Override
    protected int xmlvmGetInsetsY() {
        return INSETS_Y;
    }

}
