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

import java.awt.Font;
import java.awt.Insets;
import java.awt.Paint;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UILabel;

@XMLVMIgnore
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
