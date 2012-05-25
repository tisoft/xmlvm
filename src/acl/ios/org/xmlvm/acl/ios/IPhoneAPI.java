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

package org.xmlvm.acl.ios;

import org.xmlvm.acl.common.CommonDeviceAPI;
import org.xmlvm.acl.common.subsystems.CommonAccelerometer;
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
import org.xmlvm.acl.ios.subsystems.IPhoneAccelerometer;
import org.xmlvm.acl.ios.subsystems.IPhoneDispatcher;
import org.xmlvm.acl.ios.subsystems.IPhoneFileSystem;
import org.xmlvm.acl.ios.subsystems.IPhoneFontFactory;
import org.xmlvm.acl.ios.subsystems.IPhoneLocationManager;
import org.xmlvm.acl.ios.subsystems.IPhoneMediaPlayer;
import org.xmlvm.acl.ios.subsystems.IPhonePowerManager;
import org.xmlvm.acl.ios.subsystems.IPhonePreferences;
import org.xmlvm.acl.ios.subsystems.IPhoneProperties;
import org.xmlvm.acl.ios.subsystems.IPhoneTextFieldDelegate;
import org.xmlvm.acl.ios.subsystems.IPhoneWebView;
import org.xmlvm.acl.ios.subsystems.IPhoneWidgetFactory;
import org.xmlvm.acl.ios.subsystems.IPhoneWindow;

import android.hardware.SensorManager;
import android.location.LocationManager;
import android.media.MediaPlayer;
import android.view.Window;

/**
 *
 */
public class IPhoneAPI implements CommonDeviceAPI {

    private IPhoneFileSystem iphoneFileSystem;
    private IPhoneProperties iphoneProperties;
    private IPhoneWidgetFactory iphoneWidgetFactory;
    private IPhoneFontFactory iphoneFontFactory;
    private IPhonePowerManager iphonePowerManager;

    public IPhoneAPI() {
        iphoneFileSystem = new IPhoneFileSystem();
        iphoneProperties = new IPhoneProperties();
        iphoneWidgetFactory = new IPhoneWidgetFactory();
        iphoneFontFactory = new IPhoneFontFactory();
        iphonePowerManager = new IPhonePowerManager();
    }
    
    @Override
    public CommonFileSystem getFileSystem() {
        return this.iphoneFileSystem;
    }
    
    @Override
    public CommonPreferences getPreferences() {
        return new IPhonePreferences();
    }
    
    @Override
    public CommonAccelerometer getAccelerometer(SensorManager sensorManager) {
        return new IPhoneAccelerometer(sensorManager);
    }
    
    @Override
    public CommonProperties getProperties() {
        return this.iphoneProperties;
    }

    @Override
    public CommonWidgetFactory getWidgetFactory() {
        return this.iphoneWidgetFactory;
    }

    @Override
    public CommonDispatcher getDispatcher() {
        return new IPhoneDispatcher();
    }

    @Override
    public CommonWindow getWindow() {
        return new IPhoneWindow();
    }

    @Override
    public CommonFontFactory getFontFactory() {
        return this.iphoneFontFactory;
    }

    @Override
    public CommonPowerManager getPowerManager() {
        return this.iphonePowerManager;
    }

    @Override
    public CommonLocationManager getLocationManager(LocationManager locationManager) {
        return new IPhoneLocationManager(locationManager);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.CommonDeviceAPI#getWebView()
     */
    @Override
    public CommonWebBrowser getWebBrowser() {
        return new IPhoneWebView();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.CommonDeviceAPI#getTextFieldDelegate()
     */
    @Override
    public CommonTextFieldDelegate getTextFieldDelegate(Window window) {
        return new IPhoneTextFieldDelegate(window);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.CommonDeviceAPI#getMediaPlayer(android.media.MediaPlayer)
     */
    @Override
    public CommonMediaPlayer getMediaPlayer(MediaPlayer mediaPlayer) {
        return new IPhoneMediaPlayer(mediaPlayer);
    }

}
