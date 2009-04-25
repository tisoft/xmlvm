package org.xmlvm.iphone;

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
        CGRect rect = view.getDisplayRect();
        CGPoint point = new CGPoint(x - rect.origin.x, y - rect.origin.y);
        return point;
    }
}
