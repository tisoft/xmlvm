package org.xmlvm.iphone;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.geom.Path2D;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.internal.Display;
import org.xmlvm.iphone.internal.Simulator;

public class UIAlertView extends UIView {

    class ButtonClickCallback extends UIControlDelegate {
        private int buttonIndex;

        public ButtonClickCallback(int buttonIndex) {
            this.buttonIndex = buttonIndex;
        }

        @Override
        public void raiseEvent() {
            buttonClicked(buttonIndex);
        }
    }

    private static final int    FRAME_SIZE         = 2;
    private static final int    EDGE_DIAMETER      = 16;
    private static final int    INSETS             = 5;
    private static final int    LABEL_INSETS       = 12;
    private static final int    FULL_BUTTON_WIDTH  = 260;
    private static final int    SMALL_BUTTON_WIDTH = 124;
    private static final int    BUTTON_HEIGHT      = 42;
    private static final int    TITLE_FONT_SIZE    = 16;
    private static final int    MESSAGE_FONT_SIZE  = 14;

    private String              title;
    private String              message;
    private UIAlertViewDelegate delegate;
    private String              cancelButtonTitle;
    private List<UIButton>      buttons            = new ArrayList<UIButton>();
    private UILabel             titleView;
    private UILabel             messageView;

    public UIAlertView(String title, String message, UIAlertViewDelegate delegate,
            String cancelButtonTitle) {
        this.title = title;
        this.message = message;
        this.delegate = delegate;
        this.cancelButtonTitle = cancelButtonTitle;

        titleView = new UILabel();
        titleView.setBackgroundColor(new Color(0, 0, 0, 0));
        titleView.setFontColor(Color.WHITE);
        titleView.setFont(new Font("Arial", Font.BOLD, TITLE_FONT_SIZE));
        titleView.setTextAlignment(UITextAlignment.UITextAlignmentCenter);
        if (title != null && title.length() > 0) {
            titleView.setText(title);
            addSubview(titleView);
        }

        messageView = new UILabel();
        messageView.setBackgroundColor(new Color(0, 0, 0, 0));
        messageView.setFontColor(Color.WHITE);
        messageView.setFont(new Font("Arial", Font.BOLD, MESSAGE_FONT_SIZE));
        messageView.setTextAlignment(UITextAlignment.UITextAlignmentCenter);
        if (message != null && message.length() > 0) {
            messageView.setText(message);
            addSubview(messageView);
        }

        initTransformation();

        // TODO: This will be done by layout() - remove this
        this.setFrame(new CGRect(196, 130, 90, 60));

    }

    public void show() {
        if (buttons.size() == 0) {
            addButtonWithTitle(cancelButtonTitle);
        }

        ((Display) Simulator.getDisplay()).setAlertView(this);
        doLayout();
        setNeedsDisplay();
    }

    public void setTitle(String title) {
        this.title = title;
        titleView.setText(title);

        if (title != null && title.length() > 0 && !getSubviews().contains(titleView)) {
            addSubview(titleView);
        }

        if ((title == null || title.length() == 0) && getSubviews().contains(titleView)) {
            titleView.removeFromSuperview();
        }
    }

    public int addButtonWithTitle(String title) {
        UIButton button = UIButton.buttonWithType(UIButtonType.UIButtonTypeRoundedRect);

        // TODO: Frame will be set by layout() - remove this
        button.setFrame(new CGRect(10, 30 * buttons.size(), 30, 20));

        button.setTitle(title, UIControlState.UIControlStateNormal);
        button.setEdgeDiameter(8);
        button.addTarget(new ButtonClickCallback(buttons.size()),
                UIControl.UIControlEventTouchUpInside);

        // TODO: Set color, opacity and font style/color
        addSubview(button);
        buttons.add(button);

        return buttons.size() - 1;
    }

    public void drawRect(CGRect rect) {
        setTransformForThisView();
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();

        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;

        // Paint the surrounding border
        g.setPaint(Color.WHITE);
        g.setStroke(new BasicStroke(FRAME_SIZE));
        g.drawRoundRect(x, y, w, h, EDGE_DIAMETER, EDGE_DIAMETER);
        
        // Paint the view's background
        g.setPaint(new Color(5, 20, 100, 200));
        g.fillRoundRect(x + 2, y + 2, w - 4, h - 4, EDGE_DIAMETER, EDGE_DIAMETER);
        
        // Paint the background's shine
        Path2D shineShape = new Path2D.Double();
        shineShape.moveTo(x + FRAME_SIZE, y + FRAME_SIZE + EDGE_DIAMETER / 2 + 4);
        shineShape.lineTo(x + FRAME_SIZE, y + FRAME_SIZE + EDGE_DIAMETER / 2);
        shineShape.quadTo(x, y, x + FRAME_SIZE + EDGE_DIAMETER / 2, y + FRAME_SIZE);
        shineShape.lineTo(x + w - FRAME_SIZE - EDGE_DIAMETER / 2, y + FRAME_SIZE);
        shineShape.quadTo(x + w, y, x + w - FRAME_SIZE, y + FRAME_SIZE + EDGE_DIAMETER / 2);
        shineShape.lineTo(x + w - FRAME_SIZE, y + FRAME_SIZE + EDGE_DIAMETER / 2 + 4);
        shineShape.quadTo(x + w / 2, y + 40, x + FRAME_SIZE, y + FRAME_SIZE + EDGE_DIAMETER / 2 + 4);
        
        g.setPaint(new Color(140, 170, 190, 200));
        g.fill(shineShape);

        restoreLastTransform();
        for (UIView v : subViews) {
            v.drawRect(rect);
        }
    }

