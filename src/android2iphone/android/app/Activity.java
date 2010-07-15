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

package android.app;

import java.lang.ref.WeakReference;

import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIInterfaceOrientation;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.internal.Assert;
import android.internal.TopActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.ViewGroup.LayoutParams;
import org.xmlvm.iphone.NSObject;

/**
 * IPhone implementation of Android's Activity class.
 * 
 * @see http://developer.android.com/reference/android/app/Activity.html}
 */
public class Activity extends ContextThemeWrapper {

    public static final int         RESULT_CANCELED     = 0;
    public static final int         RESULT_OK           = -1;

    /*
     * States according to {@link
     * http://developer.motorola.com/docstools/library
     * /Android_Applications_for_Java_ME_Developers/}
     */
    private static final int        STATE_UNINITIALIZED = 0;
    private static final int        STATE_ACTIVE        = 1;
    private static final int        STATE_PAUSED        = 2;
    private static final int        STATE_STOPPED       = 3;
    private static final int        STATE_DESTROYED     = 4;

    private int                     state               = STATE_UNINITIALIZED;
    private WeakReference<Activity> parent;
    private Activity                child;
    private Intent                  intent;
    private ComponentName           componentName;
    private int                     requestCode;
    private int                     resultCode;
    private Intent                  resultData;
    private Window                  window;
    private int                     screenOrientation   = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
    private boolean                 finishing           = false;

    public void xmlvmSetParent(Activity parent) {
        this.parent = new WeakReference<Activity>(parent);
        parent.child = this;
    }

    public final Activity getParent() {
        return this.parent == null ? null : this.parent.get();
    }

    public void xmlvmSetRequestCode(int requestCode) {
        this.requestCode = requestCode;
    }

    public void xmlvmSetIntent(Intent intent) {
        this.intent = intent;
    }

    public void xmlvmSetComponentName(ComponentName componentName) {
        this.componentName = componentName;
    }


    public void xmlvmCreate(Bundle savedInstanceState) {
        NSObject.performSelectorOnMainThread(this, "create", savedInstanceState, true);
    }

    public void xmlvmDestroy() {
        NSObject.performSelectorOnMainThread(this, "destroy", null, true);
    }

    private void create(Object savedInstanceState) {
        Activity prev = TopActivity.get();
        if (prev != null && prev.state == STATE_ACTIVE)
            prev.pause();

        TopActivity.set(this);
        window = new Window(this);
        setRequestedOrientation(screenOrientation);
        setResult(Activity.RESULT_CANCELED);
        onContentChanged();
        onCreate((Bundle)savedInstanceState);
        start();
        if (TopActivity.get() == this)
            resume();
    }

    private void start() {
        window.xmlvmSetHidden(false);
        onStart();
        state = STATE_PAUSED;
    }

    private void resume() {
        if (state == STATE_ACTIVE)
            return;
        if (state == STATE_STOPPED)
            start();
        window.xmlvmSetHidden(false);
        onResume();
        state = STATE_ACTIVE;
    }

    private void pause() {
        if (state == STATE_PAUSED)
            return;
        onPause();
        state = STATE_PAUSED;
    }

    private void stop() {
        if (state == STATE_STOPPED)
            return;
        if (state == STATE_ACTIVE)
            pause();
        window.xmlvmSetHidden(true);
        onStop();
        state = STATE_STOPPED;
    }

    private void destroy(Object unused) {
        if (state == STATE_DESTROYED)
            return;
        stop();
        onDestroy();
        if (window != null) {
            window.xmlvmRemoveWindow();
            window = null;
        }

        Activity theParent = getParent();
        if (child != null) {
            child.parent = null;
            if (theParent != null) {
                child.parent = new WeakReference<Activity>(theParent);
                theParent.child = child;
            }
        } else {
            theParent.child = null;
        }
        child = null;

        if (TopActivity.get() == this)
            TopActivity.set(null);
        if (theParent != null) {
            if (TopActivity.get() == null) {
                TopActivity.set(theParent);
                theParent.resume();
            }
            theParent.onActivityResult(requestCode, resultCode, resultData);
        }
        parent = null;
        state = STATE_DESTROYED;
    }

    /**
     * 
     * @param savedInstanceState
     *            unused as of now
     */
    protected void onCreate(Bundle savedInstanceState) {
    }

    protected void onStart() {
    }

    protected void onRestart() {
    }

    protected void onResume() {
    }

    protected void onPause() {
    }

    protected void onStop() {
    }

    /**
     * Perform any final cleanup before an activity is destroyed. Can be
     * overridden by subclasses.
     */
    protected void onDestroy() {
    }

