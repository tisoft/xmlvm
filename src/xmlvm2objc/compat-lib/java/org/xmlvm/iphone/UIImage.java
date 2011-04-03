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

import java.awt.image.BufferedImage;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.ImageLoader;
import org.xmlvm.iphone.internal.Simulator;

@XMLVMSkeletonOnly
public class UIImage extends NSObject {

    private BufferedImage image;


    /**
     *  Added for including manual dependencies introduced in the wrapper code.
     *  <b>DO NOT USE</b> 
     */
    protected void dummyMethod(NSString manual1) {
    }

    @XMLVMIgnore
    UIImage(BufferedImage image) {
        this.image = image;
    }

    private UIImage(String filename) {
        ImageLoader loader = Simulator.getImageLoader();
        image = loader.loadImage(filename);
    }

    public static UIImage imageNamed(String filename) {
        UIImage uiImage = new UIImage(filename);
        return uiImage.image != null ? uiImage : null;
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

    @XMLVMIgnore
    public static UIImage xmlvmCreateFromBufferedImage(BufferedImage bi) {
        return new UIImage(bi);
    }

    public CGImage getCGImage() {
        return new CGImage(image);
    }

    public void drawInRect(CGRect rect) {
        UIGraphics.getCurrentContext().xmlvmGetGraphics2D().drawImage(image, (int) rect.origin.x,
                (int) rect.origin.y, (int) rect.size.width, (int) rect.size.height,
                Simulator.getDisplay());
    }

    public void drawAtPoint(CGPoint point) {
        UIGraphics.getCurrentContext().xmlvmGetGraphics2D().drawImage(image, (int) point.x,
                (int) point.y, Simulator.getDisplay());
    }

    public CGSize getSize() {
        if (image == null)
            return new CGSize(0, 0);
        int width = image.getWidth();
        int height = image.getHeight();
        return new CGSize(width, height);
    }

    @XMLVMIgnore
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

    public NSData PNGRepresentation() {
        // TODO: implement under Java
        return null;
    }

    public NSData JPEGRepresentation(float compressionQuality) {
        // TODO: implement under Java
        return null;
    }
}
