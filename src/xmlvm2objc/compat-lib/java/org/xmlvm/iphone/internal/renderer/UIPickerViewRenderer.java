
package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.Font;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIPickerView;

/**
 * 
 * @author teras
 */
public class UIPickerViewRenderer extends UIViewRenderer<UIPickerView> {

    public final static int    INSET             = 11;
    private final static Color UpperC            = new Color(159, 159, 159);
    private final static Color LowerC            = new Color(40, 42, 57);
    private final static Color DarkC             = new Color(49, 50, 55);
    private final static Color VertBarC          = new Color(17, 18, 19);
    private final static Color LowerBarC         = new Color(102, 103, 118);
    private final static int   DARK_HEIGHT       = 50;
    private final static Font  TxtFont           = new Font("Arial", Font.BOLD, 20);

    /* */
    private int[]              selectedRows;
    private int                selectedComponent = 1;

    public UIPickerViewRenderer(UIPickerView view) {
        super(view);
    }

    public void paint() {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect rect = view.getFrame();
        int x = (int) rect.origin.x;
        int y = (int) rect.origin.y;
        int w = (int) rect.size.width;
        int h = (int) rect.size.height;

        // Draw outer paint
        GradientPaint outer = new GradientPaint(x, y, UpperC, x, y + h, LowerC);
        g.setPaint(outer);
        g.fillRect(x, y, w, h);

        // ** Draw inside **
        // Middle white
        g.setColor(Color.WHITE);
        g
                .fillRect(x + INSET, y + INSET + DARK_HEIGHT, w - INSET * 2, h - 2
                        * (INSET + DARK_HEIGHT));
        // Upper dark
        GradientPaint innershadow = new GradientPaint(x, y + INSET, DarkC, x, y + DARK_HEIGHT
                + INSET, Color.WHITE);
        g.setPaint(innershadow);
        g.fillRect(x + INSET, y + INSET, w - INSET * 2, DARK_HEIGHT);
        // Lower dark
        innershadow = new GradientPaint(x, y + h - INSET - DARK_HEIGHT, Color.WHITE, x, y + h
                - INSET, DarkC);
        g.setPaint(innershadow);
        g.fillRect(x + INSET, y + h - INSET - DARK_HEIGHT, w - INSET * 2, DARK_HEIGHT);

        // Draw separation bars
        g.setColor(VertBarC);
        g.drawLine(x + INSET, y + INSET, x + INSET, y + h - INSET);
        g.drawLine(x + w - INSET, y + INSET, x + w - INSET, y + h - INSET);
        g.setColor(LowerBarC);
        g.drawLine(x + INSET, y + h - INSET, x + w - INSET, y + h - INSET);

        // Paint various components
        AffineTransform trans = g.getTransform();
        g.translate(x + INSET + 1, y + INSET + 1);
        for (int i = 0; i < view.getNumberOfComponents(); i++) {
            paintComponent(g, i, h - 2 * INSET - 2);
            g.translate(view.getDelegate().widthForComponent(view, i), 0);
        }
        g.setTransform(trans);
        // Paint edges of components
    }

    private void paintComponent(Graphics2D g, int component, int height) {
        if (component == selectedComponent) {
            g.setColor(new Color(0, 255, 0, 30));
            g.fillRect(0, 0, (int) view.getDelegate().widthForComponent(view, component), height);
        }
    }

    public void updateSelections() {
        int[] newsel = new int[view.getNumberOfComponents()];
        for (int i = 0; i < newsel.length; i++)
            if (i < selectedRows.length)
                if (selectedRows[i] < view.numberOfRowsInComponent(i))
                    newsel[i] = selectedRows[i];
                else
                    newsel[i] = view.numberOfRowsInComponent(i) - 1;
            else
                newsel[i] = 0;
        selectedRows = newsel;
    }
}
