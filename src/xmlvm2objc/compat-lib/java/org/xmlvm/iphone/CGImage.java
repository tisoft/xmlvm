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

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.InputStream;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.ImageLoader;
import org.xmlvm.iphone.internal.Simulator;

@XMLVMSkeletonOnly
public class CGImage {

    @XMLVMIgnore
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

    @XMLVMIgnore
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
