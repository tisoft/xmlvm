
package org.xmlvm.iphone.internal.renderer;

import java.awt.FontMetrics;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UITextAlignment;

public class UILabelRenderer extends UIViewRenderer<UILabel> {

    private UIColor shadowColor;
    private CGSize  shadowOffset;

    public UILabelRenderer(UILabel view) {
        super(view);
        shadowOffset = new CGSize(0, 0);
    }

    public UIColor getShadowColor() {
        return shadowColor;
    }

    public void setShadowColor(UIColor shadowColor) {
        this.shadowColor = shadowColor;
    }

    public CGSize getShadowOffset() {
        return shadowOffset;
    }

    public void setShadowOffset(CGSize shadowOffset) {
        this.shadowOffset = shadowOffset;
    }

    public void paint() {
        super.paint();
        
        Graphics2D g = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        CGRect displayRect = view.getFrame();
        g.setFont(view.getFont().xmlvmGetFont());
        FontMetrics fm = g.getFontMetrics();
        int width = fm.stringWidth(view.getText());
        int height = fm.getHeight();
        int descent = fm.getDescent();
        // TODO Centering hard coded for now
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        switch (view.getTextAlignment()) {
        case UITextAlignment.Left:
            // Do nothing
            break;
        case UITextAlignment.Center:
            x += ((int) view.getFrame().size.width - width) / 2;
            break;
        }
        y += ((int) view.getFrame().size.height - height) / 2 + height - descent;

        if (shadowColor != null) {
            g.setPaint(shadowColor.xmlvmGetPaint());
            g.drawString(view.getText(), x + shadowOffset.width, y + shadowOffset.height);
        }

        g.setPaint(view.getTextColor().xmlvmGetPaint());
        g.drawString(view.getText(), x, y);
    }
}
