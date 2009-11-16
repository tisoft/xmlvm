
package org.xmlvm.iphone.internal.renderer;

import java.lang.reflect.Method;

import org.xmlvm.iphone.UIBarItem;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.internal.UIGenericBar;

/**
 * 
 * @author teras
 */
public abstract class UIBarItemRenderer extends UIButtonRenderer {

    protected UIBarItem item;

    public UIBarItemRenderer(UIBarItem item, UIButton view) {
        super(view);
        this.item = item;
    }

    public final UIGenericBar getBar() {
        try {
            /* Need reflection not to present non-documented API */
            Method m = UIBarItem.class.getDeclaredMethod("getBar", new Class[0]);
            m.setAccessible(true);
            return (UIGenericBar) m.invoke(item, new Object[0]);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
}
