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

package android.graphics.drawable;

import org.xmlvm.acl.common.adapter.BitmapDrawableAdapter;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.internal.CommonDeviceAPIFinder;

public class BitmapDrawable extends Drawable {

    private BitmapDrawableAdapter image;

    private BitmapDrawable(BitmapDrawableAdapter image) {
        this.image = image;
    }

    public static BitmapDrawable xmlvmCreateWithPath(String path) {
        BitmapDrawableAdapter image = CommonDeviceAPIFinder.instance().getWidgetFactory().createBitmapDrawable(path);
        return new BitmapDrawable(image);
    }
    
    public static BitmapDrawable xmlvmCreateWithImage(BitmapDrawableAdapter image) {
        return new BitmapDrawable(image);
    }

    public BitmapDrawableAdapter xmlvmGetImage() {
        return image;
    }

    public void xmlvmSetImage(BitmapDrawableAdapter image) {
        this.image = image;
    }

    public BitmapDrawable xmlvmCropImage(int x, int y, int width, int height) {
        return new BitmapDrawable(image.cropImage(x, y, width, height));
    }

    @Override
    public int getIntrinsicWidth() {
        return image.getWidth();
    }

    @Override
    public int getIntrinsicHeight() {
        return image.getHeight();
    }

    @Override
    public void draw(Canvas canvas) {
        Rect r = getBounds();
        image.drawInRect(r);
    }

}
