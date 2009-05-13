package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
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

    private String              title;
    private String              message;
    private UIAlertViewDelegate delegate;
    private String              cancelButtonTitle;
    private List<UIButton>      buttons = new ArrayList<UIButton>();

    public UIAlertView(String title, String message, UIAlertViewDelegate delegate,
            String cancelButtonTitle) {
        this.title = title;
        this.message = message;
        this.delegate = delegate;
        this.cancelButtonTitle = cancelButtonTitle;

        this.setFrame(new CGRect(196, 130, 90, 60));
        initTransformation();

    }

    public void show() {
        if (getSubviews().size() == 0) {
            addButtonWithTitle(cancelButtonTitle);
        }

        ((Display) Simulator.getDisplay()).setAlertView(this);
        doLayout();
        setNeedsDisplay();
    }

    public void setTitle(String title) {
        // TODO
    }

    public int addButtonWithTitle(String title) {
        UIButton button = UIButton.buttonWithType(UIButtonType.UIButtonTypeRoundedRect);
        button.setFrame(new CGRect(10, 30 * getSubviews().size(), 30, 20));
        button.setTitle(title, UIControlState.UIControlStateNormal);
        button.setEdgeDiameter(8);
        button.addTarget(new ButtonClickCallback(getSubviews().size()),
                UIControl.UIControlEventTouchUpInside);

        // TODO: Set color and opacity
        addSubview(button);

        return getSubviews().size() - 1;
    }

    public void drawRect(CGRect rect) {
        setTransformForThisView();
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();

        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;

        // TODO: Draw view
        g.setPaint(Color.WHITE);
        g.drawRoundRect(x, y, w, h, 24, 24);

        restoreLastTransform();
        for (UIView v : subViews) {
            v.drawRect(rect);
        }
    }

    private void doLayout() {

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
}
