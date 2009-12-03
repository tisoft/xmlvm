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
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.internal.Assert;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout.LayoutParams;

public class ImageView extends View {

    public ImageView(Context c) {
        super(c);

        // ((Activity) c).getWindow().getCGRect());
    }

    public ImageView(Context c, AttributeSet attrs) {
        super(c, attrs);
    }

    public void setImageResource(int resId) {
        Drawable d = getContext().getResources().getDrawable(resId);
        setImageDrawable(d);
    }

    public void setImageDrawable(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            getUIImageView().setImage(((BitmapDrawable) drawable).xmlvmGetImage());
            float width = getUIImageView().getImage().getSize().width;
            float height = getUIImageView().getImage().getSize().height;
            getUIImageView().setFrame(new CGRect(0, 0, width, height));
        } else {
            Assert.NOT_IMPLEMENTED();
        }
    }

    public void setLayoutParams(ViewGroup.LayoutParams l) {
        layoutParams = l;
        int width = l.width;
        int height = l.height;

        if (width == LayoutParams.WRAP_CONTENT) {
            width = (int) getUIImageView().getImage().getSize().width;
        }
        if (height == LayoutParams.WRAP_CONTENT) {
            height = (int) getUIImageView().getImage().getSize().height;
        }
        
        int x = l instanceof AbsoluteLayout.LayoutParams ? ((AbsoluteLayout.LayoutParams) l).x : 0;
        int y = l instanceof AbsoluteLayout.LayoutParams ? ((AbsoluteLayout.LayoutParams) l).y : 0;

        getUIImageView().setFrame(new CGRect(x, y, width, height));
    }

    @Override
    protected UIView xmlvmCreateUIView(AttributeSet attrs) {
        return new UIImageView(new CGRect(0, 0, 0, 0));
    }

    private UIImageView getUIImageView() {
        return (UIImageView) xmlvmGetUIView();
    }
}