
package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.FontMetrics;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIPreferencesTextTableCell;

public class UIPreferencesTextTableCellRenderer extends UIViewRenderer<UIPreferencesTextTableCell> {

    public UIPreferencesTextTableCellRenderer(UIPreferencesTextTableCell view) {
        super(view);
    }

    public void paint() {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = view.getFrame();
        g.setColor(Color.BLACK);
        FontMetrics fm = g.getFontMetrics();
        int x = (int) (displayRect.origin.x + view.getFrame().size.width / 2);
        int y = (int) displayRect.origin.y + ((int) view.getFrame().size.height + fm.getHeight())
                / 2 - fm.getDescent();
        g.drawString(view.getValue(), x, y);
        x += fm.stringWidth(view.getValue());
        g.drawLine(x, y - fm.getHeight(), x, y);

    }
}
