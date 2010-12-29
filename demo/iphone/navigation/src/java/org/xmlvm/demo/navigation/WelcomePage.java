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
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UITextAlignment;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIViewController;

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
