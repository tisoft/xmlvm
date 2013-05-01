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

package org.xmlvm.acl.sdl.objects;

import android.graphics.RectF;
import android.view.MotionEvent;
import sdljava.SDLException;
import sdljava.video.SDLRect;
import sdljava.video.SDLSurface;

/**
 *
 */
public abstract class AbstractSDLLayer {
    private SDLSurface surface;
    private SDLSurface parentSurface;
    
    public SDLSurface getNearestParentSurface() {
        return parentSurface;
    }
    

    public void setParentSurface(SDLSurface s) {
        parentSurface = s;
    }

    
    public void setSurface(SDLSurface s) {
        surface = s;
    }
    
    public SDLSurface getSurface() {
        return surface;
    }

    public void paintSurface() {
        paintSurface(surface);
    }
    
    protected void paintSurface(SDLSurface s) {
        if (s != null) {
            try {
                s.updateRect();
            } catch (SDLException e) {
                // TODO: ?
            }
            SDLSurface target = getNearestParentSurface();
            RectF frame = getFrame();
            int left = (int) (frame != null ? frame.left : 0);
            int top  = (int) (frame != null ? frame.top  : 0);
            int w    = (int) (frame != null ? frame.width()  : s.getWidth());
            int h    = (int) (frame != null ? frame.height() : s.getHeight());
            if (target != null) {
                try {
                    int x = ((int) w - s.getWidth()) / 2;
                    int y = ((int) h - s.getHeight()) / 2;
                    s.blitSurface(target, 
                            SDLUtil.getDrawingRect(left + getXOffset() + x, top + getYOffset() + y, w, h));
                } catch (SDLException e) {
                    //TODO: How to handle?
                }
            }
        }
    }
    
    public abstract boolean handleTouchEvent(MotionEvent event);
    public abstract RectF getFrame();
    public abstract int   getXOffset(); 
    public abstract int   getYOffset(); //RectF getReferenceFrame();
    
}
