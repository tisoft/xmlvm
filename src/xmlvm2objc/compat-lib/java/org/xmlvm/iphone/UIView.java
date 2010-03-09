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

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.renderer.UIViewRenderer;

public class UIView extends UIResponder {

    private CGRect            frame;
    private CGRect            bounds;
    private List<UIView>      subviews;
    private UIView            superview;
    private UIColor           backgroundColor;
    private UIImage           backgroundImage;
    private boolean           opaque;
    private float             alpha;
    private boolean           hidden;
    private int               contentMode;
    private boolean           userInteractionEnabled;
    private boolean           clipsToBounds;
    private CGAffineTransform transform;
    private int               offsetLeft;
    private int               offsetTop;
    private Object            drawDelegate;

    /** ---- private methods ---- */
    /* Renderer of this view */
    private UIViewRenderer<?> renderer;
    /**
     * location to store the controller of this view - if any. Useful to send
     * messages to the controller.
     * 
     * Do not use it directly
     */
    UIViewController          controller;

    public UIView(CGRect rect) {
        xmlvmSetRenderer(new UIViewRenderer<UIView>(this));
        this.bounds = null;
        this.backgroundColor = UIColor.blackColor;
        this.backgroundImage = null;
        this.opaque = true;
        this.hidden = false;
        this.contentMode = UIViewContentMode.ScaleToFill;
        setUserInteractionEnabled(true);
        subviews = new ArrayList<UIView>();
        superview = null;
        drawDelegate = null;
        setFrame(rect);
        setHidden(false);
    }

    public UIView() {
        this(new CGRect(0, 0, 0, 0));
    }

    public void setFrame(CGRect rect) {
        // TODO The docs specify that the frame has no meaning when
        // a transform other than the identity function has been set.
        // We don't care in our Java implementation, but apparently
        // Cocoa is quite sensitive about this.
        boolean needsLayouting = frame != null;
        frame = new CGRect(rect);
        bounds = new CGRect(rect);
        bounds.origin.x = bounds.origin.y = 0;
        if (needsLayouting)
            layoutSubviews();
    }

    public CGRect getFrame() {
        return new CGRect(frame);
    }

    public void setLocation(float x, float y) {
        setFrame(new CGRect(x, y, frame.size.width, frame.size.height));
    }

    public void setSize(float width, float height) {
        setFrame(new CGRect(frame.origin.x, frame.origin.y, width, height));
    }

    public void setDrawDelegate(Object delegate) {
        drawDelegate = delegate;
    }

    public void addSubview(UIView subView) {
        insertSubview(subView, subviews.size());
    }

    public void insertSubview(UIView subView, int idx) {
        if (!subviews.contains(subView)) {
            subView.superview = this;
            boolean notifyController = this instanceof UIWindow && subView.controller != null;
            if (notifyController) {
                subView.controller.viewWillAppearInternal(true);
            }
            subviews.add(idx, subView);
            Simulator.redrawDisplay();
            if (notifyController) {
                subView.controller.viewDidAppear(true);
            }
        }
    }

    public void bringSubviewToFront(UIView subView) {
        int i = subviews.indexOf(subView);
        subviews.remove(i);
        subviews.add(subView);
    }

    public void removeFromSuperview() {
        boolean notifyController = superview != null && superview instanceof UIWindow
                && controller != null;
        if (notifyController) {
            controller.viewWillDisappear(true);
        }
        superview.subviews.remove(this);
        Simulator.redrawDisplay();
        if (notifyController) {
            controller.viewDidDisappear(true);
        }
    }

    public List<UIView> getSubviews() {
        return new ArrayList<UIView>(this.subviews);
    }

    public UIView getSuperview() {
        return superview;
    }

    public void layoutSubviews() {
    }

    public CGRect getBounds() {
        return new CGRect(this.bounds);
    }

    public void setBounds(CGRect rect) {
        bounds = new CGRect(rect);
    }

    public void setNeedsDisplay() {
        renderer.redraw();
    }

    public void setOpaque(boolean opaque) {
        this.opaque = opaque;
    }

