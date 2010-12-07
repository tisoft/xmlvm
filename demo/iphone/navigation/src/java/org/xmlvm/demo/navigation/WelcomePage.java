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
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UITextAlignment;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIViewController;

/**
 *
 * @author teras
 */
public class WelcomePage extends UIViewController {

    public WelcomePage() {
        setTitle("Welcome");
    }

    @Override
    public void loadView() {
        super.loadView();        
        UIView view = getView();

        UILabel title = new UILabel(new CGRect(0, 150, 320, 40));
        title.setText("Hello");
        title.setTextAlignment(UITextAlignment.Center);

        UIImageView img = new UIImageView(new CGRect(60, 200, 200, 140));
        img.setImage(UIImage.imageNamed("demo.png"));

        view.addSubview(title);
        view.addSubview(img);
        view.setBackgroundColor(UIColor.whiteColor);
    }
}