    /**
     *
     * @param requestCode
     * @param resultCode
     *            unused as of now
     * @param data
     */
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
    }

    protected void onSaveInstanceState(Bundle bundle) {
    }

    public void setContentView(View view) {
        window.setContentView(view);
    }

    public void setContentView(int id) {
        window.setContentView(id);
    }

    public void addContentView(View view, LayoutParams params) {
        window.addContentView(view, params);
    }

    public View findViewById(int id) {
        return window.findViewById(id);
    }

    /**
     * Unimplemented on iPhone
     * 
     * @param streamType
     *            unused
     */
    public final void setVolumeControlStream(int streamType) {
        // There's nothing appropriate on the iPhone so this implementation
        // will remain empty
    }

    /**
     * TODO: Implement for real.
     */
    public WindowManager getWindowManager() {
        return new WindowManager();
    }

    /**
     * Can be overridden by subclasses.
     */
    public void onContentChanged() {
    }

    public void showDialog(int id) {
        Dialog dialog = onCreateDialog(id);
        if (dialog != null)
            dialog.show();
    }

    protected Dialog onCreateDialog(int id) {
        return null;
    }

    /**
     * Can be overridden by subclasses that want to create a menu.
     */
    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    /**
     * Can be overridden by subclasses that want to handle menu button presses.
     */
    public boolean onOptionsItemSelected(MenuItem item) {
        return true;
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        // TODO Auto-generated method stub
        return false;
    }

    public final void setResult(int resultCode) {
        setResult(resultCode, null);
    }

    public final void setResult(int resultCode, Intent data) {
        this.resultCode = resultCode;
        this.resultData = data;
    }

    public void requestWindowFeature(int feature) {
        switch (feature) {
        case Window.FEATURE_NO_TITLE:
            // TODO: This will remove the title
            // bar, but not get rid of the status bar. On the iPhone we don't
            // have a title, but maybe we should implement this as a
            // compatibility feature. Once we have it, this is the place to
            // disable it.
            break;
        default:
            Assert.NOT_IMPLEMENTED();
        }
    }

    /**
     * Retrieve the current {@link Window} for the activity.
     */
    public Window getWindow() {
        return window;
    }

    /**
     * Change the desired orientation of this activity.
     */
    public void setRequestedOrientation(int requestedOrientation) {
        screenOrientation = requestedOrientation;
        switch (requestedOrientation) {
        case ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE:
            UIApplication.sharedApplication().setStatusBarOrientation(
                    UIInterfaceOrientation.LandscapeLeft);
            break;
        case ActivityInfo.SCREEN_ORIENTATION_PORTRAIT:
            UIApplication.sharedApplication().setStatusBarOrientation(
                    UIInterfaceOrientation.Portrait);
            break;
        }
    }

    public void xmlvmSetRequestedOrientation(int requestedOrientation) {
        screenOrientation = requestedOrientation;
    }

    public int getRequestedOrientation() {
        return screenOrientation;
    }

    /**
     * Retrieve a {@link SharedPreferences} object for accessing preferences
     * that are private to this activity.
     * 
     * @param mode
     *            Operating mode. Use {@link Context#MODE_PRIVATE} for the
     *            default operation, {@link Context#MODE_WORLD_READABLE} and
     *            {@link Context#MODE_WORLD_WRITEABLE} to control permissions.
     * 
     * @return Returns the single SharedPreferences instance that can be used to
     *         retrieve and modify the preference values.
     */
    public SharedPreferences getPreferences(int mode) {
        return getSharedPreferences(this.getClass().getName(), mode);
    }

    /**
     * @return
     */
    protected Intent getIntent() {
        return intent;
    }

    public ComponentName getComponentName() {
        return componentName;
    }

    public LayoutInflater getLayoutInflater() {
        return (LayoutInflater) getSystemService(LAYOUT_INFLATER_SERVICE);
    }

    public void finish() {
        finishing = true;
        xmlvmDestroy();
        finishing = false;
    }

    public boolean isFinishing() {
        return finishing;
    }

    public void onConfigurationChanged(Configuration newConfig) {
        Assert.NOT_IMPLEMENTED();
    }

    public boolean onMenuItemSelected(int featureId, MenuItem item) {
        Assert.NOT_IMPLEMENTED();
        return false;
    }

    public MenuInflater getMenuInflater() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public void setTitle(CharSequence title) {
        Assert.NOT_IMPLEMENTED();
    }

    @Override
    public String getString(int id) {
        return this.getResources().getText(id);
    }
}
