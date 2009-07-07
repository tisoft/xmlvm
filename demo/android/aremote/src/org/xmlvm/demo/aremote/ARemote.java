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

public class ARemote extends Activity implements SensorListener {

    private Handler       handler            = new Handler();
    private boolean       httpRequestRunning = false;
    private SensorManager sensorManager;

    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sensorManager = (SensorManager) this.getSystemService(SENSOR_SERVICE);
        sensorManager.registerListener(this, SensorManager.SENSOR_ACCELEROMETER,
                SensorManager.SENSOR_DELAY_FASTEST);
        setContentView(R.layout.main);
    }

    @Override
    public void onDestroy() {
        sensorManager.unregisterListener(this);
        super.onDestroy();
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
        float x = values[0] / 9.81f;
        float y = values[1] / 9.81f;
        float z = values[2] / 9.81f;
        String ip = "192.168.178.24";
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
}