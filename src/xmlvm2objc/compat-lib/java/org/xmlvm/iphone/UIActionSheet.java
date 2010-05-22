/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.xmlvm.iphone;

/**
 * 
 * @author teras
 */
public class UIActionSheet extends UIView {

    private UIActionSheet() {
    }

    public static UIActionSheet init(String title, UIActionSheetDelegate delegate,
            String cancelButtonTitle, String destructiveButtonTitle, String... otherButtonTitles) {
        return new UIActionSheet();
    }

    public void showFromTabBar(UITabBar bar) {
    }

    public void showFromToolbar(UIToolbar bar) {
    }

    public void showInView(UIView view) {
    }

    // public void showFromBarButtonItem(UIBarButtonItem item, boolean animated)
    // {
    // }
    //
    // public void showFromRect(CGRect rect, UIView inView, boolean animated) {
    // }
    //
    public void dismissWithClickedButtonIndex(int buttonIndex, boolean animated) {
    }
}
