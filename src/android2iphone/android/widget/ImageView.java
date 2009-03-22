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

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout.LayoutParams;

public class ImageView extends View {
  protected OneImageView myImage;

  public void setImageResource(int resId) {
	  this.myImage.loadImage(resId);
  }

  public void setLayoutParams(ViewGroup.LayoutParams l) {
    super.setLayoutParams(l);
    AbsoluteLayout.LayoutParams a = (AbsoluteLayout.LayoutParams) l;
    int width = a.width;
    int height = a.height;

    if (width == LayoutParams.WRAP_CONTENT) {
      width = myImage.getWidth();
    }
    if (height == LayoutParams.WRAP_CONTENT) {
      height = myImage.getHeight();
    }
    myImage.setBounds(new CGRect(a.x, a.y, width, height));
    myImage.setFrame(new CGRect(a.x, a.y, width, height));
  }

  public ImageView(Context c) {
      myImage = new OneImageView(((Activity) c).getWindow().getCGRect());
	  this.setMainView(myImage);
  }

  public AbsoluteLayout.LayoutParams getLayoutParams() {
    return (AbsoluteLayout.LayoutParams) getCurLayout();
  }

  public void bringToFront() {
	// TODO Auto-generated method stub
  }
}

class OneImageView extends UIImageView {
  
  UIImage _img;

  void setNeedsUpdate() {
    this.setNeedsDisplayInRect(myLoc);
  }

  public int getHeight() {
	return (int) _img.getSize().height;
  }

  public int getWidth() {
	return (int) _img.getSize().width;
  }

  public void loadImage(int resId) {
	    if (resId == 0x7f020000)
	    	_img = UIImage.imageAtPath("ball.png");
	    else if (resId == 0x7f020001)
	    	_img = UIImage.imageAtPath("goal.png");
	    else if (resId == 0x7f020003)
	    	_img = UIImage.imageAtPath("man.png");
	    else 
	    	_img = UIImage.imageAtPath("wall.png");
	    /*
	    switch (resId) {
	    case 0x7f020000:
	    	_img = UIImage.imageAtPath("ball.png");
	    	break;
	    case 0x7f020001:
	    	_img = UIImage.imageAtPath("goal.png");
	    	break;
	    case 0x7f020003:
	    	_img = UIImage.imageAtPath("man.png");
	    	break;
	    case 0x7f020004:
	    	_img = UIImage.imageAtPath("wall.png");
	    	break;
	    }
	    */
	    // TODO A little kludge until Joshua cleans up resource mapping
	    /*
	    double rand = (Math.random() * 4);
	    if (rand < 1) {
	      _img = UIImage.imageAtPath("star1.png");
	    } else if (rand < 2) {
	      _img = UIImage.imageAtPath("star2.png");
	    } else if (rand < 3) {
	      _img = UIImage.imageAtPath("star3.png");
	    } else {
	      _img = UIImage.imageAtPath("star4.png");
	    }
	    */
	    setImage(_img);
    }

  OneImageView(CGRect windowRect) {
    super(windowRect);
  }

  void setBounds(CGRect bounds) {
    this.myLoc = bounds;
  }

  private CGRect myLoc = new CGRect(0, 0, 0, 0);

  public void drawRect(CGRect rect) {
    CGRect toDraw = myLoc;
    _img.draw1PartImageInRect(toDraw);
  }
}