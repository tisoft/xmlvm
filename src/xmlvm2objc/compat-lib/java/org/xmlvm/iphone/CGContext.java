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
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;
import java.awt.geom.Path2D;
import java.awt.image.BufferedImage;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.CGContextState;

@XMLVMSkeletonOnly
public class CGContext extends NSObject {
    public static final int     kCGTextInvisible = 1;
    public static final int     kCGTextFill      = 2;

    private final BufferedImage image;
    private final Graphics2D    graphicsContext;
    private float               tx;
    private float               ty;
    private int                 textMode;
    private Path2D              path             = null;


    @XMLVMIgnore
    CGContext(CGSize size) {
        image = new BufferedImage((int) size.width, (int) size.height,
                BufferedImage.TYPE_USHORT_565_RGB);
        graphicsContext = image.createGraphics();
    }

    private CGContext(Graphics2D g) {
        image = null;
        graphicsContext = g;
    }

    @XMLVMIgnore
    public Graphics2D xmlvmGetGraphics2D() {
        return graphicsContext;
    }

    @XMLVMIgnore
    BufferedImage xmlvmGetImage() {
        return image;
    }

    @XMLVMIgnore
    static CGContext xmlvmNewCGContext(CGSize size) {
        return new CGContext(size);
    }

    @XMLVMIgnore
    public static CGContext xmlvmNewCGContext(Graphics2D g) {
        return new CGContext(g);
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

    public void setShouldAntialias(boolean antiAlias) {
        graphicsContext.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
                antiAlias ? RenderingHints.VALUE_ANTIALIAS_ON : RenderingHints.VALUE_ANTIALIAS_OFF);
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
        CGContextState.push(graphicsContext);
    }

    public void restoreState() {
        CGContextState.pop();
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

    public void beginPath() {
        path = new Path2D.Float();
    }

    public void moveToPoint(float x, float y) {
        path.moveTo(x, y);
    }

    public void addLineToPoint(float x, float y) {
        path.lineTo(x, y);
    }

    public void drawPath(int mode) {
        // TODO Auto-generated method stub

    }

    public void setLineCap(int cap) {
        // TODO Auto-generated method stub

    }

    public void strokePath() {
        // TODO Auto-generated method stub
        graphicsContext.draw(path);
        path = null;
    }

}
