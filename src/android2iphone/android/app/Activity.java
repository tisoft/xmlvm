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

import org.xmlvm.iphone.NSObject;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIInterfaceOrientation;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.internal.ActivityManager;
import android.internal.Assert;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

/**
 * IPhone implementation of Android's Activity class.
 * 
 * @see http://developer.android.com/reference/android/app/Activity.html}
 */
public class Activity extends ContextThemeWrapper {

    public static final int  RESULT_CANCELED     = 0;
    public static final int  RESULT_OK           = -1;

    /*
     * States according to {@link
     * http://developer.motorola.com/docstools/library
     * /Android_Applications_for_Java_ME_Developers/}
     */
    private static final int STATE_UNINITIALIZED = 0;
    private static final int STATE_ACTIVE        = 1;
    private static final int STATE_PAUSED        = 2;
    private static final int STATE_STOPPED       = 3;
    private static final int STATE_DESTROYED     = 4;

    private int              state               = STATE_UNINITIALIZED;
    private Activity         parent;
    private Activity         child;
    private int              requestCode;
    private int              childRequestCode;
    private int              childResultCode     = RESULT_CANCELED;
    private Intent           childData;
    private Window           window;
    private int              screenOrientation   = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;

    public void xmlvmSetParent(Activity parent) {
        this.parent = parent;
    }

    public Activity xmlvmGetParent() {
        return this.parent;
    }

    public void xmlvmSetRequestCode(int requestCode) {
        this.requestCode = requestCode;
    }

    public void xmlvmSetChild(Activity child) {
        this.child = child;
    }

    private void xmlvmUnlinkActivity() {
        if (child == null) {
            // We have no child so set the parent as the new top activity
            ActivityManager.setTopActivity(parent);
        }
        if (parent != null) {
            parent.child = child;
        }
        if (child != null) {
            child.parent = parent;
        }
        parent = null;
        child = null;
    }

    public void xmlvmTransitToStateActive(Object savedInstanceState) {
        switch (state) {
        case STATE_UNINITIALIZED:
            NSObject.performSelectorOnMainThread(this, "xmlvmOnCreate", savedInstanceState, false);
            NSObject.performSelectorOnMainThread(this, "xmlvmOnStart", null, false);
            NSObject.performSelectorOnMainThread(this, "xmlvmOnResume", null, false);
            break;
        case STATE_PAUSED:
            NSObject.performSelectorOnMainThread(this, "xmlvmOnResume", null, false);
            break;
        case STATE_STOPPED:
            NSObject.performSelectorOnMainThread(this, "xmlvmOnRestart", null, false);
            NSObject.performSelectorOnMainThread(this, "xmlvmOnStart", null, false);
            NSObject.performSelectorOnMainThread(this, "xmlvmOnResume", null, false);
            break;
        default:
            Assert.FAIL("Bad transition from state: " + state);
            break;
        }
        state = STATE_ACTIVE;
    }

    public void xmlvmTransitToStatePaused() {
        switch (state) {
        case STATE_ACTIVE:
            NSObject.performSelectorOnMainThread(this, "xmlvmOnPause", null, false);
            break;
        case STATE_STOPPED:
            NSObject.performSelectorOnMainThread(this, "xmlvmOnRestart", null, false);
            NSObject.performSelectorOnMainThread(this, "xmlvmOnStart", null, false);
            break;
        default:
            Assert.FAIL("Bad transition from state: " + state);
            break;
        }
        state = STATE_PAUSED;
    }

    public void xmlvmTransitToStateStopped() {
        switch (state) {
        case STATE_ACTIVE:
            NSObject.performSelectorOnMainThread(this, "xmlvmOnPause", null, false);
            NSObject.performSelectorOnMainThread(this, "xmlvmOnStop", null, false);
            break;
        case STATE_PAUSED:
            NSObject.performSelectorOnMainThread(this, "xmlvmOnStop", null, false);
            break;
        default:
            Assert.FAIL("Bad transition from state: " + state);
            break;
        }
        state = STATE_STOPPED;
    }

    public void xmlvmTransitToStateDestroyed() {
        switch (state) {
        case STATE_ACTIVE:
            NSObject.performSelectorOnMainThread(this, "xmlvmOnPause", null, false);
            NSObject.performSelectorOnMainThread(this, "xmlvmOnStop", null, false);
            NSObject.performSelectorOnMainThread(this, "xmlvmOnDestroy", null, false);
            break;
        case STATE_PAUSED:
            NSObject.performSelectorOnMainThread(this, "xmlvmOnStop", null, false);
            NSObject.performSelectorOnMainThread(this, "xmlvmOnDestroy", null, false);
            break;
        case STATE_STOPPED:
            NSObject.performSelectorOnMainThread(this, "xmlvmOnDestroy", null, false);
            break;
        default:
            Assert.FAIL("Bad transition from state: " + state);
            break;
        }
        state = STATE_DESTROYED;
    }

    protected void onCreate(Bundle savedInstanceState) {
        window = new Window(this);
        onContentChanged();
    }

    public void xmlvmOnCreate(Object savedInstanceState) {
        onCreate((Bundle) savedInstanceState);
    }

    protected void onStart() {
        window.xmlvmSetHidden(false);
    }

    public void xmlvmOnStart(Object arg) {
        onStart();
    }

    protected void onRestart() {
    }

    public void xmlvmOnRestart(Object arg) {
        onRestart();
    }

    protected void onResume() {
    }

    public void xmlvmOnResume(Object arg) {
        onResume();
        window.xmlvmSetHidden(false);
    }

    protected void onPause() {
    }

    public void xmlvmOnPause(Object arg) {
        onPause();
    }

    protected void onStop() {
    }

    public void xmlvmOnStop(Object arg) {
        onStop();
        window.xmlvmSetHidden(true);
    }

    /**
     * Perform any final cleanup before an activity is destroyed. Can be
     * overridden by subclasses.
     */
    protected void onDestroy() {
    }

    public void xmlvmOnDestroy(Object arg) {
        onDestroy();
        window.xmlvmRemoveWindow();
        window = null;
        xmlvmUnlinkActivity();
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
    }

    public void xmlvmOnActivityResult(Object result) {
        onActivityResult(childRequestCode, childResultCode, childData);
    }

    protected void onSaveInstanceState(Bundle bundle) {
    }

    public void xmlvmOnSaveInstanceState(Object bundle) {
        onSaveInstanceState((Bundle) bundle);
    }

    public void setContentView(View view) {
        window.setContentView(view);
    }

    public void setContentView(int id) {
        window.setContentView(id);
    }

    public View findViewById(int id) {
        return window.findViewById(id);
    }

    /**
     * TODO: Implement for real.
     */
    public WindowManager getWindowManager() {
        return new WindowManager(this);
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

    public void startActivity(Intent intent) {
        ActivityManager.startActivity(this, intent);
    }

    public void startActivityForResult(Intent intent, int requestCode) {
        ActivityManager.startActivityForResult(this, intent, requestCode);
    }

    public final void setResult(int resultCode) {
        setResult(resultCode, null);
    }

    public final void setResult(int resultCode, Intent data) {
        parent.childRequestCode = requestCode;
        parent.childResultCode = resultCode;
        parent.childData = data;
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
        window.adjustFrameSize();
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
        return new SharedPreferences(mode);
    }

    /**
     * @return
     */
    protected Intent getIntent() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public LayoutInflater getLayoutInflater() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public void finish() {
        ActivityManager.destroyActivity(this);
    }

}
