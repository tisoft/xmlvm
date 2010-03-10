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
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Paint;
import java.awt.font.FontRenderContext;
import java.awt.font.LineMetrics;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIFont;

public abstract class UIButtonRenderer extends UIViewRenderer<UIButton> {

    private static final Color DEFAULT_TITLE_SHADOW_COLOR = Color.DARK_GRAY;
    protected int              edgeDiameter               = 16;
    protected boolean          buttonPressed              = false;

    public UIButtonRenderer(UIButton view) {
        super(view);
    }

    @Override
    public void paint() {
        Graphics2D g = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        CGRect displayRect = view.getFrame();
        drawButton(g, displayRect);
    }

    protected void drawTitle(Graphics2D g, CGRect displayRect) {
        if (view.getTitleForState(0) == null)
            return;

        Font f = view.getFont() != null ? view.getFont().xmlvmGetFont() : getDefaultFont();
        g.setFont(f);
        Metrics m = getMetrics(g, view.getTitleForState(0), f);

        int x = (int) displayRect.origin.x;
        x += ((int) displayRect.size.width - m.width) / 2;

        int y = (int) displayRect.origin.y;
        y += ((int) displayRect.size.height - m.height) / 2 + m.height - m.descent;

        if (view.getTitleShadowOffset() != null) {
            Paint p = g.getPaint();
            g.setPaint(view.getTitleShadowColorForState(0) != null ? view
                    .getTitleShadowColorForState(0).xmlvmGetPaint() : DEFAULT_TITLE_SHADOW_COLOR);
            g.drawString(view.getTitleForState(0), x + view.getTitleShadowOffset().width, y
                    + view.getTitleShadowOffset().height);
            g.setPaint(p);
        }
        g.drawString(view.getTitleForState(0), x, y);
    }

    public void setEdgeDiameter(int edgeDiameter) {
        this.edgeDiameter = edgeDiameter;
    }

    public void setButtonPressed(boolean buttonPressed) {
        this.buttonPressed = buttonPressed;
    }

    public boolean isButtonPressed() {
        return buttonPressed;
    }

    public void updateButtonElements() {
    }

    // public void setPressedBackgroundColor(Color pressedBackgroundColor) {
    // this.pressedBackgroundColor = pressedBackgroundColor;
    // }
    //
    // public void setPressedTitleColor(Color pressedTitleColor) {
    // this.pressedTitleColor = pressedTitleColor;
    // }
    public static Metrics getMetrics(Graphics2D g, String txt, Font font) {
        FontRenderContext cx = g.getFontRenderContext();
        LineMetrics lm = font.getLineMetrics(txt, cx);
        Metrics m = new Metrics();
        m.width = (int) font.getStringBounds(txt, cx).getWidth();
        m.height = (int) lm.getHeight();
        m.descent = (int) lm.getDescent();
        return m;
    }

    public static class Metrics {

        public int width, height, descent;
    }

    protected abstract void drawButton(Graphics2D g, CGRect displayRect);

    private Font getDefaultFont() {
        return UIFont.boldSystemFontOfSize(UIFont.buttonFontSize()).xmlvmGetFont();
    }
}
