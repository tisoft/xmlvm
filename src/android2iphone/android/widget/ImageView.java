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
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;

import android.app.Activity;
import android.content.Context;
import android.internal.ResourceMapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout.LayoutParams;

public class ImageView extends View {
    protected UIImageView image;

    public void setImageResource(int resId) {
        this.image.setImage(UIImage.imageAtPath(ResourceMapper.getFileNameById(resId)));
    }

    public void setLayoutParams(ViewGroup.LayoutParams l) {
        super.setLayoutParams(l);
        AbsoluteLayout.LayoutParams a = (AbsoluteLayout.LayoutParams) l;
        int width = a.width;
        int height = a.height;

        if (width == LayoutParams.WRAP_CONTENT) {
            width = (int) image.getImage().getSize().width;
        }
        if (height == LayoutParams.WRAP_CONTENT) {
            height = (int) image.getImage().getSize().height;
        }
        image.setFrame(new CGRect(a.x, a.y, width, height));
    }

    public ImageView(Context c) {
        super(c);
        image = new UIImageView(((Activity) c).getWindow().getCGRect());
        this.addSubview(image);
    }

    public AbsoluteLayout.LayoutParams getLayoutParams() {
        return (AbsoluteLayout.LayoutParams) getCurLayout();
    }
}