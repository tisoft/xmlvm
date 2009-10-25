package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.xmlvm.iphone.gl.CAEAGLLayer;
import org.xmlvm.iphone.internal.Simulator;

public class UIView extends UIResponder {

    /** The affine transform for this view */
    protected AffineTransform affineTransform;
    /**
     * The affine transform plus all concatenated parent transforms for this
     * view
     */
    protected AffineTransform combinedAffineTransform;
    protected AffineTransform savedTransform;

    protected CGRect          frame;
    protected CGRect          bounds;
    protected List<UIView>    subViews;
    protected UIView          parent;
    protected Color           backgroundColor;
    protected boolean         opaque;
    protected float           alpha;
    
    // TODO not pretty
    private CAEAGLLayer layer = new CAEAGLLayer();
    
    public UIView() {
        init();
        setFrame(new CGRect(0, 0, 0, 0));
    }

    public UIView(CGRect rect) {
        init();
        setFrame(rect);
    }

    public UIView(CGRect rect, String layerClass) {
        init();
        setFrame(rect);
        try {
			layer = new CAEAGLLayer();
		} catch (Exception e) {
			throw new RuntimeException(e);
		} 
    }
    
    private void init() {
        this.frame = null;
        this.bounds = null;
        this.backgroundColor = null;
        this.opaque = true;
        this.affineTransform = new AffineTransform();
        this.combinedAffineTransform = new AffineTransform();
        subViews = new ArrayList<UIView>();
        parent = null;
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
        computeCombinedTransforms();
        if (needsLayouting)
            layoutSubviews();
    }

    public CGRect getFrame() {
        return this.frame;
    }

    public void addSubview(UIView subView) {
        subView.parent = this;
        subViews.add(subView);
        subView.computeCombinedTransforms();
        Simulator.redrawDisplay();
    }

    public void insertSubview(UIView subView, int idx) {
        subView.parent = this;
        subViews.add(idx, subView);
        subView.computeCombinedTransforms();
        Simulator.redrawDisplay();
    }

    public void bringSubviewToFront(UIView subView) {
        int i = subViews.indexOf(subView);
        subViews.remove(i);
        subViews.add(subView);
    }

    public void removeFromSuperview() {
        parent.subViews.remove(this);
        Simulator.redrawDisplay();
    }

    public List<UIView> getSubviews() {
        return new ArrayList<UIView>(this.subViews);
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
        g.transform(combinedAffineTransform);
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
        // We have to restore the last transform since every subview will set
        // its own combined affine transform.
        restoreLastTransform();
        for (UIView v : subViews) {
            v.drawRect(rect);
        }
    }

    public void setNeedsDisplay() {
        setNeedsDisplayInRect(getDisplayRect());
    }

    // TODO (arno) Fix the clipping rect computation
    protected void setNeedsDisplayInRect(CGRect rect) {
        CGRect displayRect = getDisplayRect();
        int x = (int) (displayRect.origin.x + rect.origin.x);
        int y = (int) (displayRect.origin.y + rect.origin.y);
        Simulator.redrawDisplay(x, y, (int) rect.size.width, (int) rect.size.height);
    }

    /**
     * Set a Cocoa-style affine transfor for this view. The affine transform is
     * converted to an AWT-style affine transform.
     * 
     * @param trans
     *            Cocoa-style affine transform.
     */
    public void setTransform(CGAffineTransform trans) {
        affineTransform = new AffineTransform();

        while (trans != null) {
            switch (trans.type) {
            case CGAffineTransform.ROTATE:
                // Rotate
                affineTransform.rotate(trans.alpha, frame.origin.x + bounds.size.width / 2.0,
                        frame.origin.y + bounds.size.height / 2.0);
                break;
            case CGAffineTransform.TRANSLATE:
                affineTransform.translate(trans.tx, trans.ty);
                break;
            }
            trans = trans.next;
        }

        computeCombinedTransforms();

        Simulator.redrawDisplay();
        // TODO the following clip rect doesn't work properly when rotating
        // images.
        // repaint((int) displayRect.origin.x,
        // (int) displayRect.origin.y, (int) displayRect.size.width,
        // (int) displayRect.size.height);
    }

    /**
     * Compute the combined affine transform of this view. The combined affine
     * transform is the affine transform set for this view concatenated with the
     * affine transforms of all the view's parents.
     */
    protected void computeCombinedTransforms() {
        combinedAffineTransform = new AffineTransform();
        if (parent != null) {
            combinedAffineTransform = new AffineTransform(parent.combinedAffineTransform);
        }
        combinedAffineTransform.concatenate(affineTransform);
        for (UIView v : subViews) {
            v.computeCombinedTransforms();
        }
    }

    /**
     * Returns the combined AWT-style affine transform of this view. The
     * combined affine transform is the concatenation of all the parent's affine
     * transforms.
     * 
     * @return AWT-style combined affine transform.
     */
    public AffineTransform getCombinedTransform() {
        return this.combinedAffineTransform;
    }

    /**
     * Returns the AWT-style affine transform of this view.
     * 
     * @return AWT-style affine transform.
     */
    public AffineTransform getAffineTransform() {
        return this.affineTransform;
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

    // TODO: Make this package visible only
    public Color getBackgroundColor() {
        return backgroundColor;
    }

    // TODO: Make this package visible only
    public void setBackgroundColor(Color backgroundColor) {
        this.backgroundColor = backgroundColor;
    }

    public float getAlpha() {
        return alpha;
    }

    public void setAlpha(float alpha) {
        this.alpha = alpha;
    }
    
    protected int getAlphaAsInt()
    {
    	return (int)(255f * alpha);
    }

    public boolean touchedInsideView(Set<UITouch> touches) {
        UITouch t = touches.iterator().next();
        CGPoint p = t.locationInView(this);
        CGRect r = this.getBounds();
        return p.x < 0 || p.y < 0 || p.x > r.size.width - 1 || p.y > r.size.height - 1? false : true;
    }
    
    public void touchesBegan(Set<UITouch> touches, UIEvent event) {
        if (getDelegate() != null) {
            getDelegate().touchesBegan(touches, event);
        }
        
        if (parent != null) {
            parent.touchesBegan(touches, event);
        }
        else {
            UIApplication.sharedApplication().touchesBegan(touches, event);
        }
    }

    public void touchesCancelled(Set<UITouch> touches, UIEvent event) {
        if (getDelegate() != null) {
            getDelegate().touchesCancelled(touches, event);
        }
        
        if (parent != null) {
            parent.touchesCancelled(touches, event);
        }
        else {
            UIApplication.sharedApplication().touchesCancelled(touches, event);
        }
    }

    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        if (getDelegate() != null) {
            getDelegate().touchesEnded(touches, event);
        }
        
        if (parent != null) {
            parent.touchesEnded(touches, event);
        }
        else {
            UIApplication.sharedApplication().touchesEnded(touches, event);
        }
    }

    public void touchesMoved(Set<UITouch> touches, UIEvent event) {
        if (getDelegate() != null) {
            getDelegate().touchesMoved(touches, event);
        }
        
        if (parent != null) {
            parent.touchesMoved(touches, event);
        }
        else {
            UIApplication.sharedApplication().touchesMoved(touches, event);
        }
    }
    
    public CAEAGLLayer getEAGLLayer() {
    	return layer;
    }
}
