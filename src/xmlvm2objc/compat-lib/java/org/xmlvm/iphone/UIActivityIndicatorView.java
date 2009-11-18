package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.renderer.UIActivityIndicatorViewRenderer;

public class UIActivityIndicatorView extends UIView {

    private int                             activityIndicatorViewStyle = UIActivityIndicatorViewStyle.White;
    private boolean                         hidesWhenStopped           = true;
    private UIActivityIndicatorViewRenderer renderer;

    public UIActivityIndicatorView() {
        init();
    }

    public UIActivityIndicatorView(int activityIndicatorViewStyle) {
        init();
        this.setActivityIndicatorViewStyle(activityIndicatorViewStyle);
    }

    private void init() {
        renderer = new UIActivityIndicatorViewRenderer(this);
        xmlvmSetRenderer(renderer);
    }

    public void setActivityIndicatorViewStyle(int style) {
        this.activityIndicatorViewStyle = style;
    }

    public int getActivityIndicatorViewStyle() {
        return this.activityIndicatorViewStyle;
    }

    public void setHidesWhenStopped(boolean flag) {
        this.hidesWhenStopped = flag;
    }

    public boolean getHidesWhenStopped() {
        return this.hidesWhenStopped;
    }

    public void startAnimating() {
        this.renderer.startAnimating();
    }

    public void stopAnimating() {
        this.renderer.stopAnimating();
    }

}
