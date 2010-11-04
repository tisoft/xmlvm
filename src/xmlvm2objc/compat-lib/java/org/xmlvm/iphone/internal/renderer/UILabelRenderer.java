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
import java.awt.Insets;
import java.awt.Paint;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UILabel;

/**
 * 
 * @author teras
 */
public class UILabelRenderer extends UITextRenderer<UILabel> {

    private static final Insets INSETS = new Insets(0, 0, 0, 0);


    public UILabelRenderer(UILabel view) {
        super(view);
    }

    @Override
    Font getFont() {
        return getSafeFont(((UILabel) view).getFont());
    }

    @Override
    int getLineBreakMode() {
        return ((UILabel) view).getLineBreakMode();
    }

    @Override
    int getTextAlignment() {
        return ((UILabel) view).getTextAlignment();
    }

    @Override
    String getText() {
        return ((UILabel) view).getText();
    }

    @Override
    Paint getTextColor() {
        return getSafePaint(((UILabel) view).getTextColor());
    }

    @Override
    int getNumberOfLines() {
        return ((UILabel) view).getNumberOfLines();
    }

    @Override
    Paint getShadowColor() {
        return getSafePaint(((UILabel) view).getShadowColor());
    }

    @Override
    CGSize getShadowOffset() {
        return ((UILabel) view).getShadowOffset();
    }

    @Override
    Insets getInsets() {
        return INSETS;
    }
}
