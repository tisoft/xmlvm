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
package org.xmlvm.iphone.internal.renderer;

import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.font.LineMetrics;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UIGraphics;

public abstract class UIButtonRenderer extends UIViewRenderer<UIButton> {

    public static final UIColor DEFAULT_TITLE_COLOR_NORMAL        = UIColor.colorWithRGBA(
                                                                          56f / 255f, 84f / 255f,
                                                                          135f / 255f, 1);
    public static final UIColor DEFAULT_TITLE_COLOR_HIGHLIGHTED   = UIColor.whiteColor;
    public static final UIColor DEFAULT_TITLE_SHADOW_COLOR_NORMAL = UIColor.darkGrayColor;
    protected int               edgeDiameter                      = 16;
    private int                 state                             = UIControlState.Normal;


    public UIButtonRenderer(UIButton view) {
        super(view);
    }

    @Override
    public void paint() {
        Graphics2D g = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        CGRect displayRect = view.getFrame();
        drawButton(g, displayRect);
    }

    protected void drawTitle(Graphics2D g, CGRect displayRect) {
        String text = view.getCurrentTitle();
        if (text == null) {
            return;
        }

        Font f = view.getFont() != null ? view.getFont().xmlvmGetFont() : getDefaultFont();
        g.setFont(f);
        Metrics m = getMetrics(g, text, f);

        int x = (int) displayRect.origin.x;
        x += ((int) displayRect.size.width - m.width) / 2;

        int y = (int) displayRect.origin.y;
        y += ((int) displayRect.size.height - m.height) / 2 + m.height - m.descent;

        if (view.getTitleShadowOffset() != null) {
            g.setPaint(view.getCurrentTitleShadowColor().xmlvmGetPaint());
            g.drawString(text, x + view.getTitleShadowOffset().width, y
                    + view.getTitleShadowOffset().height);
        }
        g.setPaint(view.getCurrentTitleColor().xmlvmGetPaint());
        g.drawString(text, x, y);
    }

    public void setEdgeDiameter(int edgeDiameter) {
        this.edgeDiameter = edgeDiameter;
    }

    public void setHighlighted(boolean buttonPressed) {
        state = buttonPressed ? UIControlState.Highlighted : UIControlState.Normal;
    }

    public boolean isHighlighted() {
        return (state & UIControlState.Highlighted) != 0;
    }

    public int getState() {
        return state;
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
