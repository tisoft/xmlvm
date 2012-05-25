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

package android.graphics;

import org.xmlvm.acl.common.adapter.BitmapDrawableAdapter;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.internal.Assert;
import android.internal.CommonDeviceAPIFinder;

public final class Bitmap {

    public static enum Config {
        ALPHA_8, ARGB_4444, ARGB_8888, RGB_565
    }

    private Drawable drawable;

    private Bitmap(Drawable drawable) {
        this.drawable = drawable;
    }

    public Bitmap(Resources res, int resourceId) {
        drawable = res.getDrawable(resourceId);
    }

    public Drawable getDrawable() {
        return drawable;
    }

    public int getWidth() {
        Rect r = drawable.getBounds();
        return r.right;
    }

    public int getHeight() {
        Rect r = drawable.getBounds();
        return r.bottom;
    }

    public static Bitmap createBitmap(int width, int height, Config rgb565) {
        BitmapDrawableAdapter image = CommonDeviceAPIFinder.instance().getWidgetFactory().createBitmapDrawable(width, height);
        return new Bitmap(BitmapDrawable.xmlvmCreateWithImage(image));
    }

    public static Bitmap createBitmap(Bitmap source, int x, int y, int width, int height) {
        // TODO this only works for BitmapDrawable
        return new Bitmap(((BitmapDrawable) source.drawable).xmlvmCropImage(x, y, width, height));
    }

    public static Bitmap createBitmap (int[] colors, int width, int height, Bitmap.Config config) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public void getPixels (int[] pixels, int offset, int stride, int x, int y, int width, int height) {
        Assert.NOT_IMPLEMENTED();
    }

    public void recycle() {
        Assert.NOT_IMPLEMENTED();
    }
}
