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

import java.awt.Color;
import java.awt.GradientPaint;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIGraphics;
import org.xmlvm.iphone.UISlider;

/**
 * 
 * @author teras
 */
public class UISliderRenderer extends UIViewRenderer<UISlider> {

    private static final int  THICKNESS            = 8;
    private static final int  KNOBSIZE             = 20;
    public static final float SLIDER_BUTTON_WIDTH  = 114.0f;
    public static final float SLIDER_BUTTON_HEIGHT = 22.0f;


    public UISliderRenderer(UISlider view) {
        super(view);
    }

    @Override
    public void paint() {
        float minimum = view.getMinimumValue();
        float maximum = view.getMaximumValue();
        float value = view.getValue();

        Graphics2D g = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        CGRect displayRect = view.getFrame();
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;
        int v = (int) (displayRect.size.width * (value - minimum) / (maximum - minimum));
        int barOffset = (h - THICKNESS) / 2;
        int knobOffsetY = (h - KNOBSIZE) / 2;
        int knobOffsetX = v - KNOBSIZE / 2;
        if (knobOffsetX < 0)
            knobOffsetX = 0;
        if ((knobOffsetX + KNOBSIZE) > w)
            knobOffsetX = w - KNOBSIZE;

        if (view.getBackgroundColor() != null) {
            g.setPaint(view.getBackgroundColor().xmlvmGetPaint());
            g.fillRect(x, y, w, h);
        }

        GradientPaint blueGradient = new GradientPaint(0, y + barOffset, new Color(42, 93, 148), 0,
                y + barOffset + THICKNESS, new Color(104, 165, 245));
        GradientPaint whiteGradient = new GradientPaint(0, y + barOffset, new Color(188, 188, 188),
                0, y + barOffset + THICKNESS, Color.WHITE);
        GradientPaint buttonGradient = new GradientPaint(0, y + knobOffsetY, new Color(188, 188,
                188), 0, y + h - knobOffsetY, Color.WHITE);

        g.setPaint(blueGradient);
        g.fillRoundRect(x + 2, y + barOffset, v - 2, THICKNESS, THICKNESS, THICKNESS);
        g.setColor(new Color(42, 93, 148));
        g.drawRoundRect(x + 2, y + barOffset, v - 2, THICKNESS, THICKNESS, THICKNESS);

        g.setPaint(whiteGradient);
        g.fillRoundRect(x + v, y + barOffset, w - v - 2, THICKNESS, THICKNESS, THICKNESS);
        g.setColor(new Color(147, 147, 147));
        g.drawRoundRect(x + v, y + barOffset, w - v - 2, THICKNESS, THICKNESS, THICKNESS);

        g.setPaint(buttonGradient);
        g.fillRoundRect(x + knobOffsetX, y + knobOffsetY, KNOBSIZE, KNOBSIZE, KNOBSIZE, KNOBSIZE);
        g.setColor(new Color(147, 147, 147));
        g.drawRoundRect(x + knobOffsetX, y + knobOffsetY, KNOBSIZE, KNOBSIZE, KNOBSIZE, KNOBSIZE);
    }
}
