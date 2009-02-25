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
import android.content.Intent;
import android.hardware.SensorListener;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.WindowManager;
import android.widget.AbsoluteLayout;

public class AndroidFireworks extends Activity {
  public static final String VISIT_XMLVM = "Visit Project XMLVM.org";
  public static final String WATCH_YOUTUBE = "Watch Google TechTalk";
  public static final String XMLVM_URL = "http://www.xmlvm.org";
  public static final String YOUTUBE_XMLVM_URL = "http://www.youtube.com/watch?v=s8nMpi5-P-I";

  public AbsoluteLayout layout;
  public Fireworks f;
  public Environment environment = new Environment();

  private Handler updater = new Handler();
  private Runnable updateFw = new Runnable() {
    public void run() {
      f.doUpdate();
      updater.postDelayed(updateFw, 50);
      layout.invalidate();
    }
  };

  @Override
  public void onContentChanged() {
    WindowManager w = getWindowManager();
    Display d = w.getDefaultDisplay();
    environment.windowWidth = d.getWidth();
    environment.windowHeight = d.getHeight();
  }

  @Override
  public boolean onCreateOptionsMenu(Menu menu) {
    menu.add(VISIT_XMLVM).setIcon(R.drawable.xmlvm);
    menu.add(WATCH_YOUTUBE).setIcon(R.drawable.youtube);
    return true;
  }

  @Override
  public boolean onOptionsItemSelected(MenuItem item) {
    if (item.getTitle().equals(VISIT_XMLVM)) {
      viewUri(Uri.parse(XMLVM_URL));
      return true;
    } else if (item.getTitle().equals(WATCH_YOUTUBE)) {
      viewUri(Uri.parse(YOUTUBE_XMLVM_URL));
      return true;
    }
    return false;
  }

  @Override
  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    layout = new AbsoluteLayout(this);
    setContentView(layout);
    SensorManager sensorManager = (SensorManager) this
        .getSystemService(SENSOR_SERVICE);
    sensorManager.registerListener(new SensorListener() {
      public void onSensorChanged(int sensor, float[] values) {
        environment.rotX = values[1];
        environment.rotY = values[0];
      }

      public void onAccuracyChanged(int sensor, int accuracy) {
      }
    }, SensorManager.SENSOR_ACCELEROMETER);
    f = new Fireworks(this);
    updater.postDelayed(updateFw, 100);
  }

  private void viewUri(Uri uri) {
    Intent intent = new Intent(Intent.ACTION_VIEW);
    intent.setData(uri);
    startActivity(intent);
  }

  public Environment getRotation() {
    return this.environment;
  }

  static class Environment {
    public float rotX = 0;
    public float rotY = 0;
    public int windowHeight = 10;
    public int windowWidth = 10;
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
      bombs[j].reset(
          (int) (Math.random() * (form.environment.windowWidth - 60)) + 30,
          (int) (Math.random() * (form.environment.windowHeight - 60)) + 30);
    }
  }

  public void doUpdate() {
    for (int j = 0; j < Const.BOMB_COUNT; ++j) {
      Bomb bomb = bombs[j];
      // Log.d("doUpdate()", "Height: " + form.environment.windowHeight);
      if (bomb.allOutOfSight()) {
        bomb.reset((int) (Math.random() * form.environment.windowWidth),
            (int) (Math.random() * form.environment.windowHeight));
      }
      for (int i = 0; i < Const.SPARKS_PER_BOMB; ++i) {
        // Update the position
        Spark spark = bomb.sparks[i];
        spark.nextStep();
      }
    }
  }
}
