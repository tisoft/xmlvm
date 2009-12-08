package org.xmlvm.iphone;

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
    private boolean           userInteractionEnabled;
    private boolean           clipsToBounds;
    private CGAffineTransform transform;
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
        this.backgroundColor = UIColor.clearColor;
        this.backgroundImage = null;
        this.opaque = true;
        this.hidden = false;
        setUserInteractionEnabled(true);
        subviews = new ArrayList<UIView>();
        superview = null;
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
        boolean notifyController = superview != null && superview instanceof UIWindow && controller != null;
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
        return this.bounds;
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
        CGRect r = this.getBounds();
        return p.x < 0 || p.y < 0 || p.x > r.size.width - 1 || p.y > r.size.height - 1 ? false
                : true;
    }

    public void touchesBegan(Set<UITouch> touches, UIEvent event) {
        if (getResponderDelegate() != null) {
            if (getResponderDelegate().touchesBegan(touches, event))
                return;
        }

        if (superview != null)
            superview.touchesBegan(touches, event);
        else
            UIApplication.sharedApplication().touchesBegan(touches, event);
    }

    public void touchesCancelled(Set<UITouch> touches, UIEvent event) {
        if (getResponderDelegate() != null) {
            if (getResponderDelegate().touchesCancelled(touches, event))
                return;
        }

        if (superview != null)
            superview.touchesCancelled(touches, event);
        else
            UIApplication.sharedApplication().touchesCancelled(touches, event);
    }

    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        if (getResponderDelegate() != null) {
            if (getResponderDelegate().touchesEnded(touches, event))
                return;
        }

        if (superview != null)
            superview.touchesEnded(touches, event);
        else
            UIApplication.sharedApplication().touchesEnded(touches, event);
    }

    public void touchesMoved(Set<UITouch> touches, UIEvent event) {
        if (getResponderDelegate() != null) {
            if (getResponderDelegate().touchesMoved(touches, event))
                return;
        }

        if (superview != null)
            superview.touchesMoved(touches, event);
        else
            UIApplication.sharedApplication().touchesMoved(touches, event);
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

    public void drawRect(CGRect rect) {
        if (isHidden())
            return;
        renderer.initPaint();

        renderer.paint();

        CGContext.theContext.graphicsContext.translate(getFrame().origin.x, getFrame().origin.y);
        // This is required to set the new coordinates to widget's 0,0 location
        for (UIView v : getSubviews())
            v.drawRect(rect);
        renderer.finishPaint();
    }

    protected UIViewRenderer<?> xmlvmGetRenderer() {
        return renderer;
    }

    protected void xmlvmSetRenderer(UIViewRenderer<?> renderer) {
        this.renderer = renderer;
    }
}
