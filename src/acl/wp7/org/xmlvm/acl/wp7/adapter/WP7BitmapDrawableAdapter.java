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

package org.xmlvm.acl.wp7.adapter;

import org.xmlvm.acl.common.adapter.BitmapDrawableAdapter;

import Compatlib.System.Uri;
import Compatlib.System.UriKind;
import Compatlib.System.Windows.Media.Imaging.BitmapImage;
import android.graphics.Rect;
import android.graphics.RectF;

/**
 *
 */
public class WP7BitmapDrawableAdapter implements BitmapDrawableAdapter {
    
    private BitmapImage image;

    public WP7BitmapDrawableAdapter(String path) {
        this.image = new BitmapImage(new Uri(new Compatlib.System.String(path), UriKind.RelativeOrAbsolute));
    }

    public WP7BitmapDrawableAdapter(BitmapImage source) {
        this.image = source;
    }

    @Override
    public int getWidth() {
        return image.getPixelWidth();
    }

    @Override
    public int getHeight() {
        return image.getPixelHeight();
    }
    
    /**
     * @return the image
     */
    public BitmapImage getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(BitmapImage image) {
        this.image = image;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.BitmapDrawableAdapter#cropImage(int, int, int, int)
     */
    @Override
    public BitmapDrawableAdapter cropImage(int x, int y, int width, int height) {
        // TODO Auto-generated method stub
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.BitmapDrawableAdapter#drawInRectF(android.graphics.RectF)
     */
    @Override
    public void drawInRect(Rect r) {
        // TODO Auto-generated method stub
        
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.BitmapDrawableAdapter#getSize()
     */
    @Override
    public RectF getSize() {
        // TODO Auto-generated method stub
        return null;
    }


}
