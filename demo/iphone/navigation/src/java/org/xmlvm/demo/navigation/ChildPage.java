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

package org.xmlvm.demo.navigation;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIButtonType;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIControl;
import org.xmlvm.iphone.UIControlDelegate;
import org.xmlvm.iphone.UIControlEvent;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIViewController;

/**
 *
 * @author teras
 */
public class ChildPage extends UIViewController {

    private final int level;

    public ChildPage(int level) {
        super();
        if (level == 1) {
            setTitle(level + " Level Deep");
        } else {
            setTitle(level + " Levels Deep");
        }
        this.level = level;
    }

    @Override
    public void loadView() {
        super.loadView();

        UIView view = getView();

        UIButton but = UIButton.buttonWithType(UIButtonType.RoundedRect);
        but.setFrame(new CGRect(40, 40, 240, 30));
        but.setTitle("Go even deeper", UIControlState.Normal);
        but.addTarget(new UIControlDelegate() {

            public void raiseEvent(UIControl uic, int i) {
                getNavigationController().pushViewController(new ChildPage(level + 1), true);
            }
        }, UIControlEvent.TouchUpInside);

        view.addSubview(but);
        view.setBackgroundColor(UIColor.blueColor);

    }
}
