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

package org.xmlvm.iphone;

import java.util.HashMap;
import java.util.Map;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSUserDefaults extends NSObject {

    private static NSUserDefaults nsUserDefaults = new NSUserDefaults();
    private Map<String, Object>   preferences    = new HashMap<String, Object>();


    public static NSUserDefaults standardUserDefaults() {
        return nsUserDefaults;
    }

    public Object objectForKey(String key) {
        return preferences.get(key);
    }

    public void setObject(Object value, String key) {
        preferences.put(key, value);
    }

    public void setInteger(int value, String key) {
        preferences.put(key, value);
    }

    public int integerForKey(String key) {
        return (Integer) preferences.get(key);
    }

    public void synchronize() {
        // do nothing
    }

    public void setBool(boolean value, String key) {
        preferences.put(key, value);
    }

    public boolean boolForKey(String key) {
        return (Boolean) preferences.get(key);
    }

    public void setFloat(float value, String key) {
        preferences.put(key, value);
    }

    public float floatForKey(String key) {
        return (Float) preferences.get(key);
    }

    public NSData dataForKey(String key) {
        return (NSData) preferences.get(key);
    }

    public String stringForKey(String key) {
        return (String) preferences.get(key);
    }

    public void remove(String key) {
        preferences.remove(key);
    }
};
