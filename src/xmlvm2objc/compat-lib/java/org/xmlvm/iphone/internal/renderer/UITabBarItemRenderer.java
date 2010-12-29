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
import java.awt.Graphics2D;
import java.awt.RadialGradientPaint;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UITabBarItem;
import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.UITabBarItemView;

public class UITabBarItemRenderer extends UIBarItemRenderer {

    private static final int TOP_OFFSET  = 5;
    private static final int TEXT_HEIGHT = 14;


    public UITabBarItemRenderer(UITabBarItem item, UITabBarItemView view) {
        super(item, view);
    }

    @Override
    protected void drawButton(Graphics2D g, CGRect rect) {
        int x = (int) rect.origin.x;
        int y = (int) rect.origin.y;
        int w = (int) rect.size.width;
        int h = (int) rect.size.height;

        UIImage img = item.getImage();
        if (img != null)
            g.drawImage(img.xmlvmGetImage(), (int) (x + (w - img.getSize().width) / 2), y
                    + TOP_OFFSET, Simulator.getDisplay());
        rect.origin.y = h - TEXT_HEIGHT;
        rect.size.height = TEXT_HEIGHT;
        g.setPaint(view.getCurrentTitleColor().xmlvmGetPaint());
        drawTitle(g, rect);

        if (isHighlighted()) {
            Color[] c = new Color[2];
            c[0] = new Color(255, 255, 255, 150);
            c[1] = new Color(255, 255, 255, 0);
            float[] dist = { 0.0f, 1.0f };
            RadialGradientPaint paint = new RadialGradientPaint(x + w / 2, y + h / 2, Math.min(
                    h / 2, w / 2), dist, c);
            g.setPaint(paint);
            g.fillRect(x, y, w, h);
        }
    }
}
