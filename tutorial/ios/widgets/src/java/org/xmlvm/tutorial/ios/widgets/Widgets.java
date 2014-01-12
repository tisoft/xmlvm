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

package org.xmlvm.tutorial.ios.widgets;

import java.util.Map;

import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIActivityIndicatorView;
import org.xmlvm.iphone.UIActivityIndicatorViewStyle;
import org.xmlvm.iphone.UIAlertView;
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
import org.xmlvm.iphone.UIPickerViewDataSource;
import org.xmlvm.iphone.UIPickerViewDelegate;
import org.xmlvm.iphone.UIProgressView;
import org.xmlvm.iphone.UIProgressViewStyle;
import org.xmlvm.iphone.UIReturnKeyType;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIScrollView;
import org.xmlvm.iphone.UISegmentedControl;
import org.xmlvm.iphone.UISlider;
import org.xmlvm.iphone.UISwitch;
import org.xmlvm.iphone.UITextAlignment;
import org.xmlvm.iphone.UITextBorderStyle;
import org.xmlvm.iphone.UITextField;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWindow;
import org.xmlvm.iphone.UIDatePicker;
import org.xmlvm.iphone.UIPickerView;
import org.xmlvm.iphone.UISearchBar;

/**
 * A Simple application to demonstrate some of UI elements that are available in
 * iOS. The UIKit framework provides the various UI elements that can be used in
 * the application. The class that is associated with each of the UI element id
 * displayed for easy identification.
 */
public class Widgets extends UIApplicationDelegate {

