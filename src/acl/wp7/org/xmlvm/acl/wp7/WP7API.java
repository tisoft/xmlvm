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

package org.xmlvm.acl.wp7;

import org.xmlvm.acl.common.CommonDeviceAPI;
import org.xmlvm.acl.common.subsystems.CommonAccelerometer;
import org.xmlvm.acl.common.subsystems.CommonCamera;
import org.xmlvm.acl.common.subsystems.CommonDispatcher;
import org.xmlvm.acl.common.subsystems.CommonFileSystem;
import org.xmlvm.acl.common.subsystems.CommonFontFactory;
import org.xmlvm.acl.common.subsystems.CommonLocationManager;
import org.xmlvm.acl.common.subsystems.CommonMediaPlayer;
import org.xmlvm.acl.common.subsystems.CommonPowerManager;
import org.xmlvm.acl.common.subsystems.CommonPreferences;
import org.xmlvm.acl.common.subsystems.CommonProperties;
import org.xmlvm.acl.common.subsystems.CommonTextFieldDelegate;
import org.xmlvm.acl.common.subsystems.CommonWebBrowser;
import org.xmlvm.acl.common.subsystems.CommonWidgetFactory;
import org.xmlvm.acl.common.subsystems.CommonWindow;
import org.xmlvm.acl.wp7.subsystems.WP7Accelerometer;
import org.xmlvm.acl.wp7.subsystems.WP7Dispatcher;
import org.xmlvm.acl.wp7.subsystems.WP7FileSystem;
import org.xmlvm.acl.wp7.subsystems.WP7FontFactory;
import org.xmlvm.acl.wp7.subsystems.WP7PowerManager;
import org.xmlvm.acl.wp7.subsystems.WP7Preferences;
import org.xmlvm.acl.wp7.subsystems.WP7Properties;
import org.xmlvm.acl.wp7.subsystems.WP7WidgetFactory;
import org.xmlvm.acl.wp7.subsystems.WP7Window;

import android.hardware.SensorManager;
import android.location.LocationManager;
import android.media.MediaPlayer;
import android.view.Window;

/**
 *
 */
public class WP7API implements CommonDeviceAPI {
    
    private WP7FileSystem wp7FileSystem;
    private WP7Properties wp7Properties;
    private WP7WidgetFactory wp7WidgetFactory;
    private WP7FontFactory wp7FontFactory;
    private WP7PowerManager wp7PowerManager;
    private WP7Window wp7Window;

    public WP7API() {
        wp7FileSystem = new WP7FileSystem();
        wp7Properties = new WP7Properties();
        wp7WidgetFactory = new WP7WidgetFactory();
        wp7FontFactory = new WP7FontFactory();
        wp7PowerManager = new WP7PowerManager();
    }

    @Override
    public CommonFileSystem getFileSystem() {
        return wp7FileSystem;
    }

    @Override
    public CommonPreferences getPreferences() {
        return new WP7Preferences();
    }

    @Override
    public CommonAccelerometer getAccelerometer(SensorManager sensorManager) {
        return new WP7Accelerometer(sensorManager);
    }

    @Override
    public CommonProperties getProperties() {
        return wp7Properties;
    }

    @Override
    public CommonWidgetFactory getWidgetFactory() {
        return wp7WidgetFactory;
    }

    @Override
    public CommonDispatcher getDispatcher() {
        return new WP7Dispatcher();
    }

    @Override
    public CommonWindow getWindowInstance() {
        if (wp7Window == null) {
            wp7Window = new WP7Window();
        }
        return wp7Window;
    }

    @Override
    public CommonFontFactory getFontFactory() {
        return wp7FontFactory;
    }

    @Override
    public CommonPowerManager getPowerManager() {
        return wp7PowerManager;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.CommonDeviceAPI#getLocationManager(android.location.LocationManager)
     */
    @Override
    public CommonLocationManager getLocationManager(LocationManager locationManager) {
        // TODO Auto-generated method stub
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.CommonDeviceAPI#getWebBrowser()
     */
    @Override
    public CommonWebBrowser getWebBrowser() {
        // TODO Auto-generated method stub
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.CommonDeviceAPI#getTextFieldDelegate(android.view.Window)
     */
    @Override
    public CommonTextFieldDelegate getTextFieldDelegate(Window window) {
        // TODO Auto-generated method stub
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.CommonDeviceAPI#getMediaPlayer(android.media.MediaPlayer)
     */
    @Override
    public CommonMediaPlayer getMediaPlayer(MediaPlayer mediaPlayer) {
        // TODO Auto-generated method stub
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.CommonDeviceAPI#getCamera(android.hardware.Camera)
     */
    @Override
    public CommonCamera getCamera() {
        // TODO Auto-generated method stub
        return null;
    }

}
