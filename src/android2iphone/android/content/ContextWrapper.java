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

package android.content;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.internal.AndroidAppLauncher;
import android.internal.AndroidManifest;
import android.internal.Assert;
import android.os.Looper;

public class ContextWrapper extends Context {

    private Resources resources = new Resources(this);

    @Override
    public SharedPreferences getSharedPreferences(String name, int mode) {
        // TODO what to do with name?
        return new SharedPreferences(mode);
    }

    @Override
    public Resources getResources() {
        return resources;
    }

    @Override
    public String getPackageName() {
        return AndroidManifest.getPackageName();
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

    @Override
    public Context getApplicationContext() {
        // TODO this is probably not right
        return AndroidAppLauncher.getApplication();
    }

    @Override
    public FileInputStream openFileInput(String name) throws FileNotFoundException {
        return new FileInputStream(name);
    }

    @Override
    public FileOutputStream openFileOutput(String name, int mode) throws FileNotFoundException {
        // TODO what to do with mode?
        return new FileOutputStream(name);
    }

    @Override
    public boolean deleteFile(String name) {
        return new File(name).delete();
    }

    public Looper getMainLooper() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public ContentResolver getContentResolver() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public File getFileStreamPath(String name) {
        return new File(name);
    }
}
