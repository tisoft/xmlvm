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

package android.view;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIWindow;

import android.app.Activity;

/**
 * iPhone Implementation of Android's Window class.
 * 
 * @see http://developer.android.com/reference/android/view/Window.html
 */
public class Window {
  public static final int FEATURE_NO_TITLE = 1;
  private Activity activity;
  private UIWindow iWindow;
  private CGRect rect;

  public Window(Activity parent) {
	this.activity = parent;
    UIScreen screen = UIScreen.mainScreen();
    rect = screen.bounds();
    iWindow = new UIWindow(rect);
  }

  public void setContentView(View view) {
    iWindow.addSubview(view.getMainView());
    iWindow.makeKeyAndVisible();
  }

  public void setFlags(int flags, int mask) {
    int maskedFlags = (flags & mask);
    if ((maskedFlags & WindowManager.LayoutParams.FLAG_FULLSCREEN) != 0) {
      this.activity.getMyIphoneWrapper().setStatusBarHidden(true);
    }
  }

  /**
   * Internal. Not part of Android API.
   */
  public CGRect getCGRect() {
    return rect;
  }
}
