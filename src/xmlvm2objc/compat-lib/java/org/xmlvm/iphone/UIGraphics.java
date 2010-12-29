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
import java.util.Stack;

import org.xmlvm.XMLVMSkeletonOnly;

/**
 * ToDO: Java implementation
 */
@XMLVMSkeletonOnly
public final class UIGraphics {

    private static Stack<CGContext> contextStack;

    static {
        contextStack = new Stack<CGContext>();
        beginImageContext(new CGSize(320, 480));
    }


    private UIGraphics() {
        // Disable initialization of this object - only static methods are
        // allowed
    }

    public static CGContext getCurrentContext() {
        return contextStack.peek();
    }

    public static void pushContext(CGContext context) {
        contextStack.push(context);
    }

    public static void popContext() {
        contextStack.pop();
    }

    public static void beginImageContext(CGSize size) {
        pushContext(CGContext.xmlvmNewCGContext(size));
    }

    public static void beginImageContextWithOptions(CGSize size, boolean opaque, float scale) {
        throw new RuntimeException("beginImageContextWithOptions not implemented yet");
    }

    public static UIImage getImageFromCurrentImageContext() {
        BufferedImage img = UIGraphics.getCurrentContext().xmlvmGetImage();
        if (img == null)
            return null;
        return new UIImage(img);
    }

    public static void endImageContext() {
        popContext();
    }
}
