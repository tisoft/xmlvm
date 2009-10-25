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

import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIInterfaceOrientation;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
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
    private Window             window;
    private int                screenOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;

    protected void onCreate(Bundle savedInstanceState) {
        window = new Window(this);
        onContentChanged();
    }

    public void xmlvmOnCreate(Bundle savedInstanceState) {
        onCreate(savedInstanceState);
    }

    protected void onResume() {
        // TODO Auto-generated method stub

    }

    protected void onPause() {
        // TODO Auto-generated method stub

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

    /**
     * Perform any final cleanup before an activity is destroyed. Can be
     * overridden by subclasses.
     */
    protected void onDestroy() {
    }

    public void xmlvmOnDestroy() {
        onDestroy();
    }

    /**
     * TODO: Implement for real.
     */
    public void startActivity(Intent intent) {
    }

    public void requestWindowFeature(int feature) {
        /*
         * TODO: can't handle jvm:lookupswitch
         * 
         * switch (feature) {
         * 
         * case Window.FEATURE_NO_TITLE: // TODO: This will remove the title
         * bar, but not get rid of the // status bar. On the iPhone we don't
         * have a title, but maybe we should // implement this as a
         * compatibility feature. Once we have it, this is the // place to
         * disable it. break; }
         */
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
            UIApplication.sharedApplication()
                    .setStatusBarOrientation(UIInterfaceOrientation.UIInterfaceOrientationLandscapeLeft);
            break;
        case ActivityInfo.SCREEN_ORIENTATION_PORTRAIT:
            UIApplication.sharedApplication()
                    .setStatusBarOrientation(UIInterfaceOrientation.UIInterfaceOrientationPortrait);
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
}
