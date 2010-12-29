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
import org.xmlvm.iphone.UITabBar;

/**
 * 
 * @author teras
 */
public class UITabBarRenderer extends UIViewRenderer<UITabBar> {

    private final static Color TOPCOLOR      = new Color(46, 46, 46);
    private final static Color BELOWLINE     = new Color(67, 67, 67);

    public final static int    TABBAR_HEIGHT = 49;


    public UITabBarRenderer(UITabBar view) {
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
        GradientPaint paint = new GradientPaint(0, y, TOPCOLOR, x, y + h, Color.BLACK);
        g.setPaint(paint);
        g.fillRect(x, y, w, h);
        g.setColor(Color.BLACK);
        g.drawLine(0, y, x + w, y);
        g.setColor(BELOWLINE);
        g.drawLine(0, y + 1, x + w, y + 1);
    }
}
