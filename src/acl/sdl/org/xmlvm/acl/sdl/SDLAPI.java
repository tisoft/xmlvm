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

package org.xmlvm.acl.sdl;

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
import org.xmlvm.acl.sdl.subsystems.SDLAccelerometer;
import org.xmlvm.acl.sdl.subsystems.SDLDispatcher;
import org.xmlvm.acl.sdl.subsystems.SDLFileSystem;
import org.xmlvm.acl.sdl.subsystems.SDLFontFactory;
import org.xmlvm.acl.sdl.subsystems.SDLPowerManager;
import org.xmlvm.acl.sdl.subsystems.SDLPreferences;
import org.xmlvm.acl.sdl.subsystems.SDLProperties;
import org.xmlvm.acl.sdl.subsystems.SDLTextFieldDelegate;
import org.xmlvm.acl.sdl.subsystems.SDLWidgetFactory;
import org.xmlvm.acl.sdl.subsystems.SDLWindow;

import sdljava.SDLException;
import sdljava.SDLMain;
import sdljava.ttf.SDLTTF;
import android.hardware.SensorManager;
import android.internal.Assert;
import android.location.LocationManager;
import android.media.MediaPlayer;
import android.view.Window;

/**
 *
 */
public class SDLAPI implements CommonDeviceAPI {

    private SDLFileSystem fileSystem;
    private SDLProperties properties;
    private SDLWidgetFactory widgetFactory;
    private SDLDispatcher dispatcher;
    private SDLFontFactory fontFactory;
    private SDLPreferences preferences;
    private SDLPowerManager powerManager;
    private SDLAccelerometer accelerometer;
    
    private SDLWindow keyWindow;

    public SDLAPI() {
        fileSystem = new SDLFileSystem();
        properties = new SDLProperties();
        widgetFactory = new SDLWidgetFactory(this);
        dispatcher = new SDLDispatcher();
        fontFactory = new SDLFontFactory();
        preferences = new SDLPreferences();
        powerManager = new SDLPowerManager();
        accelerometer = new SDLAccelerometer();
        
        // TODO proper intialization. Perhaps this should happen in main()
        try {
            if (SDLMain.wasInit(SDLMain.SDL_INIT_VIDEO) == 0) {
                SDLMain.init(SDLMain.SDL_INIT_VIDEO);
            }

            SDLTTF.init();
        } catch (SDLException sdle) {
            //TODO: Log?
        }
    }

    @Override
    public CommonFileSystem getFileSystem() {
        return fileSystem;
    }

    @Override
    public CommonPreferences getPreferences() {
        return preferences;
    }

    @Override
    public CommonAccelerometer getAccelerometer(SensorManager sensorManager) {
        return accelerometer;
    }

    @Override
    public CommonProperties getProperties() {
        return properties;
    }

    @Override
    public CommonWidgetFactory getWidgetFactory() {
        return widgetFactory;
    }

    @Override
    public CommonDispatcher getDispatcher() {
        return dispatcher;
    }

    @Override
    public CommonWindow getWindowInstance() {
        return new SDLWindow(this);        
    }

    @Override
    public CommonFontFactory getFontFactory() {
        return fontFactory;
    }

    @Override
    public CommonPowerManager getPowerManager() {
        return powerManager;
    }

    @Override
    public CommonLocationManager getLocationManager(LocationManager locationManager) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    @Override
    public CommonWebBrowser getWebBrowser() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    @Override
    public CommonTextFieldDelegate getTextFieldDelegate(Window window) {
        return new SDLTextFieldDelegate(window);
    }

    @Override
    public CommonMediaPlayer getMediaPlayer(MediaPlayer mediaPlayer) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    @Override
    public CommonCamera getCamera() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public SDLWindow getKeyWindow() {
        return keyWindow;
    }
    
    public void setKeyWindow(SDLWindow w) {
        keyWindow = w;
    }
}
