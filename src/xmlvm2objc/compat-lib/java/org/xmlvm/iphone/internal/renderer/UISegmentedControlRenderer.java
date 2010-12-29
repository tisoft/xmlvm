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
import java.awt.Shape;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIGraphics;
import org.xmlvm.iphone.UISegmentedControl;
import org.xmlvm.iphone.UISegmentedControlStyle;

/**
 * 
 * @author teras
 */
public class UISegmentedControlRenderer extends UIViewRenderer<UISegmentedControl> {

    private static Font      FONT_DEFAULT = new Font("Arial", Font.BOLD, 18);
    private static Font      FONT_BAR     = new Font("Arial", Font.BOLD, 12);
    private static final int ROUNDEDGE    = 20;


    public UISegmentedControlRenderer(UISegmentedControl view) {
        super(view);
    }

    @Override
    public void paint() {
        if (view.numberOfSegments() == 0)
            return;
        int style = view.getSegmentedControlStyle();

        Graphics2D g = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        Color selUp, selDown, unselUp, unselDown, line, selTxt, unselTxt;
        if (style == UISegmentedControlStyle.Bar) {
            g.setFont(FONT_BAR);
            selUp = new Color(142, 164, 193);
            selDown = new Color(74, 108, 155);
            unselUp = new Color(165, 180, 198);
            unselDown = new Color(110, 133, 163);
            line = new Color(84, 101, 122);
            selTxt = unselTxt = Color.WHITE;
        } else {
            g.setFont(FONT_DEFAULT);
            selUp = new Color(40, 87, 170);
            selDown = new Color(112, 170, 252);
            unselUp = new Color(252, 252, 252);
            unselDown = new Color(200, 200, 200);
            if (style == UISegmentedControlStyle.Plain)
                line = new Color(150, 150, 150);
            else
                line = Color.BLACK;
            selTxt = Color.WHITE;
            unselTxt = new Color(127, 127, 127);
        }

        CGRect displayRect = view.getFrame();
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;

        if (view.getBackgroundColor() != null) {
            g.setPaint(view.getBackgroundColor().xmlvmGetPaint());
            g.fillRect(x, y, w, h);
        }

        GradientPaint selGrad = new GradientPaint(0, y, selUp, 0, y + h * 0.6f, selDown);
        GradientPaint unselGrad = new GradientPaint(0, y, unselUp, 0, y + h * 0.6f, unselDown);

        float segWidth = w / view.numberOfSegments();
        Shape clip = g.getClip();
        for (int i = 0; i < view.numberOfSegments(); i++) {
            int segX = (int) (segWidth * i);
            g.setClip(clip);
            g.clipRect(x + segX, y, (int) segWidth + 2, h + 1);
            int leftOffset = (i == 0) ? 0 : ROUNDEDGE / 2;
            int rightOffset = (i == (view.numberOfSegments() - 1)) ? 0 : ROUNDEDGE / 2;
            if (view.getSelectedSegmentIndex() == i) {
                g.setPaint(selGrad);
                g.fillRoundRect(x + segX - leftOffset + 1, y, (int) segWidth + leftOffset
                        + rightOffset, h, ROUNDEDGE, ROUNDEDGE);
                g.setColor(selTxt);
            } else {
                g.setPaint(unselGrad);
                g.fillRoundRect(x + segX - leftOffset + 1, y, (int) segWidth + leftOffset
                        + rightOffset, h, ROUNDEDGE, ROUNDEDGE);
                g.setColor(unselTxt);
            }
            FontMetrics fm = g.getFontMetrics();

            g.drawString(view.getTitleForSegmentAtIndex(i), x + segX
                    + (segWidth - fm.stringWidth(view.getTitleForSegmentAtIndex(i))) / 2, y
                    + (h - fm.getHeight()) / 2 + fm.getHeight() - fm.getDescent());

            g.setColor(line);
            g.drawRoundRect(x, y, w, h, ROUNDEDGE, ROUNDEDGE);
            if (i != 0)
                g.drawLine(x + segX, y, x + segX, y + h);
        }
        g.setClip(clip);
    }
}
