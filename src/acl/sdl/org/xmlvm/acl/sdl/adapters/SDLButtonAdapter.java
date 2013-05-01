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
import org.xmlvm.acl.common.adapter.ButtonAdapter;

import sdljava.SDLException;
import sdljava.video.SDLSurface;
import sdljava.video.SDLVideo;
import android.graphics.RectF;
import android.view.View.OnClickListener;
import android.widget.Button;

/**
 *
 */
public class SDLButtonAdapter extends SDLTextViewAdapter
    implements ButtonAdapter {

    /**
     * @param textView
     */
    public SDLButtonAdapter(Button textView) {
        super(textView);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.ButtonAdapter#getCurrentBackgroundImage()
     */
    @Override
    public BitmapDrawableAdapter getCurrentBackgroundImage() {
        // TODO Auto-generated method stub
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.ButtonAdapter#getTextSize()
     */
    @Override
    public float getTextSize() {
        return this.getFont().pointSize();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.ButtonAdapter#setImage(org.xmlvm.acl.common.adapter.BitmapDrawableAdapter, int)
     */
    @Override
    public void setImage(BitmapDrawableAdapter img, int controlState) {
        // TODO Auto-generated method stub
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.ButtonAdapter#setOnClickListener(android.view.View.OnClickListener)
     */
    @Override
    public void setOnClickListener(OnClickListener listener) {
        // Nothing special needed
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.ButtonAdapter#setTextSize(float)
     */
    @Override
    public void setTextSize(float size) {
        setFont(getFont().fontWithSize(size));
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.ButtonAdapter#setTitle(java.lang.String)
     */
    @Override
    public void setTitle(String text) {
        this.setText(text); //TODO: Need to look like a button
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.ButtonAdapter#setTitleColor(int)
     */
    @Override
    public void setTitleColor(int color) {
        this.setTextColor(color);
    }
    
    @Override
    public void setFrame(RectF frame) {
        super.setFrame(frame);
        prepareBackgroundSurface();
    }
    
    private void prepareBackgroundSurface() {
        RectF f = getFrame();
        if (f != null) {
            try {
                SDLSurface canvas = SDLVideo.createRGBSurface(SDLVideo.SDL_SWSURFACE, 
                        (int) f.width(), (int) f.height(), 32, 
                        0xFF0000000l, 0x00FF0000, 0x0000FF00, 0x000000FF);
                
                canvas.fillRect(0x80808080l);

                setBackgroundSurface(canvas);
            } catch (SDLException sdle) {
                // TODO: Log
            }
        }
    }


}
