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

package org.xmlvm.iphone.internal.renderer;

import java.awt.Graphics2D;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIGraphics;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.internal.Simulator;

public class UIViewRenderer<T extends UIView> {

    protected final T       view;
    /**
     * The affine transform of this view, before altering it from this view view
     */
    private AffineTransform savedTransform;
    private Shape           savedClip;


    public UIViewRenderer(T view) {
        if (view == null)
            throw new NullPointerException("UIViewGUI should not be null");
        this.view = view;
    }

    public void initPaint() {
        Graphics2D g = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        savedTransform = g.getTransform();
        savedClip = g.getClip();
        AffineTransform trans = getJavaAffineTransformation();
        if (trans != null)
            g.transform(trans);
        if (view.clipsToBounds()) {
            CGRect rect = view.getFrame();
            g.setClip((int) rect.origin.x, (int) rect.origin.y, (int) rect.size.width,
                    (int) rect.size.height);
        }
    }

    public void finishPaint() {
        Graphics2D g = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        g.setTransform(savedTransform);
        g.setClip(savedClip);
    }

    public void paint() {
        Graphics2D g = UIGraphics.getCurrentContext().xmlvmGetGraphics2D();
        CGRect displayRect = view.getFrame();
        UIColor backgroundColor = view.getBackgroundColor();
        if (backgroundColor != null) {
            g.setPaint(view.getBackgroundColor().xmlvmGetPaint());
            g.fill(new Rectangle2D.Float(displayRect.origin.x, displayRect.origin.y,
                    displayRect.size.width, displayRect.size.height));
        }
    }

    // TODO (arno) Fix the clipping rect computation
    // TODO teras: find exactly which part to redraw
    public void redraw() {
        CGRect rect = view.getFrame();
        CGRect displayRect = view.getFrame();
        int x = (int) (displayRect.origin.x + rect.origin.x);
        int y = (int) (displayRect.origin.y + rect.origin.y);
        Simulator.redrawDisplay(x, y, (int) rect.size.width, (int) rect.size.height);
    }

    protected int getAlphaAsInt() {
        return (int) (255f * view.getAlpha());
    }

    public AffineTransform getJavaAffineTransformation() {
        if (view.getTransform() == null)
            return null;
        float X = view.getFrame().origin.x + view.getBounds().size.width / 2f;
        float Y = view.getFrame().origin.y + view.getBounds().size.height / 2f;
        AffineTransform current = AffineTransform.getTranslateInstance(X, Y);
        current.concatenate(view.getTransform().xmlvmGetAffine());
        current.concatenate(AffineTransform.getTranslateInstance(-X, -Y));
        return current;
    }
}
