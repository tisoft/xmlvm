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
import java.awt.geom.Rectangle2D;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIImage;

@XMLVMIgnore
public class UICustomButtonRenderer extends UIButtonRenderer {

    public UICustomButtonRenderer(UIButton view) {
        super(view);
    }

    @Override
    protected void drawButton(Graphics2D g, CGRect displayRect) {
        drawBackground(g, displayRect);
        drawHighlight(g, displayRect);
        drawForeground(g, displayRect);
    }

    protected boolean drawBackground(Graphics2D g, CGRect displayRect) {
        UIButton bt = ((UIButton) view);
        UIImage img = bt.getCurrentBackgroundImage();
        if (img != null) {
            drawImage(g, img, displayRect);
            return true;
        }
        return false;
    }

    private void drawForeground(Graphics2D g, CGRect displayRect) {
        UIImage img = ((UIButton) view).getCurrentImage();
        if (img != null) {
            drawImage(g, img, displayRect);
        } else {
            drawTitle(g, displayRect);
        }
    }

    private void drawImage(Graphics2D g, UIImage img, CGRect displayRect) {
        CGSize bt = img.getSize();
        CGSize im = displayRect.size;
        float dx = (im.width - bt.width) / 2;
        float dy = (im.height - bt.height) / 2;
        g.drawImage(img.xmlvmGetImage(), (int) (displayRect.origin.x + dx),
                (int) (displayRect.origin.y + dy), null);

    }

    protected void drawHighlight(Graphics2D g, CGRect displayRect) {
        if (isHighlighted()) {
            g.setPaint(new Color(50, 50, 50, 80));
            g.fill(new Rectangle2D.Float(displayRect.origin.x, displayRect.origin.y,
                    displayRect.size.width, displayRect.size.height));
        }
    }
}
