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

package org.xmlvm.demo.aremote;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

import android.app.Activity;
import android.hardware.SensorListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.widget.AbsoluteLayout;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.CompoundButton.OnCheckedChangeListener;

public class ARemote extends Activity implements SensorListener, OnCheckedChangeListener {

    private static final int INSETS             = 25;
    private static final int LINE_HEIGHT        = 35;
    private static final int IP_WIDTH           = 120;

    private Handler          handler            = new Handler();
    private boolean          httpRequestRunning = false;
    private SensorManager    sensorManager;
    private CheckBox         cbxAccelerometer;
    private EditText         edtIpAddress;

    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sensorManager = (SensorManager) this.getSystemService(SENSOR_SERVICE);
        initLayout();
    }

    @Override
    public void onResume() {
        super.onResume();
        if (cbxAccelerometer.isChecked()) {
            enableAccelerometer();
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        disableAccelerometer();
    }

    @Override
    public void onAccuracyChanged(int sensor, int accuracy) {
        // TODO Auto-generated method stub

    }

    @Override
    public void onSensorChanged(int sensor, float[] values) {
        if (httpRequestRunning) {
            return;
        }
        float x = values[0] / SensorManager.GRAVITY_EARTH;
        float y = values[1] / SensorManager.GRAVITY_EARTH;
        float z = values[2] / SensorManager.GRAVITY_EARTH;
        String ip = edtIpAddress.getText().toString();
        String server = new String("http://" + ip + ":8080/ACC/");
        server += String.valueOf(x);
        server += "/";
        server += String.valueOf(y);
        server += "/";
        server += String.valueOf(z);
        final URL url;
        try {
            url = new URL(server);
        } catch (MalformedURLException e) {
            return;
        }
        httpRequestRunning = true;
        handler.post(new Runnable() {
            public void run() {
                try {
                    URLConnection conn = url.openConnection();
                    // Getting the input stream issues the HTTP request
                    conn.getInputStream().close();
                } catch (IOException e) {
                    // Do nothing
                }
                httpRequestRunning = false;
            }
        });
    }

    private void initLayout() {
        AbsoluteLayout layout = new AbsoluteLayout(this);

        TextView lblAdress = new TextView(this);
        AbsoluteLayout.LayoutParams p = new AbsoluteLayout.LayoutParams(
                AbsoluteLayout.LayoutParams.WRAP_CONTENT, LINE_HEIGHT, INSETS, INSETS);
        lblAdress.setLayoutParams(p);
        lblAdress.setText("IP Address");
        layout.addView(lblAdress);

        TextView lblAccelerometer = new TextView(this);
        p = new AbsoluteLayout.LayoutParams(AbsoluteLayout.LayoutParams.WRAP_CONTENT, LINE_HEIGHT,
                INSETS, 3 * INSETS);
        lblAccelerometer.setLayoutParams(p);
        lblAccelerometer.setText("Accelerometer");
        layout.addView(lblAccelerometer);

        edtIpAddress = new EditText(this);
        edtIpAddress.setTextSize(12.0f);
        p = new AbsoluteLayout.LayoutParams(IP_WIDTH, AbsoluteLayout.LayoutParams.WRAP_CONTENT, 320
                - IP_WIDTH - INSETS, INSETS - 10);
        edtIpAddress.setLayoutParams(p);
        edtIpAddress.setLines(1);
        layout.addView(edtIpAddress);

        cbxAccelerometer = new CheckBox(this);
        cbxAccelerometer.setSelected(false);
        p = new AbsoluteLayout.LayoutParams(AbsoluteLayout.LayoutParams.WRAP_CONTENT,
                AbsoluteLayout.LayoutParams.WRAP_CONTENT, 320 - IP_WIDTH - INSETS, 3 * INSETS - 10);
        cbxAccelerometer.setLayoutParams(p);
        cbxAccelerometer.setOnCheckedChangeListener(this);
        layout.addView(cbxAccelerometer);

        setContentView(layout);
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * android.widget.CompoundButton.OnCheckedChangeListener#onCheckedChanged
     * (android.widget.CompoundButton, boolean)
     */
    @Override
    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
        if (isChecked) {
            enableAccelerometer();
        } else {
            disableAccelerometer();
        }
    }

    /**
     * 
     */
    private void enableAccelerometer() {
        sensorManager.registerListener(this, SensorManager.SENSOR_ACCELEROMETER,
                SensorManager.SENSOR_DELAY_FASTEST);
    }

    /**
     * 
     */
    private void disableAccelerometer() {
        sensorManager.unregisterListener(this);
    }

}