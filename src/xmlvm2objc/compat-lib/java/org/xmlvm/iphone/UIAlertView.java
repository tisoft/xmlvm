/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.iphone;

import static org.xmlvm.iphone.internal.renderer.UIAlertViewRenderer.FIRSTBUTTON_ID;
import static org.xmlvm.iphone.internal.renderer.UIAlertViewRenderer.MESSAGE_ID;
import static org.xmlvm.iphone.internal.renderer.UIAlertViewRenderer.TITLE_FONT_SIZE;
import static org.xmlvm.iphone.internal.renderer.UIAlertViewRenderer.TITLE_ID;

import java.awt.Color;
import java.awt.Rectangle;
import java.util.List;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.Device;
import org.xmlvm.iphone.internal.renderer.UIAlertButtonRenderer;
import org.xmlvm.iphone.internal.renderer.UIAlertViewRenderer;

@XMLVMSkeletonOnly(references=UILabel.class)
public class UIAlertView extends UIView {

    private UIAlertViewDelegate delegate;

    public UIAlertView(String title, String message, UIAlertViewDelegate delegate,
            String cancelButtonTitle) {
        xmlvmSetRenderer(new UIAlertViewRenderer(this));
        this.delegate = delegate;
        addBaseView();
        addBaseView();
        ((UILabel) getSubviews().get(MESSAGE_ID)).setLineBreakMode(UILineBreakMode.WordWrap);
        setMessage(message);
        setTitle(title);
        if (cancelButtonTitle != null)
            addButtonWithTitle(cancelButtonTitle);
        /*
         * UIAlert as a modal dialog covers the whole screen - see comments in
         * UIAlertViewRenderer
         */
        Rectangle r = Device.ScreenSize;
        setFrame(new CGRect(r.x, r.y, r.width, r.height));
    }

    private void addBaseView() {
        UILabel label = new UILabel();
        addSubview(label);
        label.setBackgroundColor(UIColor.clearColor);
        label.setTextColor(UIColor.whiteColor);
        label.setShadowColor(UIColor.darkGrayColor);
        label.setShadowOffset(new CGSize(0, -1));
        label.setFont(UIFont.fontWithNameSize("Arial Bold", TITLE_FONT_SIZE));
        label.setTextAlignment(UITextAlignment.Center);
    }

    public void show() {
        UIApplication.sharedApplication().getKeyWindow().addSubview(this);
        ((UIAlertViewRenderer) xmlvmGetRenderer()).doLayout();
        setNeedsDisplay();
    }

    private void setViewWithString(String txt, UILabel view) {
        if (txt == null)
            txt = "";
        view.setText(txt);
    }

    public void setTitle(String title) {
        setViewWithString(title, (UILabel) getSubviews().get(TITLE_ID));
    }

    public String getTitle() {
        return ((UILabel) getSubviews().get(TITLE_ID)).getText();
    }

    public void setMessage(String message) {
        setViewWithString(message, (UILabel) getSubviews().get(MESSAGE_ID));
    }

    public String getMesssage() {
        return ((UILabel) getSubviews().get(MESSAGE_ID)).getText();
    }

    public int addButtonWithTitle(String title) {
        UIButton button = UIButton.buttonWithType(UIAlertButtonRenderer.AlertViewType);
        UIAlertButtonRenderer bgui = (UIAlertButtonRenderer) button.xmlvmGetRenderer();

        List<UIView> oldlist = getSubviews();

        button.setTitle(title, UIControlState.Normal);
        bgui.setEdgeDiameter(8);
        button.addTarget(new ButtonClickCallback(oldlist.size() - FIRSTBUTTON_ID),
                UIControlEvent.TouchUpInside);
        // Set color, opacity and font style/color
        button.setFont(UIFont.fontWithNameSize("Arial Bold", 14));
        button.setTitleColor(UIColor.whiteColor, UIControlState.Normal);
        button.setTitleShadowColor(UIColor.darkGrayColor, UIControlState.Normal);
        button.setTitleShadowOffset(new CGSize(0, -1));
        bgui.setBackgroundTypeColor(new Color(150, 170, 190));
        button.setAlpha(0.78f);

        addSubview(button);
        return oldlist.size(); // The same number as in ButtonClickCallback
    }

    private void buttonClicked(int buttonIndex) {
        if (delegate != null)
            delegate.clickedButtonAtIndex(this, buttonIndex);
        removeFromSuperview();
        setNeedsDisplay();
    }


    @XMLVMIgnore
    private class ButtonClickCallback implements UIControlDelegate {

        private int buttonIndex;


        public ButtonClickCallback(int buttonIndex) {
            this.buttonIndex = buttonIndex;
        }

        @Override
        public void raiseEvent(UIControl sender, int eventType) {
            buttonClicked(buttonIndex);
        }
    }
}