    public void setClearsContextBeforeDrawing(boolean clear) {
        // TODO
    }

    public void keyTyped(char key) {
        // Do nothing
    }

    public UIColor getBackgroundColor() {
        return backgroundColor;
    }

    public void setBackgroundColor(UIColor backgroundColor) {
        if (backgroundColor == null)
            backgroundColor = UIColor.clearColor;
        this.backgroundColor = backgroundColor;
        setNeedsDisplay();
    }

    public UIImage getBackgroundImage() {
        return backgroundImage;
    }

    public void setBackgroundImage(UIImage backgroundImage) {
        this.backgroundImage = backgroundImage;
        setNeedsDisplay();
    }

    public float getAlpha() {
        return alpha;
    }

    public void setAlpha(float alpha) {
        this.alpha = alpha;
    }

    public boolean touchedInsideView(Set<UITouch> touches) {
        UITouch t = touches.iterator().next();
        CGPoint p = t.locationInView(this);
        CGRect r = this.getFrame();

        boolean touched = p.x < 0 || p.y < 0 || p.x > r.size.width - 1 || p.y > r.size.height - 1 ? false
                : true;
        
        if (touched) {
        	Simulator.addKeyListener(this);
        }
        
        return touched;
    }

    public boolean isHidden() {
        return hidden;
    }

    public void setHidden(boolean hidden) {
        if (hidden != this.hidden) {
            this.hidden = hidden;
            setNeedsDisplay();
        }
    }

    public void setContentMode(int contentMode) {
        this.contentMode = contentMode;
    }

    public int getContentMode() {
        return contentMode;
    }

    public boolean isUserInteractionEnabled() {
        return userInteractionEnabled;
    }

    public void setUserInteractionEnabled(boolean userInteractionEnabled) {
        this.userInteractionEnabled = userInteractionEnabled;
    }

    public CGAffineTransform getTransform() {
        return transform;
    }

    public void setTransform(CGAffineTransform transform) {
        this.transform = transform;
        Simulator.redrawDisplay();
    }

    public boolean clipsToBounds() {
        return clipsToBounds;
    }

    public void setClipsToBounds(boolean clipsToBounds) {
        this.clipsToBounds = clipsToBounds;
    }

    public void xmlvmDrawRect(CGRect rect) {
        if (isHidden())
            return;

        renderer.initPaint();
        renderer.paint();

        // This is required to set the new coordinates to widget's 0,0
        // location
        CGContext.UICurrentContext().xmlvmGetGraphics2D().translate(getFrame().origin.x,
                getFrame().origin.y);

        CGContext.UICurrentContext().xmlvmGetGraphics2D().translate(-offsetLeft, -offsetTop);

        if (drawDelegate != null) {
            // We use reflection to call a method 'xmlvmDraw(CGRect)' in order
            // to avoid
            // dependencies to the delegate
            Class<?>[] paramTypes = { CGRect.class };
            Object[] params = { rect };
            Class<?> targetClass = drawDelegate.getClass();
            Method m = null;
            try {
                m = targetClass.getMethod("xmlvmDraw", paramTypes);
            } catch (SecurityException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e) {
                throw new RuntimeException(e);
            }

            try {
                m.invoke(drawDelegate, params);
            } catch (IllegalArgumentException e) {
                throw new RuntimeException(e);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e);
            }

        }

        drawRect(rect);
        for (UIView v : getSubviews()) {
            v.xmlvmDrawRect(rect);
        }
        renderer.finishPaint();
    }

    public void drawRect(CGRect rect) {
        // Do nothing
    }

    protected UIViewRenderer<?> xmlvmGetRenderer() {
        return renderer;
    }

    protected void xmlvmSetRenderer(UIViewRenderer<?> renderer) {
        this.renderer = renderer;
    }

    public void xmlvmSetOffsets(int offsetLeft, int offsetTop) {
        this.offsetLeft = offsetLeft;
        this.offsetTop = offsetTop;
    }

    public int xmlvmGetOffsetLeft() {
        return this.offsetLeft;
    }

    public int xmlvmGetOffsetTop() {
        return this.offsetTop;
    }
}
