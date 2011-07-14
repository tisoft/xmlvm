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

package org.xmlvm.tutorial.android.activity;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;

/**
 * This class serves as the common base class for both BlueActivity and
 * YellowActity. Its only purpose is to override all Activity lifecycle methods.
 * When running the ActivitySwitch application, the invocation of the various
 * lifecycle methods will be logged on the debugging console. In particular note
 * the interleaving of methods from BlueActivity to YellowActivity as control is
 * passed back and forth between the two activities. Refer to this page for a
 * documentation of the various methods:
 * http://developer.android.com/reference/android/app/Activity.html
 */
public abstract class LoggingActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d(getClass().getName(), "onCreate() called");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.d(getClass().getName(), "onDestroy() called");
    }

    @Override
    protected void onPause() {
        super.onPause();
        Log.d(getClass().getName(), "onPause() called");
    }

    @Override
    protected void onRestart() {
        super.onRestart();
        Log.d(getClass().getName(), "onRestart() called");
    }

    @Override
    protected void onResume() {
        super.onResume();
        Log.d(getClass().getName(), "onResume() called");
    }

    @Override
    protected void onStart() {
        super.onStart();
        Log.d(getClass().getName(), "onStart() called");
    }

    @Override
    protected void onStop() {
        super.onStop();
        Log.d(getClass().getName(), "onStop() called");
    }

}
