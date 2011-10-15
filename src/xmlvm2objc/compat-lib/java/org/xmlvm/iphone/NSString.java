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

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSString extends NSObject {

    private NSString() {
    }

    public static String stringWithContentsOfFile(String path) {
        if (path == null) {
            return null;
        }
        try {
            return stringWithContentsOfReader(new InputStreamReader(new FileInputStream(path),
                    "UTF-8"));
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
        Graphics2D graphicsContext = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        Font savedFont = graphicsContext.getFont();
        graphicsContext.setFont(font.xmlvmGetFont());
        graphicsContext.drawString(texttodisplay, point.x, point.y);
        graphicsContext.setFont(savedFont);
    }

    /**
     * Draws the string in the current graphics context using the specified
     * bounding rectangle and font.
     * 
     * This method uses the UILineBreakModeWordWrap line break mode and the
     * UITextAlignmentLeft alignment.
     * 
     * @param texttodisplay
     *            the text to draw
     * @param rect
     *            The bounding rectangle (in the current graphics context) in
     *            which to draw the string.
     * @param font
     *            The font to use for rendering.
     * @return The actual size of the rendered string.
     */
    public static CGSize drawInRect(String texttodisplay, CGRect rect, UIFont font) {
        return drawInRect(texttodisplay, rect, font, UILineBreakMode.WordWrap, UITextAlignment.Left);
    }

    /**
     * Draws the string in the current graphics context using the specified
     * bounding rectangle, font, and attributes.
     * 
     * The text is drawn using the UITextAlignmentLeft alignment.
     * 
     * @param texttodisplay
     *            the text to draw
     * @param rect
     *            The bounding rectangle (in the current graphics context) in
     *            which to draw the string.
     * @param font
     *            The font to use for rendering.
     * @param uiLineBreakMode
     *            The line break options for computing the size of the string.
     *            For a list of possible values, see ‚ÄúUILineBreakMode.‚Äù
     * @return The actual size of the rendered string.
     */
    public static CGSize drawInRect(String texttodisplay, CGRect rect, UIFont font,
            int uiLineBreakMode) {
        return drawInRect(texttodisplay, rect, font, uiLineBreakMode, UITextAlignment.Left);
    }

    /**
     * Draws the string in the current graphics context using the specified
     * bounding rectangle, font and attributes.
     * 
     * @param texttodisplay
     *            the text to draw
     * @param rect
     *            The bounding rectangle (in the current graphics context) in
     *            which to draw the string.
     * @param font
     *            The font to use for rendering.
     * @param uiLineBreakMode
     *            The line break options for computing the size of the string.
     *            For a list of possible values, see ‚ÄúUILineBreakMode.‚Äù
     * @param uiTextAlignment
     *            The alignment of the text inside the bounding rectangle. For a
     *            list of possible values, see ‚ÄúUITextAlignment.‚Äù
     * @return The actual size of the rendered string.
     */
    public static CGSize drawInRect(String texttodisplay, CGRect rect, UIFont font,
            int uiLineBreakMode, int uiTextAlignment) {
        throw new RuntimeException("Not implemented in the Java simulator");
    }

    public static CGSize sizeWithFont(String text, UIFont font) {
        Graphics2D graphicsContext = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        Font savedFont = graphicsContext.getFont();
        Font awtFont = font.xmlvmGetFont();
        graphicsContext.setFont(awtFont);
        Rectangle2D size = awtFont.getStringBounds(text, graphicsContext.getFontRenderContext());
        graphicsContext.setFont(savedFont);
        return new CGSize((float) size.getWidth(), text != null && text.length() > 0 ? (float) size
                .getHeight() : 0.0f);
    }

    public static CGSize sizeWithFont(String text, UIFont font, CGSize size, int lineBreakMode) {
        Graphics2D graphicsContext = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
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

    public static boolean writeToFile(String content, String path, boolean atomically,
            int NSStringEncoding) {
        // TODO : Java implementation
        return true;
    }
}
