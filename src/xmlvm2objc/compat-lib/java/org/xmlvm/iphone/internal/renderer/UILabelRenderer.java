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
import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UILineBreakMode;
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
        Font f = view.getFont() != null ? view.getFont().xmlvmGetFont() : getDefaultFont();
        g.setFont(f);
        FontMetrics fm = g.getFontMetrics();

        List<String> lines = null;
        switch (view.getLineBreakMode()) {
        case UILineBreakMode.WordWrap:
            lines = splitIntoLines((int) view.getFrame().size.width, fm);
            renderText(lines, g, fm);
            break;
        default:
            lines = new ArrayList<String>();
            lines.add(view.getText());
            renderText(lines, g, fm);
        }

    }

    private Font getDefaultFont() {
        return UIFont.systemFontOfSize(UIFont.labelFontSize()).xmlvmGetFont();
    }

    private void renderText(List<String> lines, Graphics2D g, FontMetrics fm) {
        CGRect displayRect = view.getFrame();
        int height = fm.getHeight();
        int ascent = fm.getAscent();
        int linesToDisplay = view.getNumberOfLines() == 0 ? lines.size() : view.getNumberOfLines();

        for (int i = 0; i < lines.size() && i < linesToDisplay; i++) {
            String line = lines.get(i);
            int width = fm.stringWidth(line);
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
            y += ((int) view.getFrame().size.height - linesToDisplay * height) / 2 + ascent + i
                    * height;

            if (shadowColor != null) {
                g.setPaint(shadowColor.xmlvmGetPaint());
                g.drawString(line, x + shadowOffset.width, y + shadowOffset.height);
            }

            g.setPaint(view.getTextColor().xmlvmGetPaint());
            g.drawString(line, x, y);
        }

    }

    private List<String> splitIntoLines(int width, FontMetrics fm) {
        List<String> result = new ArrayList<String>();
        StringBuffer buf = new StringBuffer();
        BreakIterator boundary = BreakIterator.getLineInstance();
        boundary.setText(view.getText());
        int start = boundary.first();
        int end = boundary.next();
        int lineLength = 0;

        while (end != BreakIterator.DONE) {
            String word = view.getText().substring(start, end);
            lineLength += fm.stringWidth(word);
            if (lineLength >= width) {
                result.add(buf.toString());
                lineLength = fm.stringWidth(word);
                buf = new StringBuffer();
            }

            buf.append(word);
            start = end;
            end = boundary.next();
        }

        result.add(buf.toString());
        return result;
    }
}
