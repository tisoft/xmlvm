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

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.GeneralPath;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIBarButtonItem;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UIGenericToolbar;
import org.xmlvm.iphone.internal.UIBarButtonItemView;

/**
 * 
 * @author teras
 */
public class UIBarButtonItemRenderer extends UIBarItemRenderer {

    public static final UIFont BAR_BUTTON_FONT = UIFont.fontWithNameSize("Arial Bold", 12);

    private static final int   OFFSET          = 13;
    public static final int    CUTOFF          = 6;
    public static final int    TEXT_INSET      = 10;
    private boolean            isBack          = true;

    public UIBarButtonItemRenderer(UIBarButtonItem item, UIBarButtonItemView view) {
        super(item, view);
        this.isBack = false;
    }

    public void setBack(boolean isBack) {
        this.isBack = isBack;
    }

    public boolean isBack() {
        return isBack;
    }

    @Override
    protected void drawButton(Graphics2D g, CGRect rect) {
        UIGenericToolbar bar = (UIGenericToolbar) getBar();
        if (bar == null)
            return;

        int x = (int) rect.origin.x;
        int y = (int) rect.origin.y;
        int w = (int) rect.size.width;
        int h = (int) rect.size.height;
        UIColor base = bar.getTintColor();

        if (base.xmlvmGetPaint() instanceof Color) {
            float newbright;
            if (isHighlighted())
                newbright = 0.7f;
            else
                newbright = 0.8f;

            Color c = (Color) base.xmlvmGetPaint();
            float[] hsb = Color.RGBtoHSB(c.getRed(), c.getGreen(), c.getBlue(), null);
            if (hsb[2] < 0.5)
                if (isHighlighted())
                    newbright = 1f;
                else
                    newbright = 1.3f;
            hsb[2] *= newbright;
            base = UIColor.colorWithHSBA(hsb[0], hsb[1], hsb[2], 1);
        }

        g.setPaint(RendererUtilities.getHalfPaint(base, rect, false));
        if (isBack) {
            float cmin = CUTOFF / 6;
            GeneralPath path = new GeneralPath();
            path.moveTo(x + OFFSET, y);
            path.lineTo(x + w - CUTOFF, y);
            path.quadTo(x + w - cmin, y + cmin, x + w, y + CUTOFF);
            path.lineTo(x + w, y + h - CUTOFF);
            path.quadTo(x + w - cmin, y + h - cmin, x + w - CUTOFF, y + h);
            path.lineTo(x + OFFSET, y + h);
            path.lineTo(x, y + h / 2);
            path.closePath();

            g.fill(path);
            g.setPaint(RendererUtilities.getGradientPaint(base, rect, true, false));
            g.draw(path);

            rect = new CGRect(rect.origin.x + CUTOFF / 2, rect.origin.y, rect.size.width - CUTOFF
                    / 2, rect.size.height);
        } else {
            g.fillRoundRect(x, y, w, h, OFFSET, OFFSET);
            g.setPaint(RendererUtilities.getGradientPaint(base, rect, true, false));
            g.drawRoundRect(x, y, w, h, OFFSET, OFFSET);
        }
        g.setColor(Color.WHITE);
        drawTitle(g, rect);
    }
}
