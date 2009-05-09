package org.xmlvm.iphone;

import java.awt.geom.NoninvertibleTransformException;
import java.awt.geom.Point2D;


public class UITouch {

    private int    phase;
    private UIView view;
    private int    x;
    private int    y;

    public UITouch(int phase, UIView view, int x, int y) {
        this.phase = phase;
        this.view = view;
        this.x = x;
        this.y = y;
    }

    public int phase() {
        return phase;
    }

    public UIView getView() {
        return view;
    }

    public CGPoint locationInView(UIView view) {
        Point2D.Float srcPoint = new Point2D.Float(x, y);
        Point2D.Float dstPoint = null;
        try {
            dstPoint = (Point2D.Float) view.getCombinedTransform().inverseTransform(srcPoint, null);
        } catch (NoninvertibleTransformException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        CGRect rect = view.getDisplayRect();
        dstPoint.x -= rect.origin.x;
        dstPoint.y -= rect.origin.y;
        CGPoint point = new CGPoint(dstPoint.x, dstPoint.y);
        return point;
    }
}
