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

import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Composite;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.util.Stack;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGContext extends NSObject {
    public static final int         kCGTextInvisible = 1;
    public static final int         kCGTextFill      = 2;

    private static Stack<CGContext> contextStack;

    private Graphics2D              graphicsContext;
    private UIImage                 image;

    private float                   tx;
    private float                   ty;
    private int                     textMode;
    private Rectangle               savedClip;
    private AffineTransform         savedTransform;
    private Color                   savedColor;
    private Composite               savedComposite;
    private Font                    savedFont;

    static {
        contextStack = new Stack<CGContext>();
        BufferedImage image = new BufferedImage(320, 480, BufferedImage.TYPE_USHORT_565_RGB);
        xmlvmPushGraphicsContext((Graphics2D) image.getGraphics());
    }

    CGContext(Graphics2D g) {
        graphicsContext = g;
        image = null;
    }

    CGContext(UIImage image) {
        graphicsContext = (Graphics2D) image.xmlvmGetImage().getGraphics();
        this.image = image;
    }

    CGContext(Graphics2D g, UIImage img) {
        this.graphicsContext = g;
        this.image = img;
    }

    public static void xmlvmPushGraphicsContext(Graphics2D g) {
        contextStack.push(new CGContext(g));
    }

    public static void xmlvmPushGraphicsContext(UIImage image) {
        contextStack.push(new CGContext(image));
    }

    public static void xmlvmPushGraphicsContext(Graphics2D g, UIImage image) {
        contextStack.push(new CGContext(g, image));
    }

    public static void xmlvmPopGraphicsContext() {
        contextStack.pop();
    }

    public Graphics2D xmlvmGetGraphics2D() {
        return graphicsContext;
    }

    public static CGContext UICurrentContext() {
        return contextStack.peek();
    }

    public void setFillColor(float[] color) {
        graphicsContext.setColor(new Color(color[0], color[1], color[2]));
        float alpha = color[3];
        graphicsContext.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, alpha));
    }

    public void fillRect(CGRect rect) {
        graphicsContext.fillRect((int) rect.origin.x, (int) rect.origin.y, (int) rect.size.width,
                (int) rect.size.height);
    }

    public void clipToRect(CGRect rect) {
        graphicsContext.setClip((int) rect.origin.x, (int) rect.origin.y, (int) rect.size.width,
                (int) rect.size.height);
    }

    public void setStrokeColor(float[] color) {
        graphicsContext.setColor(new Color(color[0], color[1], color[2]));
    }

    public void translate(float x, float y) {
        graphicsContext.translate(x, y);
    }

    public void rotate(float ang) {
        graphicsContext.rotate(ang);
    }

    public void scale(float sx, float sy) {
        graphicsContext.scale(sx, sy);
    }

    public void strokeRect(CGRect rect) {
        graphicsContext.drawRect((int) rect.origin.x, (int) rect.origin.y, (int) rect.size.width,
                (int) rect.size.height);
    }

    public void fillEllipseInRect(CGRect rect) {
        graphicsContext.fillOval((int) rect.origin.x, (int) rect.origin.y, (int) rect.size.width,
                (int) rect.size.height);
    }

    public void setAlpha(float alpha) {
        Color c = graphicsContext.getColor();

        Color n = new Color(c.getRed(), c.getGreen(), c.getBlue(), (int) (alpha * 255));
        graphicsContext.setColor(n);
    }

    public void setFont(CGFont font) {
        graphicsContext.setFont(font.font);
    }

    public void setFontSize(float size) {
        if (graphicsContext.getFont().getSize() != size) {
            graphicsContext.setFont(graphicsContext.getFont().deriveFont((float) size));
        }
    }

    public void setShadowWithColor(float dx, float dy, float blur_radius, float[] color) {
        // TODO
    }

    public void showTextAtPoint(float x, float y, String str) {
        tx = x;
        ty = y;
        graphicsContext.drawString(str, x, y);
    }

    public void showText(String str) {
        if (textMode == kCGTextFill) {
            showTextAtPoint(tx, ty, str);
        } else {
            tx += graphicsContext.getFontMetrics().stringWidth(str);
        }
    }

    public void storeState() {
        xmlvmPushGraphicsContext(graphicsContext, image);
        CGContext newContext = UICurrentContext();
        newContext.savedClip = graphicsContext.getClipBounds();
        newContext.savedTransform = graphicsContext.getTransform();
        newContext.savedFont = graphicsContext.getFont();
        newContext.savedComposite = graphicsContext.getComposite();
        newContext.savedColor = graphicsContext.getColor();
    }

    public void restoreState() {
        CGContext oldContext = UICurrentContext();
        graphicsContext.setTransform(oldContext.savedTransform);
        graphicsContext.setClip(oldContext.savedClip);
        graphicsContext.setFont(oldContext.savedFont);
        graphicsContext.setColor(oldContext.savedColor);
        graphicsContext.setComposite(oldContext.savedComposite);
        xmlvmPopGraphicsContext();
    }

    public CGRect getClip() {
        Rectangle clip = graphicsContext.getClipBounds();

        return new CGRect(clip.x, clip.y, clip.width, clip.height);
    }

    public CGPoint getTextPosition() {
        return new CGPoint(tx, ty);
    }

    public void setTextDrawingMode(int mode) {
        textMode = mode;
    }

    public void drawImage(CGRect rect, CGImage image) {
        AffineTransform savedTransform = graphicsContext.getTransform();
        graphicsContext.scale(1, -1);
        graphicsContext.translate(0, -(rect.size.height + 2 * rect.origin.y));

        graphicsContext.drawImage(image.image, (int) rect.origin.x, (int) rect.origin.y,
                (int) rect.size.width, (int) rect.size.height, null);
        graphicsContext.setTransform(savedTransform);
    }

    public void drawLayer(CGRect rect, CGLayer layer) {
        graphicsContext.drawImage(layer.image, (int) rect.origin.x, (int) rect.origin.y,
                (int) rect.size.width, (int) rect.size.height, null);
    }

    public static void UIGraphicsBeginImageContext(CGSize size) {
        BufferedImage image = new BufferedImage((int) size.width, (int) size.height,
                BufferedImage.TYPE_USHORT_565_RGB);
        xmlvmPushGraphicsContext(UIImage.xmlvmCreateFromBufferedImage(image));
    }

    public static UIImage UIGraphicsGetImageFromCurrentImageContext() {
        CGContext context = UICurrentContext();
        return context.image;
    }

    public static void UIGraphicsEndImageContext() {
        xmlvmPopGraphicsContext();
    }
}
