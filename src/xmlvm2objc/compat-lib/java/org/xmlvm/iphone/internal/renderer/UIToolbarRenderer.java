/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.iphone.internal.renderer;

import java.awt.Graphics2D;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIGraphics;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.internal.UIGenericBarHelper;

/**
 * 
 * @author teras
 */
public class UIToolbarRenderer extends UIViewRenderer {

    public final static int      HEIGHT_NOPROMT   = 44;
    public final static int      HEIGHT_WITHPROMT = 74;
    private final static float   TRANSLUCENT      = 0.9f;
    public final static UIColor  defaultColor     = UIColor.colorWithRGBA(98f / 255f, 124f / 255f,
                                                          159f / 255f, 1f);
    private final static UIColor upline           = UIColor.colorWithRGBA(55f / 255f, 58f / 255f,
                                                          61f / 255f, 1f);
    public static final float    INIT_OFFSET      = -4;
    public static final float    OFFSET           = 10;
    public static final float    PROMPT_DIFF      = 30;
    public static final float    TOP_OFFSET       = 9;
    public static final float    BOTTOM_OFFSET    = 6;


    public UIToolbarRenderer(UIView view) {
        super(view);
    }

    @Override
    public void paint() {
        Graphics2D g = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        CGRect rect = view.getFrame();
        int x = (int) rect.origin.x;
        int y = (int) rect.origin.y;
        int w = (int) rect.size.width;
        int h = (int) rect.size.height;

        UIColor base = RendererUtilities.getUIColor(UIGenericBarHelper.getTintColor(view),
                UIGenericBarHelper.isTranslucent(view) ? TRANSLUCENT : 1);
        g.setPaint(RendererUtilities.getHalfPaint(base, rect, false));
        g.fillRect(x, y, w, h);
        g.setPaint(RendererUtilities.getTransColor(base, 1, 0.5f, 0.5f));
        g.drawLine(x, y + h, x + w, y + h);
        g.setPaint(RendererUtilities.getTransColor(base, 1, 0.5f, 1.5f));
        g.drawLine(x, y + 1, x + w, y + 1);
        g.setPaint(upline.xmlvmGetPaint());
        g.drawLine(x, y, x + w, y);
    }
}
