
package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIButton;

/**
 * 
 * @author teras
 */
public class UICustomButtonRenderer extends UIButtonRenderer {

    public UICustomButtonRenderer(UIButton view) {
        super(view);
    }

    protected void drawButton(Graphics2D g, CGRect displayRect) {
        g.setColor(Color.BLACK);
        g.fillRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                (int) displayRect.size.width, (int) displayRect.size.height);
        g.setColor(Color.WHITE);
        drawTitle(g, displayRect);
    }
}
