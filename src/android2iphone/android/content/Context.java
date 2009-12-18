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

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.internal.IPhoneManager;
import android.media.AudioManager;
import android.os.PowerManager;
import android.view.LayoutInflater;

/**
 * <i>(XMLVM Compatibility Class)</i>
 * <p>
 * Interface to global information about an application environment.
 */
public abstract class Context {
    
    /**
     * Use with {@link #getSystemService(String)} to retrieve a
     * {@link IPhoneManager} for iPhone-specific services. This is
     * a XMLVM extension.
     */
    public static final String    IPHONE_SERVICE          = "iphone";
    /**
     * Use with {@link #getSystemService(String)} to retrieve a
     * {@link SensorManager} for accessing sensors.
     */
    public static final String    SENSOR_SERVICE          = "sensor";
    /**
     * Use with {@link #getSystemService(String)} to retrieve a
     * {@link PowerManager} for controlling power management, including
     * "wake locks," which let you keep the device on while you're running long
     * tasks.
     */
    public static final String    POWER_SERVICE           = "power";

    // *** File creation modes *** //
    /**
     * File creation mode: the default mode, where the created file can only be
     * accessed by the calling application (or all applications sharing the same
     * user ID).
     */
    public static final int       MODE_PRIVATE            = 0;
    /**
     * File creation mode: allow all other applications to have read access to
     * the created file.
     */
    public static final int       MODE_WORLD_READABLE     = 1;
    /**
     * File creation mode: allow all other applications to have write access to
     * the created file.
     */
    public static final int       MODE_WORLD_WRITEABLE    = 2;

    public static final String    LAYOUT_INFLATER_SERVICE = "layout_inflater";
    public static final String    AUDIO_SERVICE           = "audio";

    private static SensorManager  sensorManager           = null;
    private static PowerManager   powerManager            = null;
    private static AudioManager   audioManager            = null;
    private static LayoutInflater layoutInflater          = null;
    private static IPhoneManager  iphoneManager           = null;

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
        } else if (service.equals(AUDIO_SERVICE)) {
            if (audioManager == null) {
                audioManager = new AudioManager();
            }
            return audioManager;
        } else if (service.equals(LAYOUT_INFLATER_SERVICE)) {
            if (layoutInflater == null) {
                layoutInflater = new LayoutInflater(this);
            }
            return layoutInflater;
        } else if (service.equals(IPHONE_SERVICE)) {
            if (iphoneManager == null) {
                iphoneManager = new IPhoneManager();
            }
            return iphoneManager;
        }
        return null;
    }

    public abstract SharedPreferences getSharedPreferences(String name, int mode);

    public abstract Resources getResources();

    public abstract AssetManager getAssets();

    public abstract FileInputStream openFileInput(String name) throws FileNotFoundException;

    public abstract FileOutputStream openFileOutput(String name, int mode);

    public abstract boolean deleteFile(String name);
}
