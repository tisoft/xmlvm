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

package android.app;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIWindow;

import android.content.Intent;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;

public class Activity extends ContextThemeWrapper {
  public UIWindow window;
  public CGRect rect;
  public ActivityWrapper myIphoneWrapper;
  public View mainView;
  
  protected void onCreate(Bundle savedInstanceState) {
    rect = UIScreen.fullScreenApplicationContentRect();

    /* Initialize the main window */
    window = new UIWindow(rect);
    window.orderFront(this.myIphoneWrapper);
    window.makeKey(this.myIphoneWrapper);
    window._setHidden(false);
    onContentChanged();
  }

  public void setContentView(View view) {
    mainView = view;
    window.setContentView(view.mainView);
  }

  /**
   * TODO: Implement for real.
   */
  public WindowManager getWindowManager() {
    return new WindowManager();
  }

  /**
   * Can be overridden by subclasses.
   */
  public void onContentChanged() {
  }

  /**
   * Can be overridden by subclasses that want to create a menu.
   */
  public boolean onCreateOptionsMenu(Menu menu) {
    return true;
  }

  /**
   * Can be overridden by subclasses that want to handle menu button presses.
   */
  public boolean onOptionsItemSelected(MenuItem item) {
    return true;
  }
  
  /**
   * TODO: Implement for real.
   */
  public void startActivity(Intent intent) {
  }
}
