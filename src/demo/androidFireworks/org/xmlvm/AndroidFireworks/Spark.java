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

package org.xmlvm.AndroidFireworks;

import android.widget.ImageView;

public class Spark {
  AndroidFireworks parent;
  ImageView image;
  float x;
  float y;
  float vx;
  float vy;
  boolean outOfSight;

  public Spark(AndroidFireworks parent) {
    this.parent = parent;
  }

  void resetWithX(int x, int y) {
    this.x = x;
    this.y = y;
    this.image = new ImageView(parent);
    parent.layout.addView(this.image);
    double rand = (Math.random() * 4);
    if (rand < 1) {
      image.setImageResource(R.drawable.star1);
    } else if (rand < 2) {
      image.setImageResource(R.drawable.star2);
    } else if (rand < 3) {
      image.setImageResource(R.drawable.star3);
    } else {
      image.setImageResource(R.drawable.star4);
    }
    vx = (float) (Math.random() * Const.MAX2V) - (Const.MAX2V / 2);
    vy = (float) (Math.random() * Const.MAX2V) - (Const.MAX2V / 2);

    // NSLog(@"Vx:%f Vy:%f", vx, vy);
    outOfSight = false;
  }

  void nextStep() {
    if (outOfSight) {
      return;
    }
    if (x < -Const.IMAGE_SIZE || x > Const.WIDTH || y < -Const.IMAGE_SIZE
        || y > Const.HEIGHT) {
      // This spark is out of reach
      outOfSight = true;
      return;
    }
    // Gravity
    vx += (Const.DV * (parent.getRotation().y / 10f));
    vy += (Const.DV * (-parent.getRotation().x / 10f));
    x += (Const.T * vx);
    y += (Const.T * vy);
  }
}
