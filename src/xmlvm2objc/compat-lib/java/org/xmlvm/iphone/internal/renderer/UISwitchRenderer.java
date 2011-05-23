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
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.GradientPaint;
import java.awt.Graphics2D;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIGraphics;
import org.xmlvm.iphone.UISwitch;

@XMLVMIgnore
public class UISwitchRenderer extends UIViewRenderer<UISwitch> {

    private static final int INSET = 8;
    private Font             font  = new Font("Arial", Font.BOLD, 16);


    public UISwitchRenderer(UISwitch view) {
        super(view);
    }

    @Override
    public void paint() {
        Graphics2D g = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        g.setFont(font);
        CGRect displayRect = view.getFrame();
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;

        if (view.getBackgroundColor() != null) {
            g.setPaint(view.getBackgroundColor().xmlvmGetPaint());
            g.fillRect(x, y, w, h);
        }

        GradientPaint blueGradient = new GradientPaint(0, y, new Color(61, 89, 171), 0, y + h,
                new Color(100, 149, 237));
        GradientPaint whiteGradient = new GradientPaint(0, y, new Color(220, 220, 220), 0, y + h,
                Color.WHITE);
        GradientPaint grayGradient = new GradientPaint(0, y, Color.LIGHT_GRAY, 0, y + h,
                Color.WHITE);
        g.setPaint(view.isOn() ? blueGradient : whiteGradient);
        g.fillRoundRect(x, y, w, h, INSET, INSET);
        g.setColor(Color.LIGHT_GRAY);
        g.drawRoundRect(x, y, w, h, INSET, INSET);
        CGRect knob = new CGRect(displayRect);
        float halfWidth = w / 2;
        knob.size.width = halfWidth;
        if (view.isOn())
            knob.origin.x += halfWidth;
        g.drawRoundRect((int) knob.origin.x, (int) knob.origin.y, (int) knob.size.width,
                (int) knob.size.height, INSET, INSET);
        g.setPaint(grayGradient);
        g.fillRoundRect((int) knob.origin.x, (int) knob.origin.y, (int) knob.size.width,
                (int) knob.size.height, INSET, INSET);
        String label = "ON";
        knob.origin.x = x;
        g.setColor(Color.WHITE);
        if (!view.isOn()) {
            knob.origin.x += halfWidth;
            g.setColor(Color.GRAY);
            label = "OFF";
        }
        FontMetrics fm = g.getFontMetrics();
        g.drawString(label, knob.origin.x + INSET, knob.origin.y + (h - fm.getHeight()) / 2
                + fm.getHeight() - fm.getDescent());
    }
}
