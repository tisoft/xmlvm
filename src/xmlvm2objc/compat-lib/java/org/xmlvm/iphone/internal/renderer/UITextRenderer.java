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
import java.awt.Insets;
import java.awt.Paint;
import java.awt.geom.Rectangle2D;
import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UIGraphics;
import org.xmlvm.iphone.UILineBreakMode;
import org.xmlvm.iphone.UITextAlignment;
import org.xmlvm.iphone.UIView;

public abstract class UITextRenderer<S> extends UIViewRenderer<UIView> {

    public UITextRenderer(UIView view) {
        super(view);
    }

    @Override
    public void paint() {
        super.paint();

        Graphics2D g = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        g.setFont(getFont());
        FontMetrics fm = g.getFontMetrics();
        renderBackground(g);
        Insets ins = getInsets();
        List<String> lines = splitIntoLines(view.getFrame().size.width - ins.left - ins.right, fm,
                getLineBreakMode());
        renderText(lines, g, fm);
    }

    Font getDefaultFont() {
        return UIFont.systemFontOfSize(UIFont.labelFontSize()).xmlvmGetFont();
    }

    private void renderText(List<String> lines, Graphics2D g, FontMetrics fm) {
        CGRect displayRect = view.getFrame();
        int height = fm.getHeight();
        int ascent = fm.getAscent();
        int linesToDisplay = getNumberOfLines() == 0 ? lines.size() : getNumberOfLines();

        Paint shadowColor = getShadowColor();
        CGSize shadowOffset = getShadowOffset();
        Insets insets = getInsets();
        for (int i = 0; i < lines.size() && i < linesToDisplay; i++) {
            String line = lines.get(i);
            int width = fm.stringWidth(line);
            int x = (int) displayRect.origin.x + insets.left;
            int y = (int) displayRect.origin.y + insets.top;

            switch (getTextAlignment()) {
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
                g.setPaint(shadowColor);
                g.drawString(line, x + shadowOffset.width, y + shadowOffset.height);
            }

            g.setPaint(getTextColor());
            g.drawString(line, x, y);
        }

    }

    private List<String> splitIntoLines(float width, FontMetrics fm, int linebreakmode) {
        List<String> result = new ArrayList<String>();

        if (linebreakmode != UILineBreakMode.WordWrap) {
            result.add(getText());
        } else {
            StringBuffer buf = new StringBuffer();
            BreakIterator boundary = BreakIterator.getLineInstance();
            boundary.setText(getText());
            int start = boundary.first();
            int end = boundary.next();
            int lineLength = 0;

            while (end != BreakIterator.DONE) {
                String word = getText().substring(start, end);
                lineLength += fm.stringWidth(word);
                if (lineLength > width) {
                    result.add(buf.toString());
                    lineLength = fm.stringWidth(word);
                    buf = new StringBuffer();
                }
                buf.append(word);
                start = end;
                end = boundary.next();
            }
            result.add(buf.toString());
        }
        return result;
    }

    void renderBackground(Graphics2D g) {
        UIColor c = view.getBackgroundColor();
        if (c != null) {
            CGRect frame = view.getFrame();
            g.setPaint(c.xmlvmGetPaint());
            g.fill(new Rectangle2D.Float(frame.origin.x, frame.origin.y, frame.size.width,
                    frame.size.height));
        }
    }

    abstract Paint getShadowColor();

    abstract CGSize getShadowOffset();

    abstract Font getFont();

    abstract int getLineBreakMode();

    abstract int getTextAlignment();

    abstract String getText();

    abstract Paint getTextColor();

    abstract int getNumberOfLines();

    abstract Insets getInsets();

    protected Paint getSafePaint(UIColor col) {
        if (col == null) {
            return null;
        }
        return col.xmlvmGetPaint();
    }

    protected Font getSafeFont(UIFont font) {
        if (font == null) {
            return getDefaultFont();
        }
        return font.xmlvmGetFont();
    }
}
