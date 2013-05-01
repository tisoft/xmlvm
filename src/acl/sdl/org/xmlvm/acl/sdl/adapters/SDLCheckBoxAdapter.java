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

import org.xmlvm.acl.common.adapter.CheckBoxAdapter;
import org.xmlvm.acl.sdl.objects.AbstractSDLView;
import org.xmlvm.acl.sdl.objects.SDLFont;

import sdljava.SDLException;
import sdljava.video.SDLColor;
import sdljava.video.SDLSurface;
import sdljava.video.SDLVideo;
import android.graphics.RectF;
import android.internal.Assert;
import android.view.MotionEvent;
import android.widget.CheckBox;

/**
 *
 */
public class SDLCheckBoxAdapter extends AbstractSDLView<CheckBox>
    implements CheckBoxAdapter {
    
    private boolean checked = false;
    
    private static final SDLFont X_FONT = new SDLFont(12.0f);
    private static final SDLColor WHITE = new SDLColor(255,255,255);
    /**
     * @param view
     */
    public SDLCheckBoxAdapter(CheckBox view) {
        super(view);
        updateSurface();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.CheckBoxAdapter#isOn()
     */
    @Override
    public boolean isOn() {
        return checked;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.CheckBoxAdapter#setOn(boolean)
     */
    @Override
    public void setOn(boolean checked) {
        this.checked = checked;
        updateSurface();
    }

    private void updateSurface() {
        int w = 20;
        int h = 20;
        RectF frame = getFrame();
        if (frame != null) {
            w = (int) frame.width();
            h = (int) frame.height();
        }
        try {
            SDLSurface canvas = SDLVideo.createRGBSurface(SDLVideo.SDL_SWSURFACE, 
                w, h, 32, 
                0xFF0000000l, 0x00FF0000, 0x0000FF00, 0x000000FF);
            
            canvas.fillRect(0x80808080l);
            setBackgroundSurface(canvas);
            setSurface(((SDLFont) X_FONT.fontWithSize(Math.max(w,h))).renderText(checked ? "X" : " ", WHITE));
            
        } catch (SDLException e) {
            //TODO: Log exception
        }

    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.objects.CommonView#resignFirstResponder()
     */
    @Override
    public void resignFirstResponder() {
        Assert.NOT_IMPLEMENTED();
    }
    
    @Override
    public boolean handleTouchEvent(MotionEvent event) {
        boolean clicked = false;
        
        RectF frame = getFrame();
        if (frame != null && frame.contains(event.getX(), event.getY())) {
            if (event.getAction() == MotionEvent.ACTION_UP) {
                setOn(!checked);
                clicked = true;
            }
        }
        
        return super.handleTouchEvent(event) | clicked;
    }
    
}
