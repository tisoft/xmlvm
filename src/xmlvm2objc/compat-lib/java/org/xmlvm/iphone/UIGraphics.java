/*
 * Copyright (c) 2004-2010 XMLVM --- An XML-based Programming Language
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
import java.util.Stack;

import org.xmlvm.XMLVMSkeletonOnly;

/**
 * ToDO: Java implementation
 * 
 * @author teras
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
