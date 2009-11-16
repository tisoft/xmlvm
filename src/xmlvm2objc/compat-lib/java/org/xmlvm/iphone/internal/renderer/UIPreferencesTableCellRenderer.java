
package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.FontMetrics;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIPreferencesTableCell;

/**
 * 
 * @author teras
 */
public class UIPreferencesTableCellRenderer extends UIViewRenderer<UIPreferencesTableCell> {

    private final int INSET = 10;

    public UIPreferencesTableCellRenderer(UIPreferencesTableCell view) {
        super(view);
    }

    public void paint() {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = view.getFrame();
        g.setBackground(Color.WHITE);
        g.setColor(view.isGroupCell() ? Color.GRAY : Color.BLACK);
        FontMetrics fm = g.getFontMetrics();
        int x = (int) displayRect.origin.x + INSET;
        int y = (int) displayRect.origin.y + ((int) view.getFrame().size.height + fm.getHeight())
                / 2 - fm.getDescent();
        g.drawString(view.getTitle(), x, y);
    }
}
