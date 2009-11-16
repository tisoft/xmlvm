
package org.xmlvm.iphone.internal.renderer;

import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.internal.Simulator;

/**
 * 
 * @author teras
 */
public class UIImageViewRenderer extends UIViewRenderer<UIImageView> {

    public UIImageViewRenderer(UIImageView view) {
        super(view);
    }

    public void paint() {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect rect = view.getFrame();
        g.drawImage(view.getImage().xmlvmGetImage(), (int) rect.origin.x, (int) rect.origin.y,
                Simulator.getDisplay());
    }
}