    @Override
    public boolean didFinishLaunchingWithOptions(UIApplication app, Map<String, Object> launchOptions) {

        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.getApplicationFrame();
        UIWindow window = new UIWindow(rect);
        window.setBackgroundColor(UIColor.whiteColor);

        rect.origin.x = rect.origin.y = 0;
        UIView mainView = new UIView(rect);
        mainView.setBackgroundColor(UIColor.whiteColor);
        window.addSubview(mainView);

        /*
         * UIScrollView allows display of contents that is larger than the
         * application window. User can scroll through the contents that are
         * part of the scrollview. The scroll view is added as subview to the
         * main view of the application.
         */
        UIScrollView scrollview = new UIScrollView(rect);
        scrollview.setScrollEnabled(true);

        rect.origin.x += 5;
        rect.origin.y += 10;
        rect.size.height = 30;
        rect.size.width = 250;

        /*
         * UILabel is used to display any text. The user cannot interact with
         * the text. The appearance of the text can be controlled using the
         * methods provided by UILabel class.
         */
        UILabel labelClass = new UILabel(rect);
        labelClass.setText("Class: UILabel");
        /*
         * Sets alignment of the text within the label
         */
        labelClass.setTextAlignment(UITextAlignment.Left);
        /*
         * Add the label as subview to the scrollview to enable scrolling of the
         * components
         */
        scrollview.addSubview(labelClass);

        rect.origin.y += 30;
        rect.origin.x += 30;
        UILabel label = new UILabel(rect);
        label.setTextAlignment(UITextAlignment.Center);
        window.addSubview(label);
        label.setText("Widget Demo");

        rect.origin.y += 50;
        rect.origin.x -= 30;
        UILabel textClass = new UILabel(rect);
        textClass.setText("Class: UITextField");
        textClass.setTextAlignment(UITextAlignment.Left);
        scrollview.addSubview(textClass);

        /*
         * UITextField is used to display editable text. An action can be
         * associated with the return button. You can specify the placeholder
         * which will be displayed when no text is entered. The Bezel border
         * style renders a 3D look to the UITextField.
         */
        rect.origin.y += 30;
        rect.origin.x += 30;
        UITextField textField = new UITextField(rect);
        textField.setBorderStyle(UITextBorderStyle.Bezel);
        textField.setPlaceholder("Type here");

        rect.origin.y += 50;
        rect.origin.x -= 30;
        UILabel buttonClass = new UILabel(rect);
        buttonClass.setText("Class: UIButton");
        buttonClass.setTextAlignment(UITextAlignment.Left);
        scrollview.addSubview(buttonClass);

        /*
         * UIButton implements a button on the screen. The appearance of the
         * button can be modified using the methods that are provided by
         * UIButton class.
         */
        rect.origin.y += 30;
        rect.origin.x += 30;
        UIButton button = UIButton.buttonWithType(UIButtonType.RoundedRect);
        button.setFrame(rect);
        button.setTitle("Click", UIControlState.Normal);

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
                 * UIAlertView is used to notify or alert users about any
                 * information generally the information that affects the use of
                 * the application.
                 */
                UIAlertView alert = new UIAlertView("Alert", "Class: UIAlertView", null, "OK");
                alert.show();
            }

        }, UIControlEvent.TouchUpInside);

        rect.origin.y += 50;
        rect.origin.x -= 30;
        UILabel switchClass = new UILabel(rect);
        switchClass.setText("Class: UISwitch");
        switchClass.setTextAlignment(UITextAlignment.Left);
        scrollview.addSubview(switchClass);

        rect.origin.y += 30;
        rect.origin.x += 30;
        UISwitch switchView = new UISwitch(rect);

        rect.origin.y += 50;
        rect.origin.x -= 30;
        UILabel segCtlClass = new UILabel(rect);
        segCtlClass.setText("Class: UISegmentedControl");
        segCtlClass.setTextAlignment(UITextAlignment.Left);
        scrollview.addSubview(segCtlClass);

        /*
         * UISegmentedControl consists of linear segments. Each of these
         * segments behave as a button. The segmented control can display a
         * simple text or even an image. The width of each segment is
         * proportional, based on total number of segments.
         */
        rect.origin.y += 30;
        rect.origin.x += 30;
        UISegmentedControl segmentedControl = new UISegmentedControl(rect);
        segmentedControl.insertSegmentWithTitle("First", 0, true);
        segmentedControl.insertSegmentWithTitle("Second", 0, true);
        segmentedControl.insertSegmentWithTitle("Third", 0, true);

        rect.origin.y += 50;
        rect.origin.x -= 30;
        UILabel sliderClass = new UILabel(rect);
        sliderClass.setText("Class: UISlider");
        sliderClass.setTextAlignment(UITextAlignment.Left);
        scrollview.addSubview(sliderClass);

        /*
         * UISlider enables users to select a value from within a range of
         * values (such as brightness). It consists of horizontal bar with a
         * dragable element which the user can drag in order to select a value.
         * The appearance of the slider is customizable.
         */
        rect.origin.y += 30;
        rect.origin.x += 30;
        UISlider slider = new UISlider(rect);

        rect.origin.y += 50;
        rect.origin.x -= 30;
        UILabel progView2Class = new UILabel(rect);
        progView2Class.setText("Class: UIProgressView");
        progView2Class.setTextAlignment(UITextAlignment.Left);
        scrollview.addSubview(progView2Class);

        /*
         * UIProgressView is used to display the progress of any operation. It
         * can be used to show the progress of a download. The style of progress
         * bar can be set. The progress bar is used when the duration of the
         * operation is known. In case of indeterminate time, an activity
         * indicator can be used.
         */
        rect.origin.y += 30;
        rect.origin.x += 30;
        UIProgressView progressViewBar = new UIProgressView(UIProgressViewStyle.Bar);
        progressViewBar.setProgress((float) 0.80);
        progressViewBar.setFrame(rect);

        rect.origin.y += 50;
        rect.origin.x -= 30;
        UILabel datePickClass = new UILabel(rect);
        datePickClass.setText("Class: UIDatePicker");
        datePickClass.setTextAlignment(UITextAlignment.Left);
        scrollview.addSubview(datePickClass);

        /*
         * The UIDatePicker displays the date and time in form of a rotating
         * wheel. The user can select from the date and time components. An
         * associated UIControlEventValueChanged control event can be used to
         * take appropriate actions when user selects the components.
         */
        rect.origin.x += 30;
        rect.origin.y += 30;
        UIDatePicker datePicker = new UIDatePicker(rect);

        rect.origin.y += 180;
        rect.origin.x -= 30;
        UILabel pickerClass = new UILabel(rect);
        pickerClass.setText("Class: UIPickerView");
        pickerClass.setTextAlignment(UITextAlignment.Left);
        scrollview.addSubview(pickerClass);

        /*
         * UIPickerView is used to display a set of values in form of rotating
         * wheel just like slot machines. The user can pick from the set of
         * values. Each of the rotating wheel is a component and a UIPickerView
         * can have multiple such components. Each of this component can
         * comprise of multiple rows.
         */
        rect.origin.x += 30;
        rect.origin.y += 30;
        UIPickerView pickerView = new UIPickerView(rect);

        /*
         * The data for the picker is provided using the UIPickerViewDataSource
         * and UIPickerViewDelegate. By implementing the interface
         * UIPickerViewDataSource the number of components and the number of
         * rows in each of the components can be specified by overriding the
         * required methods.
         */
        UIPickerViewDataSource pickerSource = new UIPickerViewDataSource() {

            @Override
            public int numberOfComponentsInPickerView(UIPickerView arg0) {
                /*
                 * Number of components in the picker view is set to 1
                 */
                return 1;
            }

            @Override
            public int numberOfRowsInComponent(UIPickerView arg0, int arg1) {
                /*
                 * Number of rows in the components in set to 4
                 */
                return 4;
            }

        };

        /*
         * The values for individual rows of the component can be specified by
         * implementing the delegate and overriding the method titleForRow
         */
        UIPickerViewDelegate pickerDel = new UIPickerViewDelegate() {
            String[] pickerArray = new String[] { "Red", "Blue", "Black", "White" };


            @Override
            public String titleForRow(UIPickerView view, int row, int component) {
                return pickerArray[row];
            }
        };

        pickerView.setDelegate(pickerDel);
        pickerView.setDataSource(pickerSource);

        rect.origin.y += 180;
        rect.origin.x -= 30;
        UILabel searchBarClass = new UILabel(rect);
        searchBarClass.setText("Class: UISearchBar");
        searchBarClass.setTextAlignment(UITextAlignment.Left);
        scrollview.addSubview(searchBarClass);

        /*
         * UISearchBar allows user to input the text that needs to be searched.
         * UISearchBar by itself does not perform any search. It allows the user
         * to input the text in the text field. In order to perform any action
         * when user hits button, a delegate - UISearchBarDelegate needs to be
         * set for the search bar.
         */
        rect.origin.x += 30;
        rect.origin.y += 30;
        UISearchBar searchBar = new UISearchBar(rect);
        searchBar.setPlaceholder("Search in folder");

        rect.origin.y += 50;
        rect.origin.x -= 30;
        UILabel activityClass = new UILabel(rect);
        activityClass.setText("Class: UIActivityIndicator");
        activityClass.setTextAlignment(UITextAlignment.Left);
        scrollview.addSubview(activityClass);

        /*
         * UIActivityIndicator can be used to indicate the progress of task.
         * generally used when the time of the task is indeterminate.
         */
        rect.origin.x += 30;
        rect.origin.y += 30;
        rect.size.height = 50;
        rect.size.width = 50;
        UIActivityIndicatorView activityIndicator = new UIActivityIndicatorView(
                UIActivityIndicatorViewStyle.Gray);
        activityIndicator.setFrame(rect);
        activityIndicator.startAnimating();

        mainView.addSubview(scrollview);
        scrollview.addSubview(textField);
        scrollview.addSubview(button);
        scrollview.addSubview(label);
        scrollview.addSubview(activityIndicator);
        scrollview.addSubview(progressViewBar);
        scrollview.addSubview(slider);
        scrollview.addSubview(switchView);
        scrollview.addSubview(segmentedControl);
        scrollview.addSubview(datePicker);
        scrollview.addSubview(pickerView);
        scrollview.addSubview(searchBar);
        scrollview.setContentSize(new CGSize(scrollview.getFrame().size.width, rect.origin.y
                + rect.size.height + 20));

        window.makeKeyAndVisible();
        return false;
    }

    public static void main(String[] args) {
        UIApplication.main(args, null, Widgets.class);
    }

}
