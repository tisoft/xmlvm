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

    public Intent() {
        Assert.NOT_IMPLEMENTED();
    }

    public Intent(String action) {
        this.action = action;
    }

    public Intent(Context context, Class<?> clazz) {
        Assert.NOT_IMPLEMENTED();
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
