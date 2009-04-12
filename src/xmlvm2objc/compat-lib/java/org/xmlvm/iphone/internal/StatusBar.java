package org.xmlvm.iphone.internal;

import java.awt.Color;
import java.awt.Font;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIView;

public class StatusBar extends UIView {

    private boolean              isHidden;
    private float                fullHeight;
    private static final UIImage batteryImage = UIImage.imageAtPath("battery.png");
    private static final UIImage wifiImage    = UIImage.imageAtPath("wifi.png");

    public StatusBar(CGRect rect) {
        super(rect);
        isHidden = false;
        fullHeight = frame.size.height;
        addIPodLabel(rect);
        addWifiIcon(rect);
        addBatteryIcon(rect);
        addTimeLabel(rect);
    }
    
    private void addIPodLabel(CGRect rect)
    {
        UILabel label = new UILabel(new CGRect(5, 0, 20, rect.size.height));
        label.setFont(new Font("Arial", Font.BOLD, 12));
        label.setFontColor(Color.DARK_GRAY);
        label.setText("iPod");
        addSubview(label);
    }
    
    private void addWifiIcon(CGRect rect) {
        UIImageView wifiIcon = new UIImageView(new CGRect(40, 4, 18, 12));
        wifiIcon.setImage(wifiImage);
        addSubview(wifiIcon);
    }

    private void addBatteryIcon(CGRect rect) {
        CGSize size = batteryImage.getSize();
        UIImageView wifiIcon = new UIImageView(new CGRect(rect.size.width - 30, 5, size.width, size.height));
        wifiIcon.setImage(batteryImage);
        addSubview(wifiIcon);
    }

    private void addTimeLabel(CGRect rect)
    {
        UILabel label = new UILabel(new CGRect(rect.size.width / 2 - 20, 0, 20, rect.size.height));
        label.setFont(new Font("Arial", Font.BOLD, 14));
        label.setFontColor(Color.BLACK);
        SimpleDateFormat formatter;
        formatter = new SimpleDateFormat("K:mm a");
        label.setText(formatter.format(new Date()));
        addSubview(label);
    }
   
    public void drawRect(CGRect rect) {
        if (frame.size.height == 0)
            return;
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
        super.drawRect(rect);
    }

    public void setStatusBarHidden(boolean flag) {
        isHidden = flag;
        frame.size.height = isHidden ? 0.0f : fullHeight;
    }

    public float getStatusBarHeight() {
        return frame.size.height;
    }
}
