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

package org.xmlvm.acl.common;

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

import android.hardware.SensorManager;
import android.location.LocationManager;
import android.media.MediaPlayer;
import android.view.Window;

/**
 *
 */
public interface CommonDeviceAPI {

    public CommonFileSystem getFileSystem();
    public CommonPreferences getPreferences();
    public CommonAccelerometer getAccelerometer(SensorManager sensorManager);
    public CommonProperties getProperties();
    public CommonWidgetFactory getWidgetFactory();
    public CommonDispatcher getDispatcher();
    public CommonWindow getWindowInstance();
    public CommonFontFactory getFontFactory();
    public CommonPowerManager getPowerManager();
    public CommonLocationManager getLocationManager(LocationManager locationManager);
    public CommonWebBrowser getWebBrowser();
    public CommonTextFieldDelegate getTextFieldDelegate(Window window);
    public CommonMediaPlayer getMediaPlayer(MediaPlayer mediaPlayer);
    
}
