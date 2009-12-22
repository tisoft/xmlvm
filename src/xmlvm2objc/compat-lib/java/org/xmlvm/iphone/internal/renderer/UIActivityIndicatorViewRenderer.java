package org.xmlvm.iphone.internal.renderer;

import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIActivityIndicatorView;
import org.xmlvm.iphone.UIActivityIndicatorViewStyle;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.internal.Simulator;

public class UIActivityIndicatorViewRenderer extends UIViewRenderer<UIActivityIndicatorView> {

    /* Animated gifs courtesy of http://www.ajaxload.info */

    private static final UIImage whiteSpinnerImage      = UIImage
                                                                .imageWithContentsOfFile("activity-indicator-white-small.gif");
    private static final UIImage whiteLargeSpinnerImage = UIImage
                                                                .imageWithContentsOfFile("activity-indicator-white-large.gif");
    private static final UIImage graySpinnerImage       = UIImage
                                                                .imageWithContentsOfFile("activity-indicator-gray-small.gif");

    private boolean              isAnimating            = false;

    public UIActivityIndicatorViewRenderer(UIActivityIndicatorView view) {
        super(view);
    }

    public void paint() {
        if (!isAnimating || ((UIActivityIndicatorView) view).isHidden()) {
            return;
        }
        Graphics2D g = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        CGRect rect = view.getFrame();
        UIImage spinner = null;
        switch (((UIActivityIndicatorView) view).getActivityIndicatorViewStyle()) {
        case UIActivityIndicatorViewStyle.White:
            spinner = whiteSpinnerImage;
            break;
        case UIActivityIndicatorViewStyle.WhiteLarge:
            spinner = whiteLargeSpinnerImage;
            break;
        case UIActivityIndicatorViewStyle.Gray:
            spinner = graySpinnerImage;
            break;
        }
        //TODO Down below we draw an animated gif. While the gifs are actually animated,
        // drawImage() just draws a static image. Not sure if Java2D can render animated
        // gifs automatically.
        g.drawImage(spinner.xmlvmGetImage(), (int) rect.origin.x, (int) rect.origin.y, Simulator
                .getDisplay());
    }

    public void startAnimating() {
        this.isAnimating = true;
        this.redraw();
    }

    public void stopAnimating() {
        this.isAnimating = false;
        this.redraw();
    }
}
