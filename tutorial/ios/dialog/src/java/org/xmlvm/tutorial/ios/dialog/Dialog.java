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

package org.xmlvm.tutorial.ios.dialog;

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
import org.xmlvm.iphone.UIModalTransitionStyle;
import org.xmlvm.iphone.UIReturnKeyType;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UITextBorderStyle;
import org.xmlvm.iphone.UITextField;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIViewAutoresizing;
import org.xmlvm.iphone.UIViewController;
import org.xmlvm.iphone.UIWindow;

/**
 * This application demonstrates the use of modal dialogs. A modal dialog is
 * used to focus user attention to a specific task (such as a login page). This
 * application will display a name on its main screen. An "Edit" button will
 * invoke the modal dialog that allows to edit the name. The modal dialog is
 * left via the "Done" button. Both the main screen and the dialog screen are
 * represented via a <code>UIViewController</code>. Showing a modal dialog is
 * done via method <code>presentModalViewController()</code> and dismissing a
 * modal dialog via <code>dismissModalViewControllerAnimated()</code>.
 */
public class Dialog extends UIApplicationDelegate {

    private UIViewController mainViewController;
    private UIViewController editViewController;
    private String           name;


    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        CGRect rect = UIScreen.mainScreen().getBounds();
        UIWindow window = new UIWindow(rect);
        window.setBackgroundColor(UIColor.whiteColor);

        /*
         * Variable 'name' represents the model of the application. Its value
         * will be shown on the main screen.
         */
        name = "Mickey Mouse";

        /*
         * The first view controller is stored in mainViewController. It
         * represents the main screen. It shows the name and an "Edit" button.
         */
        mainViewController = new UIViewController() {

            private UILabel nameLabel;


            @Override
            public boolean shouldAutorotateToInterfaceOrientation(int orientation) {
                return true;
            }

            @Override
            public void loadView() {
                /*
                 * The view of the main screen shows the name as well as the
                 * "Edit" button. In total, the main screen consists of three
                 * widgets: a static label "Name", another label with the actual
                 * name, and the button.
                 */
                UIView root = new UIView(UIScreen.mainScreen().getApplicationFrame());
                root.setBackgroundColor(UIColor.whiteColor);
                UILabel label = new UILabel(new CGRect(10, 40, 100, 20));
                label.setText("Name:");
                root.addSubview(label);
                nameLabel = new UILabel(new CGRect(70, 40, 230, 20));
                nameLabel.setAutoresizingMask(UIViewAutoresizing.FlexibleWidth);
                root.addSubview(nameLabel);
                UIButton button = UIButton.buttonWithType(UIButtonType.RoundedRect);
                button.setFrame(new CGRect(90, 100, 140, 30));
                button.setAutoresizingMask(UIViewAutoresizing.FlexibleWidth);
                button.setTitle("Edit", UIControlState.Normal);
                button.addTarget(new UIControlDelegate() {

                    @Override
                    public void raiseEvent(UIControl sender, int uiControlEvent) {
                        /*
                         * Whenever the user presses the "Edit" button, this
                         * method will be invoked. The mainViewController is
                         * used to show the editViewController via the method
                         * presentModalViewController.
                         */
                        mainViewController.presentModalViewController(editViewController, true);
                    }

                }, UIControlEvent.TouchUpInside);
                root.addSubview(button);
                setView(root);
            }

            @Override
            public void viewWillAppear(boolean animated) {
                /*
                 * Method viewWillAppear() is invoked just before the view is
                 * shown. Just before this happens, we update the nameLabel with
                 * the current value of variable 'name'.
                 */
                nameLabel.setText(name);
            }
        };

        /*
         * The second view controller manages the modal dialog. It will be shown
         * when clicking the "Edit" button on the main screen.
         */
        editViewController = new UIViewController() {

            @Override
            public boolean shouldAutorotateToInterfaceOrientation(int orientation) {
                return true;
            }

            @Override
            public void loadView() {
                /*
                 * The view of the modal dialog consists of two widgets: a text
                 * field allowing the editing of the name and a "Done" button to
                 * dismiss the dialog.
                 */
                UIView root = new UIView(UIScreen.mainScreen().getApplicationFrame());
                root.setBackgroundColor(UIColor.whiteColor);
                final UITextField editName = new UITextField(new CGRect(10, 40, 300, 30));
                editName.setAutoresizingMask(UIViewAutoresizing.FlexibleWidth);
                editName.setBorderStyle(UITextBorderStyle.Bezel);
                editName.setPlaceholder("Name");
                editName.setText(name);
                editName.setReturnKeyType(UIReturnKeyType.Done);
                root.addSubview(editName);
                UIButton button = UIButton.buttonWithType(UIButtonType.RoundedRect);
                button.setFrame(new CGRect(90, 100, 140, 30));
                button.setAutoresizingMask(UIViewAutoresizing.FlexibleWidth);
                button.setTitle("Done", UIControlState.Normal);
                button.addTarget(new UIControlDelegate() {

                    @Override
                    public void raiseEvent(UIControl sender, int uiControlEvent) {
                        /*
                         * When the "Done" button is clicked, the current value
                         * of the text field is copied back to 'name'. When the
                         * main screen becomes visible again it will read the
                         * current value from 'name'. Via method
                         * dismissModalViewController() the dialog dismisses
                         * itself.
                         */
                        name = editName.getText();
                        editViewController.dismissModalViewControllerAnimated(true);
                    }

                }, UIControlEvent.TouchUpInside);
                root.addSubview(button);
                setView(root);
            }
        };

        /*
         * The following method defines the kind of animation that will be used
         * during the transition to and from the modal dialog. Try different
         * values of UIModalTransitionStyle to observe the different animations.
         */
        editViewController.setModalTransitionStyle(UIModalTransitionStyle.FlipHorizontal);

        window.setRootViewController(mainViewController);
        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, Dialog.class);
    }

}
