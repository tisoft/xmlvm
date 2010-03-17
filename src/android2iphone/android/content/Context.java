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

package android.content;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.internal.Assert;
import android.internal.IPhoneManager;
import android.media.AudioManager;
import android.os.PowerManager;
import android.view.LayoutInflater;
import android.view.WindowManager;

/**
 * <i>(XMLVM Compatibility Class)</i>
 * <p>
 * Interface to global information about an application environment.
 */
public abstract class Context {

    /**
     * Flag for {@link #bindService}: automatically create the service as long
     * as the binding exists. Note that while this will create the service, its
     * {@link android.app.Service#onStart} method will still only be called due
     * to an explicit call to {@link #startService}. Even without that, though,
     * this still provides you with access to the service object while the
     * service is created.
     * 
     * <p>
     * Specifying this flag also tells the system to treat the service as being
     * as important as your own process -- that is, when deciding which process
     * should be killed to free memory, the service will only be considered a
     * candidate as long as the processes of any such bindings is also a
     * candidate to be killed. This is to avoid situations where the service is
     * being continually created and killed due to low memory.
     */
    public static final int      BIND_AUTO_CREATE        = 0x0001;

    /**
     * Use with {@link #getSystemService} to retrieve a
     * {@link android.location.LocationManager} for controlling location
     * updates.
     * 
     * @see #getSystemService
     * @see android.location.LocationManager
     */
    public static final String   LOCATION_SERVICE        = "location";

    /**
     * Use with {@link #getSystemService(String)} to retrieve a
     * {@link IPhoneManager} for iPhone-specific services. This is a XMLVM
     * extension.
     */
    public static final String   IPHONE_SERVICE          = "iphone";
    /**
     * Use with {@link #getSystemService(String)} to retrieve a
     * {@link SensorManager} for accessing sensors.
     */
    public static final String   SENSOR_SERVICE          = "sensor";
    /**
     * Use with {@link #getSystemService(String)} to retrieve a
     * {@link PowerManager} for controlling power management, including
     * "wake locks," which let you keep the device on while you're running long
     * tasks.
     */
    public static final String   POWER_SERVICE           = "power";

    // *** File creation modes *** //
    /**
     * File creation mode: the default mode, where the created file can only be
     * accessed by the calling application (or all applications sharing the same
     * user ID).
     */
    public static final int      MODE_PRIVATE            = 0;
    /**
     * File creation mode: allow all other applications to have read access to
     * the created file.
     */
    public static final int      MODE_WORLD_READABLE     = 1;
    /**
     * File creation mode: allow all other applications to have write access to
     * the created file.
     */
    public static final int      MODE_WORLD_WRITEABLE    = 2;

    public static final String   LAYOUT_INFLATER_SERVICE = "layout_inflater";
    public static final String   AUDIO_SERVICE           = "audio";
    public static final String   WINDOW_SERVICE          = "window";
    public static final String   TELEPHONY_SERVICE       = "telephony";

    private static SensorManager sensorManager           = null;
    private static PowerManager  powerManager            = null;
    private static AudioManager  audioManager            = null;
    private static WindowManager windowManager           = null;
    private static IPhoneManager iphoneManager           = null;

    /**
     * Return the handle to a system-level service by name. The class of the
     * returned object varies by the requested name-
     * 
     * @param service
     *            The name of the desired service.
     * @return The service or null if the name does not exist.
     */
    public Object getSystemService(String service) {
        if (service.equals(SENSOR_SERVICE)) {
            if (sensorManager == null) {
                sensorManager = new SensorManager();
            }
            return sensorManager;
        } else if (service.equals(POWER_SERVICE)) {
            if (powerManager == null) {
                powerManager = new PowerManager();
            }
            return powerManager;
        } else if (service.equals(WINDOW_SERVICE)) {
            if (windowManager == null) {
                windowManager = new WindowManager();
            }
            return windowManager;
        } else if (service.equals(AUDIO_SERVICE)) {
            if (audioManager == null) {
                audioManager = new AudioManager();
            }
            return audioManager;
        } else if (service.equals(LAYOUT_INFLATER_SERVICE)) {
            return new LayoutInflater(this);
        } else if (service.equals(IPHONE_SERVICE)) {
            if (iphoneManager == null) {
                iphoneManager = new IPhoneManager();
            }
            return iphoneManager;
        }
        return null;
    }

    public abstract Context getApplicationContext();

    public abstract SharedPreferences getSharedPreferences(String name, int mode);

    public abstract Resources getResources();

    public abstract AssetManager getAssets();

    public abstract String getPackageName();

    public abstract FileInputStream openFileInput(String name) throws FileNotFoundException;

    public abstract FileOutputStream openFileOutput(String name, int mode)
            throws FileNotFoundException;

    public abstract boolean deleteFile(String name);

    public String getString(int resId) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public void bindService(Intent intent, ServiceConnection conn, int flags) {
        Assert.NOT_IMPLEMENTED();
    }

    public abstract File getFileStreamPath(String name);

    public ContentResolver getContentResolver() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }
}
