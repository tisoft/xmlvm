
package org.xmlvm.iphone;

import java.awt.geom.AffineTransform;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.internal.Simulator;



public class UIView
{

    protected AffineTransform affineTransform;

    protected CGRect          viewRect;
    protected List<UIView>    subViews;
    protected UIView          parent;



    public UIView()
    {
        this.viewRect = null;
        this.affineTransform = new AffineTransform();
        subViews = new ArrayList<UIView>();
        parent = null;

    }



    public UIView(CGRect rect)
    {
        this.viewRect = new CGRect(rect);
        this.affineTransform = new AffineTransform();
        subViews = new ArrayList<UIView>();
        parent = null;
    }



    public void initWithFrame(CGRect rect)
    {
        setFrame(rect);
    }



    public void setFrame(CGRect rect)
    {
        viewRect = new CGRect(rect);
    }



    public void addSubview(UIView subView)
    {
        subView.parent = this;
        subViews.add(subView);
    }



    public CGRect getDisplayRect()
    {
        CGRect rect = new CGRect(viewRect);
        if (parent == null)
            return rect;
        CGRect parentRect = parent.getDisplayRect();
        rect.origin.x += parentRect.origin.x;
        rect.origin.y += parentRect.origin.y;
        return rect;
    }



    public void drawRect(CGRect rect)
    {
        for (UIView v : subViews) {
            v.drawRect(rect);
        }
    }



    public void setNeedsDisplay()
    {
    	setNeedsDisplayInRect(getDisplayRect());
    }
    protected void setNeedsDisplayInRect(CGRect rect)
    {
        CGRect displayRect = getDisplayRect();
        int x = (int) (displayRect.origin.x + rect.origin.x);
        int y = (int) (displayRect.origin.y + rect.origin.y);
        Simulator.redrawDisplay(x, y, (int) rect.size.width,
                (int) rect.size.height);
    }



    public void setTransform(CGAffineTransform trans)
    {
        affineTransform = new AffineTransform();
        switch (trans.type) {
            case 0:
                // Rotate
                affineTransform.rotate(trans.alpha, viewRect.size.width / 2,
                        viewRect.size.height / 2);
        }
        Simulator.redrawDisplay();
        // TODO the following clip rect doesn't work properly when rotating
        // images.
        // repaint((int) displayRect.origin.x,
        // (int) displayRect.origin.y, (int) displayRect.size.width,
        // (int) displayRect.size.height);
    }



    public void keyTyped(char key)
    {
        // Do nothing
    }
}
