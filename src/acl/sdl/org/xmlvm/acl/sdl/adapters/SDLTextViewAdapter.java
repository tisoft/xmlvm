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

import org.xmlvm.acl.common.adapter.TextViewAdapter;
import org.xmlvm.acl.common.objects.CommonFont;
import org.xmlvm.acl.sdl.objects.AbstractSDLView;
import org.xmlvm.acl.sdl.objects.SDLFont;

import sdljava.ttf.SDLTTF;
import sdljava.video.SDLColor;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.internal.Assert;
import android.widget.TextView;

/**
 *
 */
public class SDLTextViewAdapter extends AbstractSDLView<TextView> implements TextViewAdapter {
    private SDLFont    font  = new SDLFont(SDLFont.SANS, 12f);
    private String     text;
    private SDLColor   color = new SDLColor(0,0,0,255);
    
    public SDLTextViewAdapter (TextView textView) {
        super(textView);
    }
    
    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.TextViewAdapter#getFont()
     */
    @Override
    public CommonFont getFont() {
        return font;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.TextViewAdapter#getText()
     */
    @Override
    public String getText() {
        return text;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.TextViewAdapter#setFont(org.xmlvm.acl.common.objects.CommonFont)
     */
    @Override
    public void setFont(CommonFont systemFontOfSize) {
        //TODO: Map family name to approp. Liberation fonts
        font = systemFontOfSize instanceof SDLFont ? (SDLFont) systemFontOfSize : 
                new SDLFont(systemFontOfSize.familyName(), systemFontOfSize.pointSize());
        if (text != null) {
            setText(text);
        }
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.TextViewAdapter#setGravity(int)
     */
    @Override
    public void setGravity(int gravity) {
        Assert.NOT_IMPLEMENTED();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.TextViewAdapter#setText(java.lang.String)
     */
    @Override
    public void setText(String string) {
        text = string;
        setSurface( font.renderText(text == "" ? " " : text, color) );
        if (getSuperview() != null) {
            getSuperview().setNeedsDisplay();
        }
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.adapter.TextViewAdapter#setTextColor(int)
     */
    @Override
    public void setTextColor(int color) {
        this.color = new SDLColor((color & 0xFF0000) >> 16, (color & 0xFF00) >> 8, (color & 0xFF), 0xFF);
        if (text != null) {
            setText(text);
        }
            
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.objects.CommonView#getBackgroundDrawable()
     */
    @Override
    public Drawable getBackgroundDrawable() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.objects.CommonView#resignFirstResponder()
     */
    @Override
    public void resignFirstResponder() {
        Assert.NOT_IMPLEMENTED();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.objects.CommonView#setBackgroundDrawable(android.graphics.drawable.Drawable)
     */
    @Override
    public void setBackgroundDrawable(Drawable d) {
        Assert.NOT_IMPLEMENTED();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.objects.CommonView#setContentMode(int)
     */
    @Override
    public void setContentMode(int mode) {
        Assert.NOT_IMPLEMENTED();
    }

    @Override
    public void setNeedsDisplay() {
        // TODO Auto-generated method stub
        super.setNeedsDisplay();
    }



}