    private void doLayout() {
        int x;
        int y;
        int width;
        int height;

        // Compute AlertView's boundary
        if (buttons.size() != 2) {
            width = 2 * FRAME_SIZE + 2 * INSETS + FULL_BUTTON_WIDTH;
            height = 2 * FRAME_SIZE + LABEL_INSETS + buttons.size() * INSETS
                    + (buttons.size() * BUTTON_HEIGHT);
        } else {
            width = 2 * FRAME_SIZE + 4 * INSETS + 2 * SMALL_BUTTON_WIDTH;
            height = 2 * FRAME_SIZE + LABEL_INSETS + INSETS + BUTTON_HEIGHT;
        }

        if (title != null && title.length() > 0) {
            height += LABEL_INSETS + TITLE_FONT_SIZE;
        }

        if (message != null && message.length() > 0) {
            height += LABEL_INSETS + MESSAGE_FONT_SIZE;
        }

        x = getScreenWidth() / 2 - width / 2;
        y = getScreenHeight() / 2 - height / 2;
        setFrame(new CGRect(x, y, width, height));

        // Compute title and message boundaries
        int buttonYOffset = FRAME_SIZE;
        int messageYOffset = FRAME_SIZE;

        if (title != null && title.length() > 0) {
            buttonYOffset += LABEL_INSETS + TITLE_FONT_SIZE;
            messageYOffset += LABEL_INSETS + TITLE_FONT_SIZE;
            titleView.setFrame(new CGRect(FRAME_SIZE + INSETS, LABEL_INSETS,
                    buttons.size() != 2 ? FULL_BUTTON_WIDTH : SMALL_BUTTON_WIDTH, TITLE_FONT_SIZE));
        }

        if (message != null && message.length() > 0) {
            buttonYOffset += LABEL_INSETS + MESSAGE_FONT_SIZE;
            messageView
                    .setFrame(new CGRect(FRAME_SIZE + INSETS, LABEL_INSETS + messageYOffset,
                            buttons.size() != 2 ? FULL_BUTTON_WIDTH : SMALL_BUTTON_WIDTH,
                            MESSAGE_FONT_SIZE));
        }

        // Compute buttons' boundaries
        if (buttons.size() != 2) {
            for (int i = 0; i < buttons.size(); i++) {
                int buttonY = LABEL_INSETS + i * (INSETS + BUTTON_HEIGHT);
                UIButton button = buttons.get(i);
                button.setFrame(new CGRect(FRAME_SIZE + INSETS, buttonYOffset + buttonY,
                        FULL_BUTTON_WIDTH, BUTTON_HEIGHT));
            }
        } else {
            UIButton b1 = buttons.get(0);
            UIButton b2 = buttons.get(1);

            b1.setFrame(new CGRect(FRAME_SIZE + INSETS, buttonYOffset + LABEL_INSETS,
                    SMALL_BUTTON_WIDTH, BUTTON_HEIGHT));
            b2.setFrame(new CGRect(FRAME_SIZE + 3 * INSETS, buttonYOffset + LABEL_INSETS,
                    SMALL_BUTTON_WIDTH, BUTTON_HEIGHT));
        }
    }

    private void initTransformation() {
        int orientation = Simulator.getStatusBarOrientation();

        switch (orientation) {
        case UIInterfaceOrientation.UIInterfaceOrientationPortrait:
            // this.setFrame(new CGRect(0, 0, 320, statusBarHeight));
            this.affineTransform = new AffineTransform();
            break;
        case UIInterfaceOrientation.UIInterfaceOrientationLandscapeRight:
            // this.setFrame(new CGRect(0, 0, 480, statusBarHeight));
            this.affineTransform = new AffineTransform();
            this.affineTransform.translate(0, 320 + 320 / 2);
            this.affineTransform.rotate((float) ((Math.PI / 180) * -90));
            break;
        case UIInterfaceOrientation.UIInterfaceOrientationLandscapeLeft:
            // this.setFrame(new CGRect(0, 0, 480, statusBarHeight));
            this.affineTransform = new AffineTransform();
            this.affineTransform.translate(320, 0);
            this.affineTransform.rotate((float) ((Math.PI / 180) * 90));
            break;
        case UIInterfaceOrientation.UIInterfaceOrientationPortraitUpsideDown:
            // TODO
            break;
        }

        computeCombinedTransforms();
    }

    private void buttonClicked(int buttonIndex) {
        delegate.clickedButtonAtIndex(this, buttonIndex);
        System.out.println("Clicked button " + buttonIndex);
        ((Display) Simulator.getDisplay()).setAlertView(null);
        setNeedsDisplay();
    }

    private int getScreenWidth() {
        return Simulator.getStatusBarOrientation() == UIInterfaceOrientation.UIInterfaceOrientationPortrait
                || Simulator.getStatusBarOrientation() == UIInterfaceOrientation.UIInterfaceOrientationPortraitUpsideDown ? 320
                : 480;
    }

    private int getScreenHeight() {
        return Simulator.getStatusBarOrientation() == UIInterfaceOrientation.UIInterfaceOrientationPortrait
                || Simulator.getStatusBarOrientation() == UIInterfaceOrientation.UIInterfaceOrientationPortraitUpsideDown ? 480
                : 320;
    }
}
