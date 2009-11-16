package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.renderer.UIImageViewRenderer;

public class UIImageView extends UIView {

    private UIImage image = null;

    public UIImageView(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UIImageViewRenderer(this));
    }

    public void setImage(UIImage image) {
        this.image = image;
    }

    public UIImage getImage() {
        return this.image;
    }
}
