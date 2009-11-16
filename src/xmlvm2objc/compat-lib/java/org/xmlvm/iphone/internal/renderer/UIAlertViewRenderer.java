
package org.xmlvm.iphone.internal.renderer;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.awt.Stroke;
import java.awt.geom.Path2D;
import java.util.List;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIAlertView;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIInterfaceOrientation;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.internal.Simulator;

public class UIAlertViewRenderer extends UIViewRenderer<UIAlertView> {
    public final static int  TITLE_ID           = 0;
    public final static int  MESSAGE_ID         = 1;
    public final static int  FIRSTBUTTON_ID     = 2;
    /* */
    private static final int FRAME_SIZE         = 2;
    private static final int EDGE_DIAMETER      = 16;
    private static final int INSETS             = 6;
    private static final int LABEL_INSETS       = 12;
    private static final int FULL_BUTTON_WIDTH  = 260;
    private static final int SMALL_BUTTON_WIDTH = 124;
    private static final int BUTTON_HEIGHT      = 42;
    /* These are needed to initialize UIAlertVIew UILabels */
    public static final int  TITLE_FONT_SIZE    = 16;
    public static final int  MESSAGE_FONT_SIZE  = 14;

    /*
     * UIAlertView grabs the whole screen, since it is a modal dialog. Thus it's
     * getFrame() size is not really useful. Drawings though are only restricted
     * to a small area. This variable holds the actual drawing area - the
     * "useful" area used only for drawing reasons
     */
    CGRect                   viewingArea;

    public UIAlertViewRenderer(UIAlertView view) {
        super(view);
    }

    public void paint() {
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = viewingArea; // Note!!! getFrame() refers to the
        // whole screen
        g.setColor(Color.red);

        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;

        // Paint dark screen overlay
        g.setPaint(new Color(20, 20, 20, 80));
        g.fillRect(0, 0, getScreenWidth(), getScreenHeight());

        // Paint the surrounding border
        Stroke stroke = g.getStroke();
        g.setPaint(Color.WHITE);
        g.setStroke(new BasicStroke(FRAME_SIZE));
        g.drawRoundRect(x, y, w, h, EDGE_DIAMETER, EDGE_DIAMETER);
        g.setStroke(stroke);

        // Paint the view's background
        g.setPaint(new Color(5, 10, 80, 180));
        g.fillRoundRect(x + 1, y + 1, w - 2, h - 2, EDGE_DIAMETER, EDGE_DIAMETER);

        // Paint the background's shine
        Path2D shineShape = new Path2D.Double();
        shineShape.moveTo(x + FRAME_SIZE - 1, y + FRAME_SIZE + EDGE_DIAMETER / 2 + 4);
        shineShape.lineTo(x + FRAME_SIZE - 1, y + FRAME_SIZE + EDGE_DIAMETER / 2);
        shineShape.quadTo(x, y, x + FRAME_SIZE + EDGE_DIAMETER / 2, y + FRAME_SIZE - 1);
        shineShape.lineTo(x + w - FRAME_SIZE - EDGE_DIAMETER / 2, y + FRAME_SIZE - 1);
        shineShape.quadTo(x + w, y, x + w - FRAME_SIZE + 1, y + FRAME_SIZE + EDGE_DIAMETER / 2);
        shineShape.lineTo(x + w - FRAME_SIZE + 1, y + FRAME_SIZE + EDGE_DIAMETER / 2 + 4);
        shineShape.quadTo(x + w / 2, y + 42, x + FRAME_SIZE - 1, y + FRAME_SIZE + EDGE_DIAMETER / 2
                + 4);

        GradientPaint shineGradient = new GradientPaint(0, y + 1, new Color(150, 190, 200, 180), 0,
                y + 28, new Color(135, 153, 171, 180));
        g.setPaint(shineGradient);
        g.fill(shineShape);
    }

