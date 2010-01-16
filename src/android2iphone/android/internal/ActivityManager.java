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

package android.internal;

import org.xmlvm.iphone.NSObject;
import org.xmlvm.iphone.UIApplication;

import android.app.Activity;
import android.content.Intent;

/**
 * @author arno
 * 
 */
public class ActivityManager extends UIApplication {

    private static AndroidManifest manifest;
    private static Activity        topActivity;

    public static void setTopActivity(Activity activity) {
        topActivity = activity;
    }

    public static Activity getTopActivity() {
        return topActivity;
    }

    public static String getApplicationPackageName() {
        return manifest.appPackage;
    }

    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        topActivity.xmlvmTransitToStateActive(null);
    }

    @Override
    public void applicationWillTerminate(UIApplication app) {
        while (topActivity != null) {
            topActivity.xmlvmTransitToStateDestroyed(true);
        }
    }

    private static String checkForBuiltinActivity(String action) {
        if (action.equals(Intent.ACTION_VIEW)) {
            return "android.internal.WebViewActivity";
        }
        return null;
    }

    public static void startActivityForResult(Activity parent, Intent intent, int requestCode) {
        if (topActivity != null) {
            // Pause the current activity
            topActivity.xmlvmTransitToStatePaused();
        }

        String action = intent.xmlvmGetAction();
        AndroidManifest.Activity activityInfo = manifest.getActivity(action);
        String activityName = activityInfo.className;
        if (activityName == null) {
            activityName = checkForBuiltinActivity(action);
        }
        Class<?> androidActivityClazz;
        Activity newActivity = null;
        try {
            androidActivityClazz = Class.forName(activityName);
            newActivity = (Activity) androidActivityClazz.newInstance();
        } catch (ClassNotFoundException e) {
            Assert.FAIL("Couldn't start activity");
        } catch (InstantiationException e) {
            Assert.FAIL("Couldn't start activity");
        } catch (IllegalAccessException e) {
            Assert.FAIL("Couldn't start activity");
        }
        newActivity.xmlvmSetParent(parent);
        newActivity.xmlvmSetRequestCode(requestCode);
        newActivity.xmlvmSetIntent(intent);
        
        if (activityInfo != null) {
            newActivity.xmlvmSetRequestedOrientation(activityInfo.screenOrientation);
        }
        
        // The first activity will be launched via UIApplication.main and
        // subsequent call to applicationDidFinishLaunching. Only for following
        // activities we call xmlvmOnCreate() here directly.
        if (topActivity != null) {
            topActivity.xmlvmSetChild(newActivity);
            newActivity.xmlvmTransitToStateActive(null);
        }
        setTopActivity(newActivity);
    }

    public static void startActivity(Activity parent, Intent intent) {
        startActivityForResult(parent, intent, -1);
    }

    public static void bootstrapMainActivity() {
        manifest = new AndroidManifest();
        startActivity(null, new Intent("android.intent.action.MAIN"));
        UIApplication.main(null, ActivityManager.class);
    }

}
