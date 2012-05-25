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

package org.xmlvm.acl.ios.subsystems;

import org.xmlvm.acl.common.subsystems.CommonPreferences;
import org.xmlvm.iphone.NSUserDefaults;

/**
 *
 */
public class IPhonePreferences implements CommonPreferences {

    private NSUserDefaults preferences;
    
    public IPhonePreferences() {
        preferences = NSUserDefaults.standardUserDefaults();
    }
    
    @Override
    public void commit() {
        preferences.synchronize();
    }

    @Override
    public void putBoolean(boolean value, String key) {
        preferences.setBool(value, key);
    }

    @Override
    public void putFloat(float value, String key) {
        preferences.setFloat(value, key);
    }

    @Override
    public void putInt(int value, String key) {
        preferences.setInteger(value, key);
    }

    @Override
    public void putString(String value, String key) {
        preferences.setObject(value, key);
    }

    @Override
    public void remove(String key) {
        preferences.remove(key);
    }

    @Override
    public boolean getBoolean(String key) {
        return preferences.boolForKey(key);
    }

    @Override
    public float getFloat(String key) {
        return preferences.floatForKey(key);
    }

    @Override
    public String getString(String key) {
        return preferences.stringForKey(key);
    }

    @Override
    public int getInt(String key) {
        return preferences.integerForKey(key);
    }

    @Override
    public boolean contains(String key) {
        return preferences.objectForKey(key) != null;
    }

}
