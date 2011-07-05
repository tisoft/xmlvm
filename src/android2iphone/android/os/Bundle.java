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

package android.os;

import java.util.HashMap;

import android.internal.Assert;

public class Bundle {

    private HashMap<String, Object> map = new HashMap<String, Object>();

    public int getInt(String name) {
        return (Integer) map.get(name);
    }

    public void putInt(String name, int value) {
        map.put(name, value);
    }

    public long getLong(String name) {
        return (Long) map.get(name);
    }

    public void putLong(String name, long value) {
        map.put(name, value);
    }

    public boolean getBoolean(String name) {
        Assert.NOT_IMPLEMENTED();
        return false;
    }

    public void putBoolean(String name, boolean value) {
        Assert.NOT_IMPLEMENTED();
    }

    public double getDouble(String name) {
        Assert.NOT_IMPLEMENTED();
        return 0.0;
    }

    public void putDouble(String name, double value) {
        Assert.NOT_IMPLEMENTED();
    }

    public String getString(String name) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public void putString(String name, String value) {
        Assert.NOT_IMPLEMENTED();
    }
}
