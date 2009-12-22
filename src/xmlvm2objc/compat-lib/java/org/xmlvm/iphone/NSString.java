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
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * @author arno
 * 
 */
public class NSString {

    private NSString() {
    }

    public static String stringWithContentsOfFile(String path) {
        String data = "";
        try {
            BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream(path)));
            String line = null;
            while ((line = in.readLine()) != null) {
                data += line;
                data += System.getProperty("line.separator");
            }
            in.close();
        } catch (FileNotFoundException e) {
            // Do nothing
        } catch (IOException e) {
            // Do nothing
        }
        return data;
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
        return new CGSize((float) size.getWidth(), (float) size.getHeight());
    }
}
