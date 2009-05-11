package org.xmlvm.iphone;

import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;

import org.xmlvm.iphone.internal.Simulator;

public class UIImageView extends UIView {

    private UIImage image = null;

    public UIImageView(CGRect rect) {
        super(rect);
    }

    public void setImage(UIImage image) {
        this.image = image;
    }

    public UIImage getImage() {
        return this.image;
    }

    public void drawRect(CGRect r) {
        this.setTransformForThisView();
        Graphics2D g = CGContext.theContext.graphicsContext;
        // draw the image using the AffineTransform
        AffineTransform trans = new AffineTransform();
        CGRect rect = this.getDisplayRect();
        trans.translate(rect.origin.x, rect.origin.y);
        g.drawImage(image.image, trans, Simulator.getDisplay());
        this.restoreLastTransform();
    }
}
