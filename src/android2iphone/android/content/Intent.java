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

import java.io.Serializable;

import android.internal.Assert;
import android.net.Uri;
import android.os.Bundle;

public class Intent {
    public static final String ACTION_VIEW   = "android.intent.action.VIEW";
    public static final String ACTION_SEND   = "android.intent.action.SEND";
    public static final String ACTION_DIAL   = "android.intent.action.DIAL";

    /**
     * A constant string holding the desired subject line of a message.
     */
    public static final String EXTRA_SUBJECT = "android.intent.extra.SUBJECT";

    /**
     * A constant CharSequence that is associated with the Intent, used with
     * {@link #ACTION_SEND} to supply the literal data to be sent. Note that
     * this may be a styled CharSequence, so you must use
     * {@link Bundle#getCharSequence(String) Bundle.getCharSequence()} to
     * retrieve it.
     */
    public static final String EXTRA_TEXT    = "android.intent.extra.TEXT";

    private String             action;
    private Uri                uri;
    private Bundle             extras;
    private ComponentName      componentName;

    public Intent() {
    }

    public Intent(String action) {
        this.action = action;
    }

    public Intent(Context context, Class<?> clazz) {
        String className = clazz.getName();
        int lastDot = className.lastIndexOf('.');

        String pkgName = null;
        if (lastDot > -1) {
            pkgName = className.substring(0, lastDot);
        } else {
            pkgName = "";
        }

        componentName = new ComponentName(pkgName, className
                .substring(className.lastIndexOf('.') + 1));
    }

    public String getAction() {
        return action;
    }

    public Uri xmlvmGetUri() {
        return uri;
    }

    public Intent(String action, Uri uri) {
        this.action = action;
        this.uri = uri;
    }

    public void setData(Uri uri) {
        this.uri = uri;
    }

    public Bundle getExtras() {
        return extras;
    }

    public Intent putExtra(String name, int value) {
        if (extras == null) {
            extras = new Bundle();
        }
        extras.putInt(name, value);
        return this;
    }

    public Intent putExtra(String name, long value) {
        if (extras == null) {
            extras = new Bundle();
        }
        extras.putLong(name, value);
        return this;
    }

    public Uri getData() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public String getDataString() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public double getDoubleExtra(String name, double defaultValue) {
        Assert.NOT_IMPLEMENTED();
        return 0.0;
    }

    public String getStringExtra(String name) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public static Intent createChooser(Intent target, CharSequence title) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public ComponentName getComponentName() {
        return componentName;
    }

    public Intent putExtra(String name, String value) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public void setType(String type) {
        Assert.NOT_IMPLEMENTED();
    }

    public Intent setAction(String action) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public Intent setDataAndType(Uri data, String type) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public boolean getBooleanExtra(String name, boolean defaultValue) {
        Assert.NOT_IMPLEMENTED();
        return false;
    }

    public Intent putExtra(String name, Serializable value) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }
}
