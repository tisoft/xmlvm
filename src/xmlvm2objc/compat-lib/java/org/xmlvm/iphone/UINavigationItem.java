
package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.renderer.UIBarButtonItemRenderer;
import org.xmlvm.iphone.internal.renderer.UIButtonRenderer;
import org.xmlvm.iphone.internal.renderer.UIButtonRenderer.Metrics;

/**
 * 
 * @author teras
 */
public class UINavigationItem {

    private String          title;
    private String          prompt;
    private boolean         hidesBackButton;
    private UIBarButtonItem backBarButtonItem;
    private UIView          titleView;
    private UIBarButtonItem leftBarButtonItem;
    private UIBarButtonItem rightBarButtonItem;
    private UINavigationBar bar;               // Back reference

    public UINavigationItem(String title) {
        setTitle(title);
        setTitleView(null);
        setPrompt(null);
        backBarButtonItem = new UIBarButtonItem("Back", UIBarButtonItemStyle.Bordered,
                new UIBarButtonItemDelegate() {

                    public void clicked() {
                        if (bar != null)
                            if (bar.controller != null)
                                bar.controller.popViewControllerAnimated(true);
                            else
                                bar.popNavigationItemAnimated(true);
                    }
                });
        ((UIBarButtonItemRenderer) backBarButtonItem.getCustomView().xmlvmGetRenderer())
                .setBack(true);
        backBarButtonItem.setTitle(backBarButtonItem.getTitle()); // Needed to
        // update the
        // button
        // size;
    }

    void setToolbar(UINavigationBar bar) {
        this.bar = bar;
        backBarButtonItem.setBar(bar);
        if (leftBarButtonItem != null)
            leftBarButtonItem.setBar(bar);
        if (rightBarButtonItem != null)
            rightBarButtonItem.setBar(bar);
    }

    public UIBarButtonItem getBackBarButtonItem() {
        if (leftBarButtonItem != null)
            return null;
        return backBarButtonItem;
    }

    public void setBackBarButtonItem(UIBarButtonItem backBarButtonItem) {
        this.backBarButtonItem = backBarButtonItem;
        backBarButtonItem.setBar(bar);
        if (bar != null)
            bar.updateViews();
    }

    public boolean hidesBackButton() {
        return hidesBackButton;
    }

    public void setHidesBackButton(boolean hidesBackButton) {
        setHidesBackButton(hidesBackButton, false);
    }

    public void setHidesBackButton(boolean hidesBackButton, boolean animated) {
        this.hidesBackButton = hidesBackButton;
        if (bar != null)
            bar.updateViews();
    }

    public UIBarButtonItem getLeftBarButtonItem() {
        return leftBarButtonItem;
    }

    public void setLeftBarButtonItem(UIBarButtonItem leftBarButtonItem) {
        setLeftBarButtonItem(leftBarButtonItem);
    }

    public void setLeftBarButtonItem(UIBarButtonItem leftBarButtonItem, boolean animated) {
        leftBarButtonItem.setBar(bar);
        if (bar != null)
            bar.updateViews();
    }

    public String getPrompt() {
        return prompt;
    }

    public void setPrompt(String prompt) {
        this.prompt = prompt;
        if (bar != null)
            bar.updateViews();
    }

    public UIBarButtonItem getRightBarButtonItem() {
        return rightBarButtonItem;
    }

    public void setRightBarButtonItem(UIBarButtonItem rightBarButtonItem) {
        setRightBarButtonItem(rightBarButtonItem, false);
    }

    public void setRightBarButtonItem(UIBarButtonItem rightBarButtonItem, boolean animated) {
        rightBarButtonItem.setBar(bar);
        if (bar != null)
            bar.updateViews();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        if (titleView instanceof UILabel)
            ((UILabel) titleView).setText(title);
        this.title = title;
        if (bar != null)
            bar.updateViews();
    }

    public UIView getTitleView() {
        return titleView;
    }

    public void setTitleView(UIView titleView) {
        if (titleView == null) {
            UILabel label = new UILabel();
            label.setText(title);
            label.setBackgroundColor(UIColor.clearColor);
            label.setTextColor(UIColor.whiteColor);
            label.setFont(UIFont.fontWithNameSize("Arial Bold", 19));
            label.setTextAlignment(UITextAlignment.Center);
            Metrics m = UIButtonRenderer.getMetrics(CGContext.theContext.graphicsContext, title,
                    label.getFont().xmlvmGetFont());
            label.setFrame(new CGRect(0, 0, m.width, m.height));
            titleView = label;
        }
        this.titleView = titleView;
        if (bar != null)
            bar.updateViews();
    }
}
