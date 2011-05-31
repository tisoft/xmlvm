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

package org.xmlvm.demo.navigation;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIButtonType;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIControl;
import org.xmlvm.iphone.UIControlDelegate;
import org.xmlvm.iphone.UIControlEvent;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UITextAlignment;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIViewController;

public class ViewPage extends UIViewController {

    private final String text;

    public ViewPage(String label, String text) {
        setTitle(label);
        this.text = text;
        getTabBarItem().setImage(UIImage.imageNamed("info.png"));
    }

    @Override
    public void loadView() {
        super.loadView();
        UIView view = getView();

        UILabel title = new UILabel(new CGRect(0, 150, 320, 40));
        title.setText(text);
        title.setTextAlignment(UITextAlignment.Center);

        UIImageView img = new UIImageView(new CGRect(60, 200, 200, 140));
        img.setImage(UIImage.imageNamed("demo.png"));

        UIButton dump = UIButton.buttonWithType(UIButtonType.RoundedRect);
        dump.setFrame(new CGRect(40, 20, 240, 30));
        dump.setTitle("Dump tab info", UIControlState.Normal);
        dump.addTarget(new UIControlDelegate() {

            public void raiseEvent(UIControl uic, int i) {
                System.out.println();
                if (getTabBarController() != null) {
                    for (UIViewController vc : getTabBarController().getViewControllers()) {
                        System.out.println(vc.getClass().getName());
                    }
                } else {
                    System.out.println(" - Unable to find UITabBarController");
                }
            }
        }, UIControlEvent.TouchUpInside);

        view.addSubview(title);
        view.addSubview(img);
        view.addSubview(dump);
        view.setBackgroundColor(UIColor.whiteColor);
    }
}
