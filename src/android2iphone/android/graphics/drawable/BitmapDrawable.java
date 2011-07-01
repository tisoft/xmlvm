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

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIImage;

import android.graphics.Canvas;
import android.graphics.Rect;

public class BitmapDrawable extends Drawable {

    private UIImage image;


    private BitmapDrawable(UIImage image) {
        this.image = image;
    }

    public static BitmapDrawable xmlvmCreateWithImage(UIImage image) {
        return new BitmapDrawable(image);
    }

    public UIImage xmlvmGetImage() {
        return image;
    }

    public void xmlvmSetImage(UIImage image) {
        this.image = image;
    }

    public BitmapDrawable xmlvmCropImage(int x, int y, int width, int height) {
        return new BitmapDrawable(image.cropImage(x, y, width, height));
    }

    @Override
    public int getIntrinsicWidth() {
        return (int) image.getSize().width;
    }

    @Override
    public int getIntrinsicHeight() {
        return (int) image.getSize().height;
    }

    @Override
    public void draw(Canvas canvas) {
        Rect r = getBounds();
        image.drawInRect(new CGRect(r.left, r.top, r.right - r.left, r.bottom - r.top));
    }

}
