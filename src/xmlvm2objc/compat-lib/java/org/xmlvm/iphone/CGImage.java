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

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.InputStream;

import org.xmlvm.iphone.internal.ImageLoader;
import org.xmlvm.iphone.internal.Simulator;

public class CGImage extends NSObject {
    public BufferedImage image;

    private CGImage(InputStream in) {
        ImageLoader loader = Simulator.getImageLoader();
        BufferedImage temp = loader.loadImage(in);

        // note that the PNG loader under ObjC loads images flipped
        image = new BufferedImage(temp.getWidth(), temp.getHeight(), BufferedImage.TYPE_INT_ARGB);
        Graphics2D g = (Graphics2D) image.getGraphics();
        g.scale(1, -1);
        g.drawImage(temp, 0, -temp.getHeight(), null);
    }

    private CGImage() {

    }

    CGImage(BufferedImage image) {
        this.image = image;
    }

    public static CGImage createWithImageInRect(CGImage image, CGRect rect) {
        CGImage ret = new CGImage();
        ret.image = image.image.getSubimage((int) rect.origin.x, (int) rect.origin.y,
                (int) rect.size.width, (int) rect.size.height);

        return ret;
    }

    public static CGImage createPNGFromDataProvider(CGDataProvider provider) {
        try {
            return new CGImage(provider.in);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public CGSize getSize() {
        int width = image.getWidth();
        int height = image.getHeight();
        return new CGSize(width, height);
    }
}
