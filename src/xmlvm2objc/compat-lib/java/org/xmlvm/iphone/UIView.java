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

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.Simulator;
import org.xmlvm.iphone.internal.renderer.UIViewRenderer;

@XMLVMSkeletonOnly
public class UIView extends UIResponder {

    private CGRect            frame;
    private CGRect            bounds;
    private List<UIView>      subviews;
    private UIView            superview;
    private UIColor           backgroundColor;
    private boolean           opaque;
    private float             alpha;
    private boolean           hidden;
    private int               contentMode;
    private boolean           userInteractionEnabled;
    private boolean           clipsToBounds;
    private CGAffineTransform transform;
    private int               offsetLeft;
    private int               offsetTop;
    private int               tag;
    private CALayer           layer;
    private int               autoresizingMask;
    private boolean           autoresizesSubviews;

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
        this.backgroundColor = null;
        this.opaque = true;
        this.hidden = false;
        this.contentMode = UIViewContentMode.ScaleToFill;
        setUserInteractionEnabled(true);
        subviews = new ArrayList<UIView>();
        superview = null;
        setFrame(rect);
        setHidden(false);
        tag = 0;
        layer = CALayer.layer();
        autoresizingMask = UIViewAutoresizing.None;
        autoresizesSubviews = true;
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

    public void addSubview(UIView subView) {
        insertSubview(subView, subviews.size());
    }

    public void sendSubviewToBack(UIView subView) {
        if (!subviews.contains(subView)) {
            subviews.remove(subView);
            subviews.add(0, subView);
        }
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
        if (superview == null)
            return;
        boolean notifyController = superview instanceof UIWindow && controller != null;
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

    public UIWindow getWindow() {
        UIView current = this;
        while (!(current instanceof UIWindow)) {
            current = current.superview;
        }
        return (UIWindow) current;
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

    public boolean isOpaque() {
        return opaque;
    }

    public void setClearsContextBeforeDrawing(boolean clear) {
        // TODO : Java implementation
    }

    public void keyTyped(char key) {
        // Do nothing
    }

    public UIColor getBackgroundColor() {
        return backgroundColor;
    }

    public void setBackgroundColor(UIColor backgroundColor) {
        this.backgroundColor = backgroundColor;
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

    public void setContentMode(int uiViewContentMode) {
        this.contentMode = uiViewContentMode;
    }

    public int getContentMode() {
        return contentMode;
    }

    public boolean isUserInteractionEnabled() {
        return userInteractionEnabled;
    }

    public final void setUserInteractionEnabled(boolean userInteractionEnabled) {
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

    public int getTag() {
        return tag;
    }

    public void setTag(int tag) {
        this.tag = tag;
    }

    public CGPoint convertPointToView(CGPoint point, UIView view) {
        // TODO : Java implementation
        return null;
    }

    public CGPoint convertPointFromView(CGPoint point, UIView view) {
        // TODO : Java implementation
        return null;
    }

    public CGRect convertRectToView(CGRect point, UIView view) {
        // TODO : Java implementation
        return null;
    }

    public CGRect convertRectFromView(CGRect point, UIView view) {
        // TODO : Java implementation
        return null;
    }

    public CALayer getLayer() {
        return layer;
    }

    public int getAutoresizingMask() {
        return autoresizingMask;
    }

    public void setAutoresizingMask(int uiViewAutoresizing) {
        this.autoresizingMask = uiViewAutoresizing;
    }

    public boolean isAutoresizesSubviews() {
        return autoresizesSubviews;
    }

    public void setAutoresizesSubviews(boolean autoresizesSubviews) {
        this.autoresizesSubviews = autoresizesSubviews;
    }

    /* View animations */
    public static void beginAnimations(String animationID) {
        // TODO : Java implementation
    }

    public static void commitAnimations() {
        // TODO : Java implementation
    }

    public static void setAnimationStartDate(NSDate startTime) {
        // TODO : Java implementation
    }

    public static void setAnimationsEnabled(boolean enabled) {
        // TODO : Java implementation
    }

    public static void setAnimationDuration(double duration) {
        // TODO : Java implementation
    }

    public static void setAnimationDelay(double delay) {
        // TODO : Java implementation
    }

    public static void setAnimationCurve(int uiViewAnimationCurve) {
        // TODO : Java implementation
    }

    public static void setAnimationRepeatCount(float repeatCount) {
        // TODO : Java implementation
    }

    public static void setAnimationRepeatAutoreverses(boolean repeatAutoreverses) {
        // TODO : Java implementation
    }

    public static void setAnimationBeginsFromCurrentState(boolean fromCurrentState) {
        // TODO : Java implementation
    }

    public static void setAnimationTransitionForView(int uiViewAnimationTransition, UIView view,
            boolean cache) {
        // TODO : Java implementation
    }

    public static boolean areAnimationsEnabled() {
        // TODO : Java implementation
        return true;
    }

    public static void setAnimationDelegate(UIViewAnimationDelegate delegate) {
        // TODO : Java implementation
    }

    public CGSize sizeThatFits(CGSize size) {
        // TODO : Java implementation
        return null;
    }

    public void sizeToFit() {
        // TODO : Java implementation
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

    protected final void xmlvmSetRenderer(UIViewRenderer<?> renderer) {
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
