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
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AbsoluteLayout;

/**
 * The main class/activity of the Fireworks application.
 * 
 */
public class AndroidFireworks extends Activity {
    /**
     * UI Text for inviting people to visit XMLVM.org.
     */
    public static final String VISIT_XMLVM       = "Visit Project XMLVM.org";
    /**
     * UI Text for inviting people to watch the XMLVM Google TechTalk.
     */
    public static final String WATCH_YOUTUBE     = "Watch Google TechTalk";
    /**
     * The URL to XMLVM.org
     */
    public static final String XMLVM_URL         = "http://www.xmlvm.org";
    /**
     * The URL to the XMLVM YouTube video.
     */
    public static final String YOUTUBE_XMLVM_URL = "http://www.youtube.com/watch?v=s8nMpi5-P-I";

    private ViewGroup          layout;
    private Fireworks          f;
    private Environment        environment       = new Environment();

    private Handler            updater           = new Handler();
    private Runnable           updateFw;

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
        updateFw = new Runnable() {
            public void run() {
                f.doUpdate();
                updater.postDelayed(updateFw, 50);
                layout.invalidate();
            }
        };
        // No title bar.
        this.requestWindowFeature(Window.FEATURE_NO_TITLE);
        // Switch to fullscreen view, getting rid of the status bar as well.
        this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);
        layout = new AbsoluteLayout(this);
        setContentView(layout);
        SensorManager sensorManager = (SensorManager) this.getSystemService(SENSOR_SERVICE);
        sensorManager.registerListener(new SensorListener() {
            public void onSensorChanged(int sensor, float[] values) {
                environment.rotX = values[1];
                environment.rotY = values[0];
            }

            public void onAccuracyChanged(int sensor, int accuracy) {
            }
        }, SensorManager.SENSOR_ACCELEROMETER, SensorManager.SENSOR_DELAY_FASTEST);
        f = new Fireworks(layout, environment);
        updater.postDelayed(updateFw, 100);
    }

    /**
     * Returns the main {@link ViewGroup} for the Fireworks layout.
     */
    public ViewGroup getLayout() {
        return layout;
    }

    /**
     * Returns the active Environment.
     */
    public Environment getEnvironment() {
        return environment;
    }

    private void viewUri(Uri uri) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(uri);
        startActivity(intent);
    }

    /**
     * A simple class for keepting basic environmental data.
     */
    public static class Environment {
        public float rotX         = 0;
        public float rotY         = 0;
        public int   windowHeight = 10;
        public int   windowWidth  = 10;
    }
}
