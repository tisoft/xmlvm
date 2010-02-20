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

package android.context;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Resources;

public class ContextWrapper extends Context {

    private Resources resources = new Resources(this);

    public SharedPreferences getSharedPreferences(String name, int mode) {
        // TODO what to do with name?
        return new SharedPreferences(mode);
    }

    @Override
    public Resources getResources() {
        return resources;
    }

    /*
     * (non-Javadoc)
     * 
     * @see android.content.Context#getAssets()
     */
    @Override
    public AssetManager getAssets() {
        return new AssetManager();
    }

    public Context getApplicationContext() {
        // TODO this is probably not right
        return this;
    }

    public FileInputStream openFileInput(String name) throws FileNotFoundException {
        return new FileInputStream(name);
    }

    public FileOutputStream openFileOutput(String name, int mode) throws FileNotFoundException {
        // TODO what to do with mode?
        return new FileOutputStream(name);
    }

    public boolean deleteFile(String name) {
        return new File(name).delete();
    }
}
