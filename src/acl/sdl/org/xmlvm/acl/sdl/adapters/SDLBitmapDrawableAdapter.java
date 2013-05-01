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

package org.xmlvm.acl.sdl.adapters;

import org.xmlvm.acl.common.adapter.BitmapDrawableAdapter;

import sdljava.SDLException;
import sdljava.image.SDLImage;
import sdljava.video.SDLSurface;
import sdljava.video.SDLVideo;
import android.graphics.Rect;
import android.graphics.RectF;

/**
 *
 */
public class SDLBitmapDrawableAdapter implements BitmapDrawableAdapter {
    private SDLSurface surface;

    public SDLBitmapDrawableAdapter(String location) {
        try {
            this.surface = SDLImage.load(location);
        } catch (SDLException e) {
            //TODO: Exception handling
        }
    }
    
    public SDLBitmapDrawableAdapter(SDLSurface surface) {
        this.surface = surface;
    }
    
    public SDLBitmapDrawableAdapter(int width, int height) {
        try {
            this.surface = SDLVideo.createRGBSurface(SDLVideo.SDL_SWSURFACE, width, height, 24, 
                    0x000000FF, 0x0000FF00, 0x00FF0000, 0xFF000000);
        } catch (SDLException e) {
            //TODO: Exception handling
        }        
    }
    
    public SDLSurface getSurface() {
        return surface;
    }
    
    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.BitmapDrawableAdapter#cropImage(int, int, int, int)
     */
    @Override
    public BitmapDrawableAdapter cropImage(int x, int y, int width, int height) {
        // TODO Auto-generated method stub
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.BitmapDrawableAdapter#drawInRect(android.graphics.Rect)
     */
    @Override
    public void drawInRect(Rect r) {
        // TODO Auto-generated method stub

    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.BitmapDrawableAdapter#getHeight()
     */
    @Override
    public int getHeight() {
        return surface.getHeight();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.BitmapDrawableAdapter#getSize()
     */
    @Override
    public RectF getSize() {
        // TODO Auto-generated method stub
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.BitmapDrawableAdapter#getWidth()
     */
    @Override
    public int getWidth() {
        return surface.getWidth();
    }

}
