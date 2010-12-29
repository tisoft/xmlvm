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
import org.xmlvm.iphone.internal.CGContextState;
import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class CGLayer extends NSObject {

    private CGContext context;


    public static CGLayer createWithContext(CGContext context, CGSize size) {
        return new CGLayer(context, size);
    }

    private CGLayer(CGContext context, CGSize size) {
        CGContextState state = new CGContextState(context.xmlvmGetGraphics2D());
        this.context = CGContext.xmlvmNewCGContext(size);
        state.resetValues(this.context.xmlvmGetGraphics2D());
    }

    public CGContext getContext() {
        return context;
    }

    public CGSize getSize() {
        BufferedImage img = context.xmlvmGetImage();
        // Always have an image, since this context is created as an image
        return new CGSize(img.getWidth(), img.getHeight());
    }
}
