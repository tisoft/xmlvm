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

import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UITextAlignment;

public class UILabelRenderer extends UIViewRenderer<UILabel> {

    private UIColor shadowColor;
    private CGSize  shadowOffset;

    public UILabelRenderer(UILabel view) {
        super(view);
        shadowOffset = new CGSize(0, 0);
    }

    public UIColor getShadowColor() {
        return shadowColor;
    }

    public void setShadowColor(UIColor shadowColor) {
        this.shadowColor = shadowColor;
    }

    public CGSize getShadowOffset() {
        return shadowOffset;
    }

    public void setShadowOffset(CGSize shadowOffset) {
        this.shadowOffset = shadowOffset;
    }

    @Override
    public void paint() {
        super.paint();

        Graphics2D g = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        CGRect displayRect = view.getFrame();
        Font f = view.getFont() != null ? view.getFont().xmlvmGetFont() : getDefaultFont();
        g.setFont(f);
        FontMetrics fm = g.getFontMetrics();
        int width = fm.stringWidth(view.getText());
        int height = fm.getHeight();
        int descent = fm.getDescent();
        // TODO Centering hard coded for now
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        switch (view.getTextAlignment()) {
        case UITextAlignment.Left:
            // Do nothing
            break;
        case UITextAlignment.Center:
            x += ((int) view.getFrame().size.width - width) / 2;
            break;
        }
        y += ((int) view.getFrame().size.height - height) / 2 + height - descent;

        if (shadowColor != null) {
            g.setPaint(shadowColor.xmlvmGetPaint());
            g.drawString(view.getText(), x + shadowOffset.width, y + shadowOffset.height);
        }

        g.setPaint(view.getTextColor().xmlvmGetPaint());
        g.drawString(view.getText(), x, y);
    }

    private Font getDefaultFont() {
        return UIFont.systemFontOfSize(UIFont.labelFontSize()).xmlvmGetFont();
    }

}
