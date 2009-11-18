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
import android.internal.ResourceMapper;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout.LayoutParams;

public class ImageView extends View {

    public ImageView(Context c) {
        super(c);
        
        //((Activity) c).getWindow().getCGRect());
    }

    public void setImageResource(int resId) {
        getUIImageView().setImage(ResourceMapper.getImageById(resId));
        float width = getUIImageView().getImage().getSize().width;
        float height = getUIImageView().getImage().getSize().height;
        getUIImageView().setFrame(new CGRect(0, 0, width, height));
    }

    public void setLayoutParams(ViewGroup.LayoutParams l) {
        super.setLayoutParams(l);
        AbsoluteLayout.LayoutParams a = (AbsoluteLayout.LayoutParams) l;
        int width = a.width;
        int height = a.height;

        if (width == LayoutParams.WRAP_CONTENT) {
            width = (int) getUIImageView().getImage().getSize().width;
        }
        if (height == LayoutParams.WRAP_CONTENT) {
            height = (int) getUIImageView().getImage().getSize().height;
        }
        getUIImageView().setFrame(new CGRect(a.x, a.y, width, height));
    }

    @Override
    protected UIView xmlvmCreateUIView(AttributeSet attrs) {
        return new UIImageView(new CGRect(0, 0, 0, 0));
    }
    
    private UIImageView getUIImageView() {
        return (UIImageView) xmlvmGetUIView();
    }
}