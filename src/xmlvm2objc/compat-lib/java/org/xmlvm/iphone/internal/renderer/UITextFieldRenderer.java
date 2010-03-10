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
import java.awt.FontMetrics;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UITextBorderStyle;
import org.xmlvm.iphone.UITextField;

public class UITextFieldRenderer extends UIViewRenderer<UITextField> {

    private static final int TEXT_LEFT_INSET = 5;

    public UITextFieldRenderer(UITextField view) {
        super(view);
    }

    @Override
    public void paint() {
        Graphics2D g = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        g.setFont(view.getFont().xmlvmGetFont());
        CGRect displayRect = view.getFrame();
        g.setBackground(Color.WHITE);
        int rectX = (int) displayRect.origin.x;
        int rectY = (int) displayRect.origin.y;
        int rectWidth = (int) displayRect.size.width;
        int rectHeight = (int) displayRect.size.height;
        if (view.getBackgroundColor() != UIColor.clearColor) {
            g.setPaint(view.getBackgroundColor().xmlvmGetPaint());
            g.fillRect(rectX, rectY, rectWidth, rectHeight);
        }

        g.clearRect(rectX, rectY, rectWidth, rectHeight);
        switch (view.getBorderStyle()) {
        case UITextBorderStyle.Bezel:
            g.setColor(Color.GRAY);
            g.draw3DRect(rectX, rectY, rectWidth, rectHeight, false);
            break;
        }
        g.setPaint(view.getTextColor().xmlvmGetPaint());
        FontMetrics fm = g.getFontMetrics();
        int width = fm.stringWidth(view.getText());
        int height = fm.getHeight();
        int descent = fm.getDescent();
        int x = (int) displayRect.origin.x + TEXT_LEFT_INSET;
        int y = (int) displayRect.origin.y;
        y += ((int) view.getFrame().size.height - height) / 2 + height - descent;
        g.drawString(view.getText(), x, y);
    }
}
