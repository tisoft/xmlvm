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

package org.xmlvm.acl.wp7.subsystems;

import org.xmlvm.acl.common.subsystems.CommonPreferences;

import Compatlib.System.Boolean;
import Compatlib.System.Integer;
import Compatlib.System.IO.IsolatedStorage.IsolatedStorageSettings;
import android.internal.Assert;

/**
 *
 */
public class WP7Preferences implements CommonPreferences {

    private IsolatedStorageSettings settings;
    
    public WP7Preferences() {
        this.settings = IsolatedStorageSettings.getApplicationSettings();
    }
    
    @Override
    public void commit() {
        settings.Save();
    }

    @Override
    public void putBoolean(boolean value, String key) {
        settings.Add(new Compatlib.System.String(key), new Boolean(value));
    }

    @Override
    public void putFloat(float value, String key) {
        Assert.NOT_IMPLEMENTED();
    }

    @Override
    public void putInt(int value, String key) {
        settings.Add(new Compatlib.System.String(key), value);
    }

    @Override
    public void putString(String value, String key) {
        Assert.NOT_IMPLEMENTED();
    }

    @Override
    public void remove(String key) {
        Assert.NOT_IMPLEMENTED();
    }

    @Override
    public boolean getBoolean(String key) {
        boolean ret = false;
        settings.TryGetValue(new Compatlib.System.String(key), new Boolean(ret));
        return ret;
    }

    @Override
    public float getFloat(String key) {
        Assert.NOT_IMPLEMENTED();
        return 0;
    }

    @Override
    public String getString(String key) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    @Override
    public int getInt(String key) {
        int ret = 0;
        settings.TryGetValue(new Compatlib.System.String(key), new Integer(ret));
        return ret;
    }

    @Override
    public boolean contains(String key) {
        return settings.Contains(new Compatlib.System.String(key));
    }

}
