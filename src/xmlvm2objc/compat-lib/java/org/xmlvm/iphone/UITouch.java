package org.xmlvm.iphone;

import java.awt.geom.AffineTransform;
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
            dstPoint = (Point2D.Float) getTransformation(view).inverseTransform(srcPoint, null);
        } catch (NoninvertibleTransformException ex) {
            ex.printStackTrace();
        }
        return new CGPoint(dstPoint.x, dstPoint.y);
    }

    private AffineTransform getTransformation(UIView v) {
        AffineTransform res = new AffineTransform();
        while (v != null) {
            AffineTransform tr = AffineTransform.getTranslateInstance(v.getFrame().origin.x, v
                    .getFrame().origin.y);
            AffineTransform ta = v.xmlvmGetRenderer().getJavaAffineTransformation();
            if (ta != null)
                ta.concatenate(tr);
            else
                ta = tr;
            ta.concatenate(res);
            res = ta;
            v = v.getSuperview();
        }
        return res;
    }
}
