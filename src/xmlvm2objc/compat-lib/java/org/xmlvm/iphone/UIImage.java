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

import java.awt.image.BufferedImage;

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.ImageLoader;
import org.xmlvm.iphone.internal.Simulator;

@XMLVMSkeletonOnly
public class UIImage extends NSObject {

    private BufferedImage image;

    private UIImage(BufferedImage image) {
        this.image = image;
    }

    private UIImage(String filename) {
        ImageLoader loader = Simulator.getImageLoader();
        image = loader.loadImage(filename);
    }

    public static UIImage imageWithContentsOfFile(String filename) {
        UIImage uiImage = new UIImage(filename);
        return uiImage.image != null ? uiImage : null;
    }

    public static UIImage imageWithData(NSData data) {
        // TODO : Java implementation
        return null;
    }

    public UIImage stretchableImage(int leftCapWidth, int topCapHeight) {
        // TODO : Java implementation
        return null;
    }

    public static UIImage xmlvmCreateFromBufferedImage(BufferedImage bi) {
        return new UIImage(bi);
    }

    public CGImage getCGImage() {
        return new CGImage(image);
    }

    public void drawInRect(CGRect rect) {
        CGContext.UICurrentContext().xmlvmGetGraphics2D().drawImage(image, (int) rect.origin.x,
                (int) rect.origin.y, (int) rect.size.width, (int) rect.size.height,
                Simulator.getDisplay());
    }

    public void drawAtPoint(CGPoint point) {
        CGContext.UICurrentContext().xmlvmGetGraphics2D().drawImage(image, (int) point.x,
                (int) point.y, Simulator.getDisplay());
    }

    public CGSize getSize() {
        if (image == null)
            return new CGSize(0, 0);
        int width = image.getWidth();
        int height = image.getHeight();
        return new CGSize(width, height);
    }

    public BufferedImage xmlvmGetImage() {
        return image;
    }

    /**
     * @param x
     * @param y
     * @param width
     * @param height
     * @return
     */
    public UIImage cropImage(int x, int y, int width, int height) {
        return new UIImage(image.getSubimage(x, y, width, height));
    }
}
