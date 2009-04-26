package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.internal.Simulator;

public class UIView extends UIResponder {

    protected AffineTransform affineTransform;
    protected AffineTransform savedTransform;

    protected CGRect          frame;
    protected CGRect          bounds;
    protected List<UIView>    subViews;
    protected UIView          parent;
    protected Color           backgroundColor;

    public UIView() {
        this.frame = null;
        this.bounds = null;
        this.backgroundColor = null;
        this.affineTransform = new AffineTransform();
        subViews = new ArrayList<UIView>();
        parent = null;

    }

    public UIView(CGRect rect) {
        this.affineTransform = new AffineTransform();
        subViews = new ArrayList<UIView>();
        parent = null;
        this.backgroundColor = null;
        setFrame(rect);
    }

    public void initWithFrame(CGRect rect) {
        setFrame(rect);
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
        return this.frame;
    }

    public void addSubview(UIView subView) {
        subView.parent = this;
        subViews.add(subView);
        Simulator.redrawDisplay();
    }

    public void insertSubview(UIView subView, int idx) {
        subView.parent = this;
        subViews.add(idx, subView);
        Simulator.redrawDisplay();
    }

    public void bringSubviewToFront(UIView subView) {
        int i = subViews.indexOf(subView);
        subViews.remove(i);
        subViews.add(subView);
    }

    public void layoutSubviews() {
    }

    public CGRect getBounds() {
        return this.bounds;
    }

    public CGRect getDisplayRect() {
        CGRect rect = new CGRect(frame);
        if (parent == null)
            return rect;
        CGRect parentRect = parent.getDisplayRect();
        rect.origin.x += parentRect.origin.x;
        rect.origin.y += parentRect.origin.y;
        return rect;
    }

    protected void setTransformForThisView() {
        Graphics2D g = CGContext.theContext.graphicsContext;
        savedTransform = g.getTransform();
        AffineTransform trans = new AffineTransform();
        trans.concatenate(affineTransform);
        g.transform(trans);
    }

    protected void restoreLastTransform() {
        Graphics2D g = CGContext.theContext.graphicsContext;
        g.setTransform(savedTransform);
    }

    public void drawRect(CGRect rect) {
        setTransformForThisView();
        Graphics2D g = CGContext.theContext.graphicsContext;
        if (backgroundColor != null) {
            CGRect displayRect = getDisplayRect();
            g.setBackground(backgroundColor);
            g.clearRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                    (int) displayRect.size.width, (int) displayRect.size.height);
        }
        for (UIView v : subViews) {
            v.drawRect(rect);
        }
        restoreLastTransform();
    }

    public void setNeedsDisplay() {
        setNeedsDisplayInRect(getDisplayRect());
    }

    protected void setNeedsDisplayInRect(CGRect rect) {
        CGRect displayRect = getDisplayRect();
        int x = (int) (displayRect.origin.x + rect.origin.x);
        int y = (int) (displayRect.origin.y + rect.origin.y);
        Simulator.redrawDisplay(x, y, (int) rect.size.width, (int) rect.size.height);
    }

    public void setTransform(CGAffineTransform trans) {
        affineTransform = new AffineTransform();

        while (trans != null) {
            switch (trans.type) {
            case CGAffineTransform.ROTATE:
                // Rotate
                affineTransform.rotate(trans.alpha, frame.origin.x + bounds.size.width / 2,
                        frame.origin.y + bounds.size.height / 2);
                break;
            case CGAffineTransform.TRANSLATE:
                affineTransform.translate(trans.tx, trans.ty);
                break;
            }
            trans = trans.next;
        }

        Simulator.redrawDisplay();
        // TODO the following clip rect doesn't work properly when rotating
        // images.
        // repaint((int) displayRect.origin.x,
        // (int) displayRect.origin.y, (int) displayRect.size.width,
        // (int) displayRect.size.height);
    }

    public void keyTyped(char key) {
        // Do nothing
    }
}
