
package org.xmlvm.iphone;

import java.util.HashSet;
import java.util.Set;

import org.xmlvm.iphone.internal.UIBarButtonItemView;
import org.xmlvm.iphone.internal.renderer.UIBarButtonItemRenderer;
import org.xmlvm.iphone.internal.renderer.UIButtonRenderer;

/**
 * 
 * @author teras
 */
public class UIBarButtonItem extends UIBarItem {
    /* SEL action : replaced solely by UIBarButtonItemTarget */
    /* */

    private UIView                  customView;
    private Set<String>             possibleTitles;
    private UIBarButtonItemDelegate target;
    private int                     style;
    private float                   width;

    public UIBarButtonItem(int UIBarButtonSystemItem, Object target, String action) {
    }

    public UIBarButtonItem(UIView v) {
    }

    public UIBarButtonItem(UIImage image, int UIBarButtonItemStyle, Object targe, String action) {
    }

    public UIBarButtonItem(String title, int UIBarButtonItemStyle,
            final UIBarButtonItemDelegate action) {
        possibleTitles = new HashSet<String>();
        possibleTitles.add(title);
        style = UIBarButtonItemStyle;
        this.width = 50;

        UIBarButtonItemView b = new UIBarButtonItemView(this, false);
        b.addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControlDelegate sender, int eventType) {
                if (action != null)
                    action.clicked();
            }
        }, UIControlEvent.TouchUpInside);
        b.setFont(UIBarButtonItemRenderer.BAR_BUTTON_FONT);
        customView = b;
        setTitle(title);
    }

    public void setTitle(String title) {
        super.setTitle(title);
        if (customView instanceof UIBarButtonItemView)
            ((UIBarButtonItemView) customView).setTitle(title, 0);
        UIButtonRenderer.Metrics m = UIButtonRenderer.getMetrics(
                CGContext.theContext.graphicsContext, title,
                UIBarButtonItemRenderer.BAR_BUTTON_FONT.xmlvmGetFont());
        float cutoff = ((UIBarButtonItemRenderer) getCustomView().xmlvmGetRenderer()).isBack() ? UIBarButtonItemRenderer.CUTOFF
                : 0;
        setWidth(m.width + UIBarButtonItemRenderer.TEXT_INSET * 2 + cutoff);
        updateViews();
    }

    public UIView getCustomView() {
        return customView;
    }

    public void setCustomView(UIView customView) {
        this.customView = customView;
        updateViews();
    }

    public Set<String> getPossibleTitles() {
        return possibleTitles;
    }

    public void setPossibleTitles(Set<String> possibleTitles) {
        this.possibleTitles = possibleTitles;
    }

    public int getStyle() {
        return style;
    }

    public void setStyle(int style) {
        this.style = style;
        updateViews();
    }

    public UIBarButtonItemDelegate getTarget() {
        return target;
    }

    public void setTarget(UIBarButtonItemDelegate target) {
        this.target = target;
    }

    public float getWidth() {
        return width;
    }

    public void setWidth(float width) {
        this.width = width;
        updateViews();
    }
}
