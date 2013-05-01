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

package org.xmlvm.acl.sdl.subsystems;

import java.util.HashMap;
import java.util.Map;

import org.xmlvm.acl.common.subsystems.CommonPreferences;

import android.internal.Assert;

/**
 *
 */
public class SDLPreferences implements CommonPreferences {
    private Map<String, Boolean> booleans = new HashMap<String,Boolean>();
    private Map<String, String> strings = new HashMap<String,String>();
    private Map<String, Integer> integers = new HashMap<String,Integer>();
    private Map<String, Float> floats = new HashMap<String,Float>();

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonPreferences#commit()
     */
    @Override
    public void commit() {
        //TODO: Persist? 
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonPreferences#contains(java.lang.String)
     */
    @Override
    public boolean contains(String key) {
        return booleans.containsKey(key) || strings.containsKey(key) || integers.containsKey(key)
                || floats.containsKey(key);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonPreferences#getBoolean(java.lang.String)
     */
    @Override
    public boolean getBoolean(String key) {
        return booleans.get(key);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonPreferences#getFloat(java.lang.String)
     */
    @Override
    public float getFloat(String key) {
        return floats.get(key);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonPreferences#getInt(java.lang.String)
     */
    @Override
    public int getInt(String key) {
        return integers.get(key);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonPreferences#getString(java.lang.String)
     */
    @Override
    public String getString(String key) {
        return strings.get(key);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonPreferences#putBoolean(boolean, java.lang.String)
     */
    @Override
    public void putBoolean(boolean value, String key) {
        booleans.put(key, value);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonPreferences#putFloat(float, java.lang.String)
     */
    @Override
    public void putFloat(float value, String key) {
        floats.put(key, value);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonPreferences#putInt(int, java.lang.String)
     */
    @Override
    public void putInt(int value, String key) {
        integers.put(key, value);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonPreferences#putString(java.lang.String, java.lang.String)
     */
    @Override
    public void putString(String value, String key) {
        strings.put(key, value);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.acl.common.subsystems.CommonPreferences#remove(java.lang.String)
     */
    @Override
    public void remove(String key) {
        if (booleans.containsKey(key)) booleans.remove(key);
        if (integers.containsKey(key)) integers.remove(key);
        if (strings.containsKey(key))  strings.remove(key);
        if (floats.containsKey(key))   floats.remove(key);
    }

}
