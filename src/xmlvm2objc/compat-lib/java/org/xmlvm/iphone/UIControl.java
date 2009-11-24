package org.xmlvm.iphone;

import static org.xmlvm.iphone.UIControlEvent.TouchUpInside;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class UIControl extends UIView {

    protected Map<Integer, UIControlDelegate> delegates;

    public UIControl() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UIControl(CGRect rect) {
        super(rect);
        delegates = new HashMap<Integer, UIControlDelegate>();
    }

    public void addTarget(UIControlDelegate delegate, int UIControlEvent) {
        delegates.put(UIControlEvent, delegate);
    }

    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        if (touchedInsideView(touches)) {
            for (Iterator<Map.Entry<Integer, UIControlDelegate>> it = delegates.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<Integer, UIControlDelegate> e = it.next();
                if ((e.getKey().intValue() & TouchUpInside) > 0)
                    e.getValue().raiseEvent(e.getValue(), UIControlEvent.TouchUpInside);
            }
        }
    }

}
