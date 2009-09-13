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

package android.widget;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIButtonType;
import org.xmlvm.iphone.UIControl;
import org.xmlvm.iphone.UIControlDelegate;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout.LayoutParams;

public class Button extends View {
    private String     title;

    public Button(Context c) {
        super(c);
    }

    public void setLayoutParams(ViewGroup.LayoutParams l) {
        super.setLayoutParams(l);
        AbsoluteLayout.LayoutParams a = (AbsoluteLayout.LayoutParams) l;
        if (a.width == LayoutParams.WRAP_CONTENT) {
            // TODO just a rough approximation: 18px per character
            a.width = title.length() * 18 + 20;
        }
        if (a.height == LayoutParams.WRAP_CONTENT) {
            a.height = 25;
        }
        getUIButton().setFrame(new CGRect(a.x, a.y, a.width, a.height));
    }

    public AbsoluteLayout.LayoutParams getLayoutParams() {
        return (AbsoluteLayout.LayoutParams) getCurLayout();
    }

    public void setText(String title) {
        this.title = title;
        getUIButton().setTitle(title, UIControlState.UIControlStateNormal);
    }

    public void setOnClickListener(OnClickListener listener) {
        final OnClickListener theListener = listener;
        getUIButton().addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent() {
                theListener.onClick(Button.this);
            }

        }, UIControl.UIControlEventTouchUpInside);
    }

    @Override
    protected UIView xmlvmCreateUIView() {
        return UIButton.buttonWithType(UIButtonType.UIButtonTypeRoundedRect);
    }
    
    private UIButton getUIButton() {
        return (UIButton) xmlvmGetUIView();
    }
}