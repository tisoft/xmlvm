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

import org.xmlvm.iphone.UIView;

/**
 * iPhone implementation of Android's View class.
 * 
 * @see http://developer.android.com/reference/android/view/View.html
 */
public class View {
  private UIView mainView;
  private ViewGroup.LayoutParams curLayout;

  public ViewGroup.LayoutParams getCurLayout() {
    return curLayout;
  }

  public void invalidate() {
    mainView.setNeedsDisplay();
  }

  public void setLayoutParams(ViewGroup.LayoutParams l) {
    curLayout = l;
  }

  /**
   * Internal. Not part of Android API
   */
  public UIView getMainView() {
    return mainView;
  }

  /**
   * Internal. Not part of Android API
   */
  public void setMainView(UIView view) {
    mainView = view;
  }
}
