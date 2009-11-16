
package org.xmlvm.iphone;

import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.BOTTOM_OFFSET;
import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.INIT_OFFSET;
import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.OFFSET;
import static org.xmlvm.iphone.internal.renderer.UIToolbarRenderer.TOP_OFFSET;

import java.util.ArrayList;

import org.xmlvm.iphone.internal.UIGenericToolbar;

/**
 * 
 * @author teras
 */
public class UIToolbar extends UIGenericToolbar {

    private ArrayList<UIBarButtonItem> items;

    public UIToolbar() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UIToolbar(CGRect frame) {
        super(frame);
        items = new ArrayList<UIBarButtonItem>();
    }

    public ArrayList<UIBarButtonItem> getItems() {
        return new ArrayList<UIBarButtonItem>(items);
    }

    public void setItems(ArrayList<UIBarButtonItem> items) {
        setItems(items, true);
    }

    public void setItems(ArrayList<UIBarButtonItem> items, boolean animated) {
        if (items == null)
            items = new ArrayList<UIBarButtonItem>();
        this.items = new ArrayList<UIBarButtonItem>(items);
        for (UIBarButtonItem it : items)
            it.setBar(this);
        updateViews();
    }

    protected void updateViews() {
        if (items == null)
            return;

        for (UIView v : getSubviews())
            v.removeFromSuperview();

        CGRect frame = getFrame();
        float h = frame.size.height;
        float lastX = INIT_OFFSET;
        for (UIBarButtonItem item : items) {
            UIView v = item.getCustomView();
            float width = item.getWidth();
            v.setFrame(new CGRect(lastX + OFFSET, TOP_OFFSET, width, h
                    - (TOP_OFFSET + BOTTOM_OFFSET)));
            addSubview(item.getCustomView());
            lastX += width + OFFSET;
        }
        setNeedsDisplay();
    }
}
