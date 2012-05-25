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

import org.xmlvm.acl.common.adapter.BitmapDrawableAdapter;
import org.xmlvm.acl.ios.objects.IPhoneView;
import org.xmlvm.iphone.UIImage;

import android.graphics.Rect;
import android.graphics.RectF;

/**
 *
 */
public class IPhoneBitmapDrawableAdapter implements BitmapDrawableAdapter {

    private UIImage image;
    
    public IPhoneBitmapDrawableAdapter(String path) {
        image = UIImage.imageWithContentsOfFile(path);
    }
    
    public IPhoneBitmapDrawableAdapter(UIImage image) {
        this.image = image;
    }

    @Override
    public int getWidth() {
        return (int) image.getSize().width;
    }

    @Override
    public int getHeight() {
        return (int) image.getSize().height;
    }

    public UIImage getImage() {
        return image;
    }
    
    public void setImage(UIImage image) {
        this.image = image;
    }

    @Override
    public BitmapDrawableAdapter cropImage(int x, int y, int width, int height) {
        return new IPhoneBitmapDrawableAdapter(image.cropImage(x, y, width, height));
    }

    @Override
    public void drawInRect(Rect r) {
        image.drawInRect(IPhoneView.toCGRect(r));
    }

    @Override
    public RectF getSize() {
        return IPhoneView.toRectangle(image.getSize());
    }

}
