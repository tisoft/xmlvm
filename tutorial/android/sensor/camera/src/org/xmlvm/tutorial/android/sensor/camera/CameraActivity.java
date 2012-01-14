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
import java.util.List;

import android.app.Activity;
import android.graphics.PixelFormat;
import android.hardware.Camera;
import android.hardware.Camera.ShutterCallback;
import android.hardware.Camera.Size;
import android.os.Bundle;
import android.os.Environment;
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

    @Override
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
                                               @Override
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
                                               @Override
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
    @Override
    public void surfaceCreated(SurfaceHolder holder) {
        camera = Camera.open();
    }

    /*
     * This callback is called when there are any structural changes to the
     * surface.
     */
    @Override
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
        View root = findViewById(R.id.root);
        camera.stopPreview();

        /*
         * Camera parameters can be modified by modifying the object that is
         * returned by getParameters()
         */
        Camera.Parameters p = camera.getParameters();

        /*
         * Determine supported preview sizes and and set the preview size which
         * best matches the device's screen resolution.
         */
        List<Size> supportedSizes = p.getSupportedPreviewSizes();
        Size previewSize = determinePreviewSize(supportedSizes, root.getWidth(), root.getHeight());


        // Switch camera to portrait mode
        // TODO: Handle upside down orientations properly
        if (root.getWidth() < root.getHeight()) {
            camera.setDisplayOrientation(90);
        }
        p.setPreviewSize(previewSize.width, previewSize.height);

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

        // Layout the surfaceView correctly. It might not cover the whole
        // screen, depending in the screen's and camera's aspect ratio.
        float previewAspectRatio = (float) (previewSize.width) / previewSize.height;
        if (root.getWidth() > root.getHeight()) {
            surfaceView.layout(0, 0, (int) (root.getHeight() * previewAspectRatio),
                    root.getHeight());
        } else {
            surfaceView.layout(0, 0, root.getWidth(), (int) (root.getWidth() * previewAspectRatio));
        }
        
        /* Starts the live preview required for camera */
        camera.startPreview();
    }

    /*
     * This callback is called just before the surface is being destroyed. Since
     * camera is a shared resource it is good practice to release the resource
     * when not using it.
     */
    @Override
    public void surfaceDestroyed(SurfaceHolder holder) {
        Log.e("Camera", "surfaceDestroyed");
        camera.stopPreview();
        camera.release();
    }

    /**
     * Determine preview size based on the supported preview sizes. The preview
     * size is the maximum preview size supported which is less or equal to the
     * device's screen resolution. To test the best matching size both portrait
     * and landscape screen orientations are tested.
     * 
     * @param sizes
     *            The preview sizes supported by the device's camera.
     * 
     * @param width
     *            The device's screen width.
     * 
     * @param height
     *            The device's screen height.
     * 
     * @return The determined preview size.
     */
    private Size determinePreviewSize(List<Size> sizes, int width, int height) {
        if (height > width) {
            int temp = width;
            width = height;
            height = temp;
        }

        for (Size s : sizes) {
            if (s.width <= width && s.height <= height) {
                return s;
            }

            if (s.width <= height && s.height <= width) {
                return s;
            }
        }
        return null;
    }
}