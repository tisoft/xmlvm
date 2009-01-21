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

import android.app.Activity;
import android.app.ActivityImpl;
import android.hardware.SensorListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.widget.AbsoluteLayout;

public class AndroidFireworks extends Activity {
  public static final int UPDATE = 1337;
  Handler updater = new Handler();
  public AbsoluteLayout layout;
  public Fireworks f;
  private Rotation rotation = new Rotation();
  private Runnable updateFw = new Runnable() {
    public void run() {
      f.doUpdate();
      updater.postDelayed(updateFw, 50);
      layout.invalidate();
    }
  };
  
  public static ActivityImpl __xmlvm_iphone_entrypoint(ActivityImpl me)
  {
      // Iphone entry point. 
      AndroidFireworks fw = new AndroidFireworks();
      ActivityImpl.rootApp = me;
      me.parent = fw;
      fw.myIphoneWrapper = me;
      return me;
  }
  
  public static void main(String [] args)
  {
      // simulator entry point
      Activity toRun = new AndroidFireworks();
      // launch point for java land
      ActivityImpl implementaton = new ActivityImpl(toRun);
      toRun.myIphoneWrapper = implementaton;
      implementaton.applicationDidFinishLaunching(null);
  }

  @Override
  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    layout = new AbsoluteLayout(this);
    setContentView(layout);
    SensorManager sensorManager =
        (SensorManager) this.getSystemService(SENSOR_SERVICE);
    sensorManager.registerListener(new SensorListener() {
      public void onSensorChanged(int sensor, float[] values) {
        rotation.x = values[1];
        rotation.y = values[0];
      }

      public void onAccuracyChanged(int sensor, int accuracy) {
      }
      
    }, SensorManager.SENSOR_ACCELEROMETER);

    f = new Fireworks(this);
    updater.postDelayed(updateFw, 100);
  }
  
  public Rotation getRotation() {
    return this.rotation;
  }
  
  class Rotation {
    float x = 0;
    float y = 0;
  }
}


class Fireworks {
  Bomb[] bombs;
  AndroidFireworks form;

  public Fireworks(AndroidFireworks form) {
    this.form = form;
    bombs = new Bomb[Const.BOMB_COUNT];
    for (int j = 0; j < Const.BOMB_COUNT; ++j) {
      bombs[j] = new Bomb(form);
      bombs[j].resetWithX((int) (Math.random() * (Const.WIDTH - 60)) + 30,
          (int) (Math.random() * (Const.HEIGHT - 60)) + 30);
    }
  }

  public void doUpdate() {
    for (int j = 0; j < Const.BOMB_COUNT; ++j) {
      Bomb bomb = bombs[j];
      if (bomb.allOutOfSight()) {
        bomb.resetWithX((int) (Math.random() * Const.WIDTH), (int) (Math
            .random() * Const.HEIGHT));
      }
      for (int i = 0; i < Const.SPARKS_PER_BOMB; ++i) {
        // Update the position
        Spark spark = bomb.sparks[i];
        spark.nextStep();
        AbsoluteLayout.LayoutParams p =
            new AbsoluteLayout.LayoutParams(
                AbsoluteLayout.LayoutParams.WRAP_CONTENT,
                AbsoluteLayout.LayoutParams.WRAP_CONTENT, (int) spark.x,
                (int) spark.y);

        spark.image.setLayoutParams(p);
      }
    }
  }
}
