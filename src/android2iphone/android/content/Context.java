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

import android.hardware.SensorManager;
import android.os.PowerManager;

/**
 * <i>(XMLVM Compatibility Class)</i>
 * <p>
 * Interface to global information about an application environment.
 */
public class Context {
    /**
     * Use with {@link #getSystemService(String)} to retrieve a
     * {@link SensorManager} for accessing sensors.
     */
    public static final String SENSOR_SERVICE       = "sensor";
    /**
     * Use with {@link #getSystemService(String)} to retrieve a
     * {@link PowerManager} for controlling power management, including
     * "wake locks," which let you keep the device on while you're running long
     * tasks.
     */
    public static final String POWER_SERVICE        = "power";

    // *** File creation modes *** //
    /**
     * File creation mode: the default mode, where the created file can only be
     * accessed by the calling application (or all applications sharing the same
     * user ID).
     */
    public static final int    MODE_PRIVATE         = 0;
    /**
     * File creation mode: allow all other applications to have read access to
     * the created file.
     */
    public static final int    MODE_WORLD_READABLE  = 1;
    /**
     * File creation mode: allow all other applications to have write access to
     * the created file.
     */
    public static final int    MODE_WORLD_WRITEABLE = 2;

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
            return new SensorManager();
        } else if (service.equals(POWER_SERVICE)) {
            return new PowerManager();
        }
        return null;
    }
}
