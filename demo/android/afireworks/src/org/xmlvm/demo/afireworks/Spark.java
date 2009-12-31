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

package org.xmlvm.demo.afireworks;

import org.xmlvm.demo.afireworks.AndroidFireworks.Environment;

import android.view.ViewGroup;
import android.widget.ImageView;

/**
 * A sparks of the big fireworks. A {@link Bomb} contains many Sparks.
 */
public class Spark {
	private ImageView image;
	private float x;
	private float y;
	private float vx;
	private float vy;
	private boolean outOfSight;
	private Environment environment;

	public Spark(ViewGroup viewGroup, Environment environment) {
		this.environment = environment;
		this.image = new ImageView(viewGroup.getContext());
		viewGroup.addView(this.image);
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
	}

	void reset(int x, int y) {
		this.x = x;
		this.y = y;
		vx = (float) (Math.random() * Const.MAX2V) - (Const.MAX2V / 2);
		vy = (float) (Math.random() * Const.MAX2V) - (Const.MAX2V / 2);
		outOfSight = false;
	}

	public float getX() {
		return x;
	}

	public void setX(float x) {
		this.x = x;
	}

	public float getY() {
		return y;
	}

	public void setY(float y) {
		this.y = y;
	}

	public boolean isOutOfSight() {
		return outOfSight;
	}

	public void setOutOfSight(boolean outOfSight) {
		this.outOfSight = outOfSight;
	}

	public void nextStep() {
		if (outOfSight) {
			return;
		}
		if (x < -Const.IMAGE_SIZE || x > environment.windowWidth
				|| y < -Const.IMAGE_SIZE || y > environment.windowHeight) {
			// This spark is out of reach
			outOfSight = true;
			return;
		}
		// Gravity
		vx += (Const.DV * (-environment.rotX / 10f));
		vy += (Const.DV * (environment.rotY / 10f));
		x += (Const.T * vx);
		y += (Const.T * vy);
		updateImage();
	}

	/**
	 * Updates the position of the spark image to the current.
	 */
	private void updateImage() {
		image.layout((int) x, (int) y, (int) x + Const.IMAGE_SIZE, (int) y
				+ Const.IMAGE_SIZE);
	}
}
