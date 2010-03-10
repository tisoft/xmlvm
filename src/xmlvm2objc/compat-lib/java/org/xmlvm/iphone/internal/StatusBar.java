/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.iphone.internal;

import java.awt.Rectangle;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.xmlvm.iphone.CGAffineTransform;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIFont;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UIInterfaceOrientation;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.internal.renderer.StatusBarRenderer;

public class StatusBar extends UIView {

    public static final int      STATUS_BAR_HEIGHT = 20;
    /* */
    private float                fullHeight;
    private int                  orientation;
    public UILabel               ipodLabel;
    public UILabel               timeLabel;
    public UIImageView           wifiIcon;
    public UIImageView           batteryIcon;
    private static final UIImage batteryImage      = UIImage.imageWithContentsOfFile("battery.png");
    private static final UIImage wifiImage         = UIImage.imageWithContentsOfFile("wifi.png");

    public StatusBar(CGRect rect) {
        super(rect);
        fullHeight = getFrame().size.height;
        addIPodLabel(rect);
        addWifiIcon(rect);
        addBatteryIcon(rect);
        addTimeLabel(rect);
        xmlvmSetRenderer(new StatusBarRenderer(this));
    }

    private void addIPodLabel(CGRect rect) {
        ipodLabel = new UILabel(new CGRect(5, 0, 20, rect.size.height));
        ipodLabel.setFont(UIFont.fontWithNameSize("Arial Bold", 12));
        ipodLabel.setTextColor(UIColor.darkGrayColor);
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
        timeLabel.setFont(UIFont.fontWithNameSize("Arial Bold", 14));
        timeLabel.setTextColor(UIColor.blackColor);
        timeLabel.setBackgroundColor(null);
        SimpleDateFormat formatter;
        formatter = new SimpleDateFormat("K:mm a");
        timeLabel.setText(formatter.format(new Date()));
        addSubview(timeLabel);
    }

    @Override
    public void setHidden(boolean hidden) {
        super.setHidden(hidden);
        CGRect frame = getFrame();
        frame.size.height = isHidden() ? 0.0f : fullHeight;
        setFrame(frame);
    }

    public float getStatusBarHeight() {
        return getFrame().size.height;
    }

    public int getStatusBarOrientation() {
        return orientation;
    }

    public void setStatusBarOrientation(int orientation) {
        this.orientation = orientation;
        reLayout();
    }

    public void reLayout() {
        CGRect frame;
        CGAffineTransform trans = null;
        Rectangle dev = Device.ScreenSize;
        int height = isHidden() ? 0 : STATUS_BAR_HEIGHT;
        switch (orientation) {
        case UIInterfaceOrientation.LandscapeRight:
            frame = new CGRect(0, 0, 480, height);
            trans = CGAffineTransform.makeRotation(-(float) (Math.PI / 2));
            trans = CGAffineTransform.translate(trans, -230, -230);
            break;
        case UIInterfaceOrientation.LandscapeLeft:
            frame = new CGRect(0, 0, 480, height);
            trans = CGAffineTransform.makeRotation((float) (Math.PI / 2));
            trans = CGAffineTransform.translate(trans, 230, -70);
            break;
        case UIInterfaceOrientation.PortraitUpsideDown:
            frame = new CGRect(0, 0, dev.width, height);
            trans = CGAffineTransform.makeRotation((float) (Math.PI));
            trans = CGAffineTransform.translate(trans, 0, -460);
            break;
        default:
        case UIInterfaceOrientation.Portrait:
            frame = new CGRect(0, 0, dev.width, height);
            trans = null;
            break;
        }
        setFrame(frame);
        setTransform(trans);

        CGRect battery = batteryIcon.getFrame();
        battery.origin.x = frame.size.width - 30;
        batteryIcon.setFrame(battery);

        CGRect time = timeLabel.getFrame();
        time.origin.x = frame.size.width / 2 - 20;
        timeLabel.setFrame(time);
    }
}
