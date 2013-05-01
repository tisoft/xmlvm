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

import org.xmlvm.acl.common.objects.CommonFont;

import sdljava.SDLException;
import sdljava.ttf.SDLTTF;
import sdljava.ttf.SDLTrueTypeFont;
import sdljava.video.SDLColor;
import sdljava.video.SDLRect;
import sdljava.video.SDLSurface;
import sdljava.video.SDLVideo;

/**
 *
 */
public class SDLFont implements CommonFont {
    public static final String MONOSPACED = "LiberationMono-Regular.ttf";
    public static final String SANS = "LiberationSans-Regular.ttf";
    public static final String SERIF = "LiberationSerif-Regular.ttf";
    
    private SDLTrueTypeFont ttf;
    private String family;
    private float  size;
    
    public SDLFont(float size) {
        this(SDLFont.SANS, size);
    }
    
    public SDLFont(String family, float size) {
        try {
            ttf = SDLTTF.openFont(family, (int) (size * 1.5));
            this.family = family;
            this.size = size;
        } catch (SDLException sdle) {
            // TODO: Log. Also, ensure object behaves appropriately w/o font
        }
    }
    
    public SDLSurface renderText (String text, SDLColor color) {
        if (ttf != null) try {
            if (text.contains("\n")) {
                return renderLines(text, color);
            }
            return ttf.renderTextBlended(text, color);
        } catch (SDLException sdle) {
            //TODO: Log?
        }
        return null;
    }
    
    private SDLSurface renderLines(String text, SDLColor color) {
        String[] lines = text.split("\n");
        SDLSurface[] surfaces = new SDLSurface[lines.length];
        
        int w = 0;
        int h = 0;
        
        for (int i = 0; i < lines.length; i++) {
            surfaces[i] = renderText(lines[i], color);
            if (surfaces[i] != null) {
                w  = Math.max(w, surfaces[i].getWidth());
                h += surfaces[i].getHeight();
            }
        }
        
        try {
            SDLSurface canvas = SDLVideo.createRGBSurface(SDLVideo.SDL_SWSURFACE, 
                    w, h, 32, 
                    0xFF0000000l, 0x00FF0000, 0x0000FF00, 0x000000FF);

            int y = 0;
            for (SDLSurface s : surfaces) {
                s.setAlpha(0, 0xFF);
                s.blitSurface(canvas, SDLUtil.getDrawingRect(1,y,s.getWidth(), s.getHeight()));
                y += s.getHeight();
            }            

            return canvas;
        } catch (SDLException sdle) {
            // TODO: Log/handle
            return null;
        }
    }



    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.objects.CommonFont#familyName()
     */
    @Override
    public String familyName() {
        return family;
    }



    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.objects.CommonFont#fontWithSize(float)
     */
    @Override
    public CommonFont fontWithSize(float size) {
        return new SDLFont(family, size);
    }



    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.objects.CommonFont#pointSize()
     */
    @Override
    public float pointSize() {
        return size;
    }
}
