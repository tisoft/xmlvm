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

package org.xmlvm.acl.sdl.subsystems;

import org.xmlvm.acl.common.objects.CommonFont;
import org.xmlvm.acl.common.subsystems.CommonFontFactory;
import org.xmlvm.acl.sdl.objects.SDLFont;

import sdljava.SDLException;
import sdljava.ttf.SDLTTF;
import sdljava.video.SDLColor;
import sdljava.video.SDLSurface;
import android.graphics.RectF;
import android.internal.Assert;

/**
 *
 */
public class SDLFontFactory implements CommonFontFactory {

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonFontFactory#drawAtPoint(java.lang.String, android.graphics.RectF, org.xmlvm.acl.common.objects.CommonFont)
     */
    @Override
    public void drawAtPoint(String text, RectF rect, CommonFont font) {
        Assert.NOT_IMPLEMENTED();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonFontFactory#fontWithNameSize(java.lang.String, float)
     */
    @Override
    public CommonFont fontWithNameSize(String string, float pointSize) {
        return systemFontOfSize(pointSize); //TODO: Allow named fonts!
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonFontFactory#getAlignmentFromGravity(int)
     */
    @Override
    public int getAlignmentFromGravity(int gravity) {
        Assert.NOT_IMPLEMENTED();
        return 0;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonFontFactory#labelFontSize()
     */
    @Override
    public float labelFontSize() {
        Assert.NOT_IMPLEMENTED();
        return 0;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonFontFactory#sizeWithFont(java.lang.String, org.xmlvm.acl.common.objects.CommonFont)
     */
    @Override
    public RectF sizeWithFont(String string, CommonFont font) {
        try {
            SDLSurface surf = (font instanceof SDLFont) ? ((SDLFont) font).renderText(string,
                    new SDLColor(255, 255, 255)) : SDLTTF.openFont(SDLFont.MONOSPACED,
                    (int) font.pointSize()).renderTextBlended(string, new SDLColor(255, 255, 255));
            if (surf != null) {
                return new RectF(0, 0, surf.getWidth(), surf.getHeight());
            }
        } catch (SDLException sdle) {
            //TODO: Log?
            
        }
        return new RectF(0,0,0,0);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonFontFactory#sizeWithFont(java.lang.String, org.xmlvm.acl.common.objects.CommonFont, android.graphics.RectF, int)
     */
    @Override
    public RectF sizeWithFont(String string, CommonFont font, RectF constraints, int lineBreakMode) {
        RectF r = sizeWithFont(string, font);
        return new RectF(Math.max(r.left, constraints.left), Math.max(r.top, constraints.top),
                Math.min(r.right, constraints.right), Math.min(r.bottom, constraints.bottom));
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonFontFactory#systemFontOfSize(float)
     */
    @Override
    public CommonFont systemFontOfSize(float size) {
        return new SDLFont(size);
    }

}