    public void doLayout() {
        int x;
        int y;
        int width;
        int height;
        List<UIView> childs = view.getSubviews();
        UILabel titleV = (UILabel) childs.get(TITLE_ID);
        UILabel messageV = (UILabel) childs.get(MESSAGE_ID);
        int buttonSize = childs.size() - FIRSTBUTTON_ID;

        // Compute AlertView's boundary
        if (buttonSize != 2) {
            width = 2 * FRAME_SIZE + 2 * INSETS + FULL_BUTTON_WIDTH;
            height = 2 * FRAME_SIZE + LABEL_INSETS + buttonSize * INSETS
                    + (buttonSize * BUTTON_HEIGHT);
        } else {
            width = 2 * FRAME_SIZE + 4 * INSETS + 2 * SMALL_BUTTON_WIDTH;
            height = 2 * FRAME_SIZE + LABEL_INSETS + INSETS + BUTTON_HEIGHT;
        }

        if (titleV.getText() != null && titleV.getText().length() > 0)
            height += LABEL_INSETS + TITLE_FONT_SIZE;

        if (messageV.getText() != null && messageV.getText().length() > 0)
            height += LABEL_INSETS + MESSAGE_FONT_SIZE;

        x = getScreenWidth() / 2 - width / 2;
        y = getScreenHeight() / 2 - height / 2;

        // Compute title and message boundaries
        int buttonYOffset = FRAME_SIZE;
        int messageYOffset = FRAME_SIZE;

        if (titleV.getText() != null && titleV.getText().length() > 0) {
            buttonYOffset += LABEL_INSETS + TITLE_FONT_SIZE;
            messageYOffset += LABEL_INSETS + TITLE_FONT_SIZE;
            titleV.setFrame(new CGRect(FRAME_SIZE + INSETS + x, LABEL_INSETS + y,
                    buttonSize != 2 ? FULL_BUTTON_WIDTH : 2 * (SMALL_BUTTON_WIDTH + INSETS),
                    TITLE_FONT_SIZE));
        }

        if (messageV.getText() != null && messageV.getText().length() > 0) {
            buttonYOffset += LABEL_INSETS + MESSAGE_FONT_SIZE;
            messageV.setFrame(new CGRect(FRAME_SIZE + INSETS + x,
                    LABEL_INSETS + messageYOffset + y, buttonSize != 2 ? FULL_BUTTON_WIDTH
                            : 2 * (SMALL_BUTTON_WIDTH + INSETS), MESSAGE_FONT_SIZE));
        }

        // Compute buttons' boundaries
        if (buttonSize != 2)
            for (int i = 0; i < buttonSize; i++) {
                int buttonY = LABEL_INSETS + i * (INSETS + BUTTON_HEIGHT);
                UIButton button = (UIButton) childs.get(i + FIRSTBUTTON_ID);
                button.setFrame(new CGRect(FRAME_SIZE + INSETS + x, buttonYOffset + buttonY + y,
                        FULL_BUTTON_WIDTH, BUTTON_HEIGHT));
            }
        else {
            UIButton b1 = (UIButton) childs.get(0 + FIRSTBUTTON_ID);
            UIButton b2 = (UIButton) childs.get(1 + FIRSTBUTTON_ID);

            b1.setFrame(new CGRect(FRAME_SIZE + INSETS + x, buttonYOffset + LABEL_INSETS + y,
                    SMALL_BUTTON_WIDTH, BUTTON_HEIGHT));
            b2.setFrame(new CGRect(FRAME_SIZE + 3 * INSETS + SMALL_BUTTON_WIDTH + x, buttonYOffset
                    + LABEL_INSETS + y, SMALL_BUTTON_WIDTH, BUTTON_HEIGHT));
        }
        viewingArea = new CGRect(x, y, width, height);
    }

    private int getScreenWidth() {
        CGSize size = UIScreen.mainScreen().getBounds().size;
        return Simulator.getStatusBarOrientation() == UIInterfaceOrientation.Portrait
                || Simulator.getStatusBarOrientation() == UIInterfaceOrientation.PortraitUpsideDown ? (int) size.width
                : (int) size.height;
    }

    private int getScreenHeight() {
        CGSize size = UIScreen.mainScreen().getBounds().size;
        return Simulator.getStatusBarOrientation() == UIInterfaceOrientation.Portrait
                || Simulator.getStatusBarOrientation() == UIInterfaceOrientation.PortraitUpsideDown ? (int) size.height
                : (int) size.width;
    }
}
