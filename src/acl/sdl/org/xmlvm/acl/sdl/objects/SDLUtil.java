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

import sdljava.video.SDLRect;

/**
 *
 */
public class SDLUtil {
    private static final SDLRect DRAWING_RECT = new SDLRect(0,0,0,0);
    
    /**
     * Get an SDLRect instance to use for drawing.
     * Note that the same object is re-used to minimize temporary allocations - the 
     * returned object should only be used for temporary purposes (such as 
     * drawing)
     * @param x
     * @param y
     * @param w
     * @param h
     * @return an SDLRect with the requested bounds
     */
    public static SDLRect getDrawingRect(int x, int y, int w, int h) {
        DRAWING_RECT.x = x;
        DRAWING_RECT.y = y;
        DRAWING_RECT.width = w;
        DRAWING_RECT.height = h;
        return DRAWING_RECT;
    }
}
