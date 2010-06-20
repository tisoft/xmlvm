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

package org.xmlvm.iphone;

import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringBufferInputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.Arrays;

/**
 * @author arno
 * 
 */
public class NSString extends NSObject {

    private NSString() {
    }

    public static String stringWithContentsOfFile(String path) {
        try {
            return stringWithContentsOfReader(new InputStreamReader(new FileInputStream(NSBundle.getFilenameFromURI(path)), "UTF-8"));
        } catch (UnsupportedEncodingException ex) {
        } catch (IOException ex) {
        }
        return null;
    }

    public static String stringWithContentsOfURL(NSURL url, int NSStringEncoding) {
        return stringWithContentsOfURL(url.xmlvmGetURL(), org.xmlvm.iphone.NSStringEncoding
                .convertIntToString(NSStringEncoding));
    }

    public static String stringWithContentsOfURL(NSURL url) {
        return stringWithContentsOfURL(url.xmlvmGetURL(), "UTF-8");
    }

    public static NSData dataUsingEncoding(String string, int NSStringEncoding) {
        // TODO : honor NSStringEncoding under java
        return new NSData(new StringBufferInputStream(string));
    }

    private static String stringWithContentsOfURL(URL url, String encoding) {
        try {
            return stringWithContentsOfReader(new InputStreamReader(url.openStream(), encoding));
        } catch (IOException ex) {
            return null;
        }
    }

    private static String stringWithContentsOfReader(Reader reader) {
        StringBuilder out = new StringBuilder();
        String data = null;
        try {
            BufferedReader in = new BufferedReader(reader);
            while ((data = in.readLine()) != null)
                out.append(data).append("\n");
            in.close();
        } catch (Exception e) {
        }
        return out.toString();
    }

    public static String stringByAddingPercentEscapesUsingEncoding(String URL, int nsStringEncoding) {
        // TODO : Java implementation
        return null;
    }

    public static ArrayList<String> componentsSeparatedByString(String stringtodivide,
            String separator) {
        return new ArrayList<String>(Arrays.asList(stringtodivide.split(separator)));
    }

    public static String initWithData(NSData data, int NSStringEncoding) {
        // TODO : Java implementation
        return null;
    }

    public static void drawAtPoint(String texttodisplay, CGPoint point, UIFont font) {
        Graphics2D graphicsContext = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        Font savedFont = graphicsContext.getFont();
        graphicsContext.setFont(font.xmlvmGetFont());
        graphicsContext.drawString(texttodisplay, point.x, point.y);
        graphicsContext.setFont(savedFont);
    }

    public static CGSize sizeWithFont(String text, UIFont font) {
        Graphics2D graphicsContext = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        Font savedFont = graphicsContext.getFont();
        Font awtFont = font.xmlvmGetFont();
        graphicsContext.setFont(awtFont);
        Rectangle2D size = awtFont.getStringBounds(text, graphicsContext.getFontRenderContext());
        graphicsContext.setFont(savedFont);
        return new CGSize((float) size.getWidth(), text != null && text.length() > 0 ? (float) size
                .getHeight() : 0.0f);
    }

    public static CGSize sizeWithFont(String text, UIFont font, CGSize size, int lineBreakMode) {
        Graphics2D graphicsContext = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        FontMetrics fm = graphicsContext.getFontMetrics(font.xmlvmGetFont());

        CGSize result = null;
        switch (lineBreakMode) {
        case UILineBreakMode.WordWrap:
            if (fm.stringWidth(text) <= size.width) {
                result = new CGSize(fm.stringWidth(text), text != null && text.length() > 0 ? fm
                        .getHeight() : 0.0f);
            } else {
                int numLines = countLines(text, size.width, fm);
                result = new CGSize(size.width, Math.min(numLines * fm.getHeight(), size.height));
            }
            break;

        default:
            result = new CGSize(fm.stringWidth(text), text != null && text.length() > 0 ? fm
                    .getHeight() : 0.0f);
        }

        return result;
    }

    private static int countLines(String text, float width, FontMetrics fm) {
        int lines = 0;
        BreakIterator boundary = BreakIterator.getLineInstance();
        boundary.setText(text);
        int start = boundary.first();
        int end = boundary.next();
        int lineLength = 0;

        while (end != BreakIterator.DONE) {
            String word = text.substring(start, end);
            lineLength += fm.stringWidth(word);
            if (lineLength > width) {
                lines++;
                lineLength = fm.stringWidth(word);
            }

            start = end;
            end = boundary.next();
        }

        lines++;
        return lines;
    }

}
