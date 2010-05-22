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

package org.xmlvm.iphone;

import java.util.HashMap;
import java.util.Map;

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
