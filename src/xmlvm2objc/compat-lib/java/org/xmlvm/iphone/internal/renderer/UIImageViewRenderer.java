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

package org.xmlvm.iphone.internal.renderer;

import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UIViewContentMode;
import org.xmlvm.iphone.internal.Simulator;

/**
 * 
 * @author teras
 */
public class UIImageViewRenderer extends UIViewRenderer<UIImageView> {

    public UIImageViewRenderer(UIImageView view) {
        super(view);
    }

    @Override
    public void paint() {
        Graphics2D g = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        CGRect rect = view.getFrame();

        if (view.getImage() != null) {
            // TODO the following should probably be done in UIView using
            // affine transformations
            // TODO something wrong with the clipping we do here
            // Rectangle clipRect = g.getClipBounds();
            // g.setClip((int) rect.origin.x, (int) rect.origin.y, (int)
            // rect.size.width,
            // (int) rect.size.height);
            BufferedImage image = view.getImage().xmlvmGetImage();
            CGSize imageSize = view.getImage().getSize();
            switch (view.getContentMode()) {
            case UIViewContentMode.ScaleToFill:
                // Do nothing
                break;
            case UIViewContentMode.ScaleAspectFit:
                throw new RuntimeException(
                        "UIImageViewRenderer.paint(): ScaleAspectFit not implemented");
            case UIViewContentMode.ScaleAspectFill:
                if (rect.size.width - imageSize.width < rect.size.height - imageSize.height) {
                    float scale = rect.size.height / imageSize.height;
                    float newWidth = imageSize.width * scale;
                    float dx = newWidth - rect.size.width;
                    rect.size.width = newWidth;
                    rect.origin.x -= dx / 2.0;
                } else {
                    float scale = rect.size.width / imageSize.width;
                    float newHeight = imageSize.height * scale;
                    float dy = newHeight - rect.size.height;
                    rect.size.height = newHeight;
                    rect.origin.y -= dy / 2.0;
                }
                break;
            case UIViewContentMode.Redraw:
                throw new RuntimeException("UIImageViewRenderer.paint(): Redraw not implemented");
            case UIViewContentMode.Center:
                rect.origin.x += (rect.size.width - imageSize.width) / 2.0;
                rect.origin.y += (rect.size.height - imageSize.height) / 2.0;
                rect.size.width = imageSize.width;
                rect.size.height = imageSize.height;
                break;
            case UIViewContentMode.Top:
                throw new RuntimeException("UIImageViewRenderer.paint(): Top not implemented");
            case UIViewContentMode.Bottom:
                throw new RuntimeException("UIImageViewRenderer.paint(): Bottom not implemented");
            case UIViewContentMode.Left:
                throw new RuntimeException("UIImageViewRenderer.paint(): Left not implemented");
            case UIViewContentMode.Right:
                throw new RuntimeException("UIImageViewRenderer.paint(): Right not implemented");
            case UIViewContentMode.TopLeft:
                rect.size.width = imageSize.width;
                rect.size.height = imageSize.height;
                break;
            case UIViewContentMode.TopRight:
                throw new RuntimeException("UIImageViewRenderer.paint(): TopRight not implemented");
            case UIViewContentMode.BottomLeft:
                throw new RuntimeException(
                        "UIImageViewRenderer.paint(): BottomLeft not implemented");
            case UIViewContentMode.BottomRight:
                throw new RuntimeException(
                        "UIImageViewRenderer.paint(): BottomRight not implemented");
            }
            g.setRenderingHint(RenderingHints.KEY_INTERPOLATION,
                    RenderingHints.VALUE_INTERPOLATION_BICUBIC);
            g.drawImage(image, (int) rect.origin.x, (int) rect.origin.y, (int) rect.size.width,
                    (int) rect.size.height, Simulator.getDisplay());
            // g.setClip(clipRect.x, clipRect.y, clipRect.width,
            // clipRect.height);
        }
    }
}
