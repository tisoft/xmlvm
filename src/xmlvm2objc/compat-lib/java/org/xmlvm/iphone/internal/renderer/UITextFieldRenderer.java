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

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.Paint;
import java.awt.Shape;
import java.awt.geom.Rectangle2D;
import java.awt.geom.RoundRectangle2D;
import org.xmlvm.iphone.CGRect;

import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UILineBreakMode;
import org.xmlvm.iphone.UITextBorderStyle;
import org.xmlvm.iphone.UITextField;

/**
 * 
 * @author teras
 */
public class UITextFieldRenderer extends UITextRenderer<UITextField> {

    private static final Insets INSETS           = new Insets(1, 8, 1, 8);
    private static final Insets INSETS_NO_BORDER = new Insets(1, 1, 1, 1);
    private static final int    ROUND_WIDTH      = 12;
    private static final Color  BEZEL_OUT        = new Color(128, 128, 128, 255);
    private static final Color  BEZEL_IN         = new Color(179, 179, 179, 255);
    private static final Color  ROUND_UP         = new Color(161, 163, 166, 255);
    private static final Color  ROUND_DOWN       = new Color(228, 230, 234);

    public UITextFieldRenderer(UITextField view) {
        super(view);
    }

    @Override
    Paint getShadowColor() {
        return null;
    }

    @Override
    CGSize getShadowOffset() {
        return null;
    }

    @Override
    Font getFont() {
        return getSafeFont(((UITextField) view).getFont());
    }

    @Override
    int getLineBreakMode() {
        return UILineBreakMode.TailTruncation;
    }

    @Override
    int getTextAlignment() {
        return ((UITextField) view).getTextAlignment();
    }

    @Override
    String getText() {
        return ((UITextField) view).getText();
    }

    @Override
    Paint getTextColor() {
        return getSafePaint(((UITextField) view).getTextColor());
    }

    @Override
    int getNumberOfLines() {
        return 1;
    }

    @Override
    void renderBackground(Graphics2D g) {
        CGRect frame = view.getFrame();
        Rectangle2D rect = new Rectangle2D.Float(frame.origin.x, frame.origin.y,
                frame.size.width - 1, frame.size.height);
        if (view.getBackgroundColor() != null) {
            g.setPaint(view.getBackgroundColor().xmlvmGetPaint());
            g.fill(rect);
        }
        switch (((UITextField) view).getBorderStyle()) {
        case UITextBorderStyle.Bezel:
            g.setColor(BEZEL_IN);
            g.draw(new Rectangle2D.Float(frame.origin.x + 1, frame.origin.y + 1,
                    frame.size.width - 2, frame.size.height - 1));
            g.setColor(BEZEL_OUT);
            g.draw(rect);
            break;
        case UITextBorderStyle.Line:
            g.setColor(Color.black);
            g.draw(rect);
            break;
        case UITextBorderStyle.RoundedRect:
            Shape rrect = new RoundRectangle2D.Float(frame.origin.x + 1, frame.origin.y + 1,
                    frame.size.width - 2, frame.size.height - 2, ROUND_WIDTH, ROUND_WIDTH);
            g.setPaint(Color.white);
            g.fill(rrect);
            g.setPaint(new GradientPaint(frame.origin.x, frame.origin.y, ROUND_UP, frame.origin.x,
                    frame.origin.y + frame.size.height, ROUND_DOWN));
            g.setStroke(new BasicStroke(2));
            g.draw(rrect);
            g.setStroke(new BasicStroke(1));
            break;
        }
    }

    @Override
    Insets getInsets() {
        if (((UITextField) view).getBorderStyle() == UITextBorderStyle.None) {
            return INSETS_NO_BORDER;
        } else {
            return INSETS;
        }
    }
}
