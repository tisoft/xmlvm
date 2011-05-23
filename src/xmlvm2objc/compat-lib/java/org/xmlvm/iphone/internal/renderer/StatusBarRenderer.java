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

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIGraphics;
import org.xmlvm.iphone.internal.StatusBar;

@XMLVMIgnore
public class StatusBarRenderer extends UIViewRenderer<StatusBar> {

    public StatusBarRenderer(StatusBar view) {
        super(view);
    }

    @Override
    public void paint() {
        if (view.getFrame().size.height == 0)
            return;
        Graphics2D g = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        CGRect displayRect = view.getFrame();
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;
        GradientPaint grayGradient = new GradientPaint(0, y, new Color(0xeef6f9), 0, y + h - 1,
                new Color(0xbdc5c8));
        g.setPaint(grayGradient);
        g.fillRect(x, y, w, h - 1);
        g.setPaint(new Color(0x5b6268));
        g.drawLine(x, y + h - 1, w, y + h - 1);
    }
}
