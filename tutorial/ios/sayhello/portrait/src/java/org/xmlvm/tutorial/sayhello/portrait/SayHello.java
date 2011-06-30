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

package org.xmlvm.tutorial.sayhello.portrait;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIApplicationDelegate;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIButtonType;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIControl;
import org.xmlvm.iphone.UIControlDelegate;
import org.xmlvm.iphone.UIControlEvent;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UIReturnKeyType;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UITextAlignment;
import org.xmlvm.iphone.UITextBorderStyle;
import org.xmlvm.iphone.UITextField;
import org.xmlvm.iphone.UITextFieldDelegate;
import org.xmlvm.iphone.UIWindow;

/**
 * SayHello is a simple application that prompts the user for a name and repeats
 * the name with a greeting in a label. SayHello consists of three widgets: a
 * text edit field (UITextField), a label (UILabel), and a button (UIButton).
 * Special attention is given to proper keyboard handling.
 */
public class SayHello extends UIApplicationDelegate {

    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        CGRect rect = UIScreen.mainScreen().getApplicationFrame();
        UIWindow window = new UIWindow(rect);
        window.setBackgroundColor(UIColor.whiteColor);
        rect.origin.x = rect.origin.y = 20;
        rect.size.width = 280;
        rect.size.height = 30;
        /*
         * A UITextField is a text entry field.
         */
        final UITextField editName = new UITextField(rect);
        /*
         * A Bezel border style will give the UITextField a 3D look. The default
         * border style is empty, which would render the UITextField invisible
         * against the white background.
         */
        editName.setBorderStyle(UITextBorderStyle.Bezel);
        /*
         * A placeholder is displayed whenever no text is entered into the
         * UITextField. It is displayed slightly graying and is used to give the
         * user a hint as to what he/she is supposed to enter.
         */
        editName.setPlaceholder("Type name");
        /*
         * By default the UITextField will have a "Return" key in the lower
         * right corner of the keyboard. Since this does not make sense for
         * SayHello it is changed to a "Done" key.
         */
        editName.setReturnKeyType(UIReturnKeyType.Done);
        /*
         * Setting a delegate for a UITextField allows to intercept certain
         * events.
         */
        editName.setDelegate(new UITextFieldDelegate() {
            /*
             * Method textFieldShouldReturn() will be called whenever the user
             * presses the "Return" key (or, in the case of SayHello, the "Done"
             * key). The default behavior is not to do anything, but what we
             * want to happen is that the keyboard disappears. This can be done
             * by calling UITextField.resignFirstResponder() which will remove
             * the input focus from the text field and in turn hide the
             * keyboard. The "return false" indicates that we have overridden
             * the default behavior.
             */
            @Override
            public boolean textFieldShouldReturn(UITextField textField) {
                textField.resignFirstResponder();
                return false;
            }

        });
        window.addSubview(editName);
        rect.origin.y += 50;
        final UILabel helloLabel = new UILabel(rect);
        helloLabel.setTextAlignment(UITextAlignment.Center);
        window.addSubview(helloLabel);
        rect.origin.y += 50;
        UIButton button = UIButton.buttonWithType(UIButtonType.RoundedRect);
        button.setFrame(rect);
        button.setTitle("Say Hello", UIControlState.Normal);
        /*
         * Add a UIControlDelegate to the button. It is possible to register for
         * different events pertaining to the button. The
         * UIControlEvent.TouchUpInside event basically means that the user
         * lifted (i.e., TouchUp) inside the button. Whenever this happens, the
         * raiseEvent() method will be invoked on the delegate.
         */
        button.addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControl sender, int uiControlEvent) {
                /*
                 * Telling the UITextField to resign as first responder will
                 * hide the soft-keyboard.
                 */
                editName.resignFirstResponder();
                /*
                 * Retrieve the text that the user has typed.
                 */
                String name = editName.getText();
                if (!name.equals("")) {
                    /*
                     * Set the greeting message in the label.
                     */
                    helloLabel.setText("Hello, " + name + "!");
                }
            }

        }, UIControlEvent.TouchUpInside);
        window.addSubview(button);
        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, SayHello.class);
    }

}