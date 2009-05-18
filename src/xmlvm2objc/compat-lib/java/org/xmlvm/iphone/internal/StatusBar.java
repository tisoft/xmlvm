package org.xmlvm.iphone.internal;

import java.awt.Color;
import java.awt.Font;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UIInterfaceOrientation;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIView;

public class StatusBar extends UIView {

    public static final int      statusBarHeight = 20;

    private boolean              isHidden;
    private float                fullHeight;
    private int                  orientation;
    private static final UIImage batteryImage    = UIImage.imageAtPath("battery.png");
    private static final UIImage wifiImage       = UIImage.imageAtPath("wifi.png");

    private UILabel              ipodLabel;
    private UIImageView          wifiIcon;
    private UIImageView          batteryIcon;
    private UILabel              timeLabel;

    public StatusBar(CGRect rect) {
        super(rect);
        isHidden = false;
        fullHeight = frame.size.height;
        addIPodLabel(rect);
        addWifiIcon(rect);
        addBatteryIcon(rect);
        addTimeLabel(rect);
    }

    private void addIPodLabel(CGRect rect) {
        ipodLabel = new UILabel(new CGRect(5, 0, 20, rect.size.height));
        ipodLabel.setFont(new Font("Arial", Font.BOLD, 12));
        ipodLabel.setFontColor(Color.DARK_GRAY);
        ipodLabel.setBackgroundColor(null);
        ipodLabel.setText("iPod");
        addSubview(ipodLabel);
    }

    private void addWifiIcon(CGRect rect) {
        wifiIcon = new UIImageView(new CGRect(40, 4, 18, 12));
        wifiIcon.setImage(wifiImage);
        addSubview(wifiIcon);
    }

    private void addBatteryIcon(CGRect rect) {
        CGSize size = batteryImage.getSize();
        batteryIcon = new UIImageView(new CGRect(rect.size.width - 30, 5, size.width, size.height));
        batteryIcon.setImage(batteryImage);
        addSubview(batteryIcon);
    }

    private void addTimeLabel(CGRect rect) {
        timeLabel = new UILabel(new CGRect(rect.size.width / 2 - 20, 0, 20, rect.size.height));
        timeLabel.setFont(new Font("Arial", Font.BOLD, 14));
        timeLabel.setFontColor(Color.BLACK);
        timeLabel.setBackgroundColor(null);
        SimpleDateFormat formatter;
        formatter = new SimpleDateFormat("K:mm a");
        timeLabel.setText(formatter.format(new Date()));
        addSubview(timeLabel);
    }

    private void reLayout() {
        CGRect rect;
        rect = batteryIcon.getFrame();
        rect.origin.x = frame.size.width - 30;
        batteryIcon.setFrame(rect);
        
        rect = timeLabel.getFrame();
        rect.origin.x = frame.size.width / 2 - 20;
        timeLabel.setFrame(rect);
        computeCombinedTransforms();
    }

    public void drawRect(CGRect rect) {
        if (frame.size.height == 0)
            return;
        setTransformForThisView();
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;
        GradientPaint grayGradient = new GradientPaint(0, y, new Color(0xeef6f9), 0, y + h - 1,
                new Color(0xbdc5c8));
        g.setPaint(grayGradient);
        g.fillRect(x, y, w, h - 1);
        g.setPaint(new Color(0x5b6268));
        g.drawLine(x, y + h - 1, w, y + h - 1);
        restoreLastTransform();
        for (UIView v : subViews) {
            v.drawRect(rect);
        }
    }

    public void setStatusBarHidden(boolean flag) {
        isHidden = flag;
        frame.size.height = isHidden ? 0.0f : fullHeight;
    }

    public float getStatusBarHeight() {
        return frame.size.height;
    }

    public void setStatusBarOrientation(int orientation) {
        this.orientation = orientation;
        if (isHidden)
            return;
        switch (orientation) {
        case UIInterfaceOrientation.UIInterfaceOrientationPortrait:
            this.setFrame(new CGRect(0, 0, 320, statusBarHeight));
            this.affineTransform = new AffineTransform();
            break;
        case UIInterfaceOrientation.UIInterfaceOrientationLandscapeRight:
            this.setFrame(new CGRect(0, 0, 480, statusBarHeight));
            this.affineTransform = new AffineTransform();
            this.affineTransform.translate(0, 320 + 320 / 2);
            this.affineTransform.rotate((float) ((Math.PI / 180) * -90));
            break;
        case UIInterfaceOrientation.UIInterfaceOrientationLandscapeLeft:
            this.setFrame(new CGRect(0, 0, 480, statusBarHeight));
            this.affineTransform = new AffineTransform();
            this.affineTransform.translate(320, 0);
            this.affineTransform.rotate((float) ((Math.PI / 180) * 90));
            break;
        case UIInterfaceOrientation.UIInterfaceOrientationPortraitUpsideDown:
            this.setFrame(new CGRect(0, 0, 320, statusBarHeight));
            this.affineTransform = new AffineTransform();
            this.affineTransform.translate(320, 479);
            this.affineTransform.rotate((float) ((Math.PI / 180) * 180));
            break;
        }
        reLayout();
    }

    public int getStatusBarOrientation() {
        return orientation;
    }
}
