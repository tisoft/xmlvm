/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.tutorial.android.sensor.camera;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import android.app.Activity;
import android.os.Bundle;
import android.os.Environment;
import android.graphics.PixelFormat;
import android.hardware.Camera;
import android.hardware.Camera.ShutterCallback;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;

/**
 * 
 * This application demonstrates the use of camera in android. On creation of
 * the activity, the camera preview starts which allows the user to preview
 * before capturing an image. The image can be captured using the button that is
 * provided. On click of the button the callback method
 * <code> PictureCallback() </code> is called. The callback handles storing the
 * captured image in jpeg format into the external storage device. A SurfaceView
 * is created for the camera preview. The Activity implements the
 * SurfaceHolder.Callback to get notifications about the changes in the surface.
 * 
 * The CAMERA permissions need to be declared in the AndroidManifest.xml file in
 * order to access the camera device. <uses-feature> element is used to declare
 * the features of the camera that will be used by the application.
 */

public class CameraActivity extends Activity implements SurfaceHolder.Callback {

    protected Camera        camera;
    protected SurfaceView   surfaceView;
    protected SurfaceHolder surfaceHolder;
    protected ImageButton   cameraButton;
    private File            path;
    private int             i = 0;


    public void onCreate(Bundle icicle) {

        super.onCreate(icicle);

        /*
         * Set the camera preview to be full screen without the notification bar
         */
        getWindow().setFormat(PixelFormat.TRANSLUCENT);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.main);

        /*
         * Get the external storage directory path Generally /mnt/sdcard/
         */
        path = Environment.getExternalStorageDirectory();

        /*
         * Get the SurfaceView which is defined in the resources file using the
         * resource ID
         */
        surfaceView = (SurfaceView) findViewById(R.id.surfaceCamera);

        /*
         * Surface holder allows us to control the changes to the surface. A
         * Callback interface is registered in order to control changes to the
         * surface.
         */
        surfaceHolder = surfaceView.getHolder();
        surfaceHolder.addCallback(this);
        surfaceHolder.setType(SurfaceHolder.SURFACE_TYPE_PUSH_BUFFERS);

        /*
         * A Button is provided, on click which the image is captured An image
         * button is used here which allows to specify an image for the button
         * instead of plain text. The button is defined in the resource file is
         * referenced using the resource ID.
         */
        cameraButton = (ImageButton) findViewById(R.id.cameraButton);
    }

    /*
     * This method is called when the button is clicked. On click of the button,
     * the takePicture() is called which initiates a series of Callbacks for
     * image capture. A Shutter Callback occurs close to the moment of image
     * capture.A raw Callback occurs when raw image data is available. A jpeg
     * Callback occurs when compressed image is available. A null can be passed
     * when a callback is not required.
     */
    public void onClick(View v) {
        camera.takePicture(shutterCallback, null, pictureCallback);
    }


    /*
     * This callback can be used to play shutter sound and such since this
     * callback method is called when the image is captured by the sensor
     */
    ShutterCallback        shutterCallback = new ShutterCallback() {
                                               public void onShutter() {
                                                   Log.v("Camera", "picturecallback");
                                               }
                                           };

    /*
     * The image data that is available after image capture is supplied using
     * this callback interface. The image data is available in form of bytes[],
     * the format of which depends on the context of the callback. This can be
     * converted to any formats using Bitmap or BitmapFactory classes.
     */
    Camera.PictureCallback pictureCallback = new Camera.PictureCallback() {
                                               public void onPictureTaken(byte[] imageData, Camera c) {

                                                   /*
                                                    * This callback method is
                                                    * called when the data is
                                                    * available after capture of
                                                    * the image.
                                                    */
                                                   Log.v("Camera", "picturecallback");
                                                   FileOutputStream outStream = null;
                                                   try {
                                                       outStream = new FileOutputStream(
                                                               String.format(path + "/img%d.jpg",
                                                                       i++));
                                                       outStream.write(imageData);
                                                       outStream.close();
                                                   } catch (FileNotFoundException e) {
                                                       e.printStackTrace();
                                                   } catch (IOException e) {
                                                       e.printStackTrace();
                                                   } finally {
                                                   }
                                                   camera.startPreview();
                                               }
                                           };


    /*
     * This callback is called immediately after the surface is first created.
     * Obtain an instance of the camera when the surface is created.
     */
    public void surfaceCreated(SurfaceHolder holder) {
        camera = Camera.open();
    }

    /*
     * This callback is called when there are any structural changes to the
     * surface.
     */
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {

        /*
         * Camera parameters can be modified by modifying the object that is
         * returned by getParameters()
         */
        Camera.Parameters p = camera.getParameters();
        p.setPreviewSize(width, height);
        p.setFocusMode(Camera.Parameters.FOCUS_MODE_AUTO);
        camera.setParameters(p);

        try {
            /*
             * setPreviewDisplay() must be called before calling startPreview()
             * This method sets the surface required for the camera preview. A
             * fully initialized SurfaceHolder must be passed to this method.
             */
            camera.setPreviewDisplay(holder);
        } catch (IOException e) {
            e.printStackTrace();
        }

        /* Starts the live preview required for camera */
        camera.startPreview();
    }

    /*
     * This callback is called just before the surface is being destroyed. Since
     * camera is a shared resource it is good practice to release the resource
     * when not using it.
     */
    public void surfaceDestroyed(SurfaceHolder holder) {
        Log.e("Camera", "surfaceDestroyed");
        camera.stopPreview();
        camera.release();
    }

}