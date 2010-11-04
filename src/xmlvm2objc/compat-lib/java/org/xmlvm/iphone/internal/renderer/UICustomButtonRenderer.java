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
import java.awt.geom.Rectangle2D;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIImage;

/**
 * 
 * @author teras
 */
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
