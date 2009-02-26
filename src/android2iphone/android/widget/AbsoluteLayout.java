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

package android.widget;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.view.ViewGroup;

public class AbsoluteLayout extends ViewGroup {
  public AbsoluteLayout(Context c) {
    CGRect rect = UIScreen.fullScreenApplicationContentRect();
    /* Initialize the main view */
    rect.origin.x = rect.origin.y = 0;
    mainView = new AbsView(rect);
  }

  public static class LayoutParams extends ViewGroup.LayoutParams {
    public int width;
    public int height;
    public int x;
    public int y;

    public LayoutParams(int width, int height, int x, int y) {
      this.width = width;
      this.height = height;
      this.x = x;
      this.y = y;
    }
  }
}

class AbsView extends UIView {
  public AbsView(CGRect rect) {
    super(rect);
  }

  public void drawRect(CGRect rect) {
    // Todo is this foobar on iphone?
    float black[] = { 0, 0, 0, 1 };
    CGContext ctx = CGContext.UICurrentContext();
    ctx.setFillColor(black);
    ctx.fillRect(rect);
    super.drawRect(rect);
  }
}
