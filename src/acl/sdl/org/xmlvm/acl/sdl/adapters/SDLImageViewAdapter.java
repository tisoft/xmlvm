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
import org.xmlvm.acl.common.adapter.ImageViewAdapter;
import org.xmlvm.acl.common.objects.CommonView;
import org.xmlvm.acl.sdl.objects.AbstractSDLView;
import org.xmlvm.acl.sdl.objects.SDLUtil;

import sdljava.SDLException;
import sdljava.video.SDLRect;
import sdljava.video.SDLSurface;
import sdljava.video.SDLVideo;
import sdljavax.gfx.SDLGfx;
import android.graphics.RectF;
import android.internal.Assert;
import android.widget.ImageView;

/**
 *
 */
public class SDLImageViewAdapter extends AbstractSDLView<ImageView> implements ImageViewAdapter {

    private int   contentMode = 0;
    private BitmapDrawableAdapter image;
    private float xScale = 1f;
    private float yScale = 1f;
    
    /**
     * @param view
     */
    public SDLImageViewAdapter(ImageView view) {
        super(view);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.ImageViewAdapter#getImage()
     */
    @Override
    public BitmapDrawableAdapter getImage() {
        return image;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.ImageViewAdapter#setImage(org.xmlvm.acl.common.adapter.BitmapDrawableAdapter)
     */
    @Override
    public void setImage(BitmapDrawableAdapter xmlvmGetImage) {
        this.image = xmlvmGetImage;
        updateSurface();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.objects.CommonView#resignFirstResponder()
     */
    @Override
    public void resignFirstResponder() {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void setContentMode(int mode) {
        contentMode = mode;
        updateSurface();
    }
    
    @Override
    public void setFrame(RectF frame) {
        super.setFrame(frame);
        updateSurface();
    }
    
    private void updateBounds() {
        RectF frame = getFrame();
        if (frame != null & image != null) {
            float xs = frame.width()  / image.getWidth();
            float ys = frame.height() / image.getHeight();
    
            switch (contentMode) {
            case CommonView.SCALE_TO_FILL:
                xScale = xs;
                yScale = ys;
                break;
            case CommonView.SCALE_ASPECT_FIT:
                xScale = yScale = Math.min(xs, ys);
                break;
            case CommonView.SCALE_ASPECT_FILL:
                xScale = yScale = Math.max(xs, ys);
                break;
            case CommonView.CENTER:
                xScale = yScale = 1f;
                break;
            default:
                Assert.NOT_IMPLEMENTED();
                break;
            }
        }
    }

    private void updateSurface() {
        if (image instanceof SDLBitmapDrawableAdapter) {
            try {
                RectF frame = getFrame();
                if (frame == null) {
                    return;
                }

                updateBounds();
                
                if (xScale < 0 || yScale < 0) {
                    return;
                }
                
                SDLBitmapDrawableAdapter sdlImage = (SDLBitmapDrawableAdapter) image;
                
                SDLSurface surface = SDLGfx.zoomSurface(sdlImage.getSurface(), xScale, yScale, false);

                int x = (int) (frame.width() / 2 - surface.getWidth()  / 2);
                int y = (int) (frame.height() / 2 - surface.getHeight() / 2);
                if (x != 0 || y != 0) {               
                    SDLSurface canvas = SDLVideo.createRGBSurface(SDLVideo.SDL_SWSURFACE, 
                        (int) frame.width(), (int) frame.height(), 32, 
                        0xFF0000000l, 0x00FF0000, 0x0000FF00, 0x000000FF);
                    surface.setAlpha(0, 0xFF);
                    surface.blitSurface(canvas, 
                            SDLUtil.getDrawingRect(x, y, surface.getWidth(), surface.getHeight()));
                    surface = canvas;
                }
                setSurface(surface);
            } catch (SDLException sdle) {
                
            }
        }
    }
    

}
