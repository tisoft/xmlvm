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

import java.util.Stack;

import org.xmlvm.iphone.UIApplication;

import android.app.Activity;
import android.content.Intent;

/**
 * @author arno
 * 
 */
public class ActivityManager extends UIApplication {

    private static AndroidManifest manifest;
    private static Stack<Activity> activityStack = new Stack<Activity>();
    private static Activity        topActivity;

    private static void pushNewActivity(Activity activity) {
        topActivity = activity;
        activityStack.push(activity);
    }

    public static Activity getTopActivity() {
        return topActivity;
    }

    @Override
    public void applicationDidFinishLaunching(UIApplication app) {
        topActivity.xmlvmOnCreate(null);
    }

    @Override
    public void applicationWillTerminate(UIApplication app) {
        topActivity.xmlvmOnDestroy();
    }

    public static void startActivity(Intent intent) {
        String activityName = manifest.getActivityName(intent.xmlvmGetAction());
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
        pushNewActivity(newActivity);
        // The first activity will be launched via UIApplication.main and subsequent call
        // to applicationDidFinishLaunching. Only for following activities we call xmlvmOnCreate()
        // here directly.
        if (activityStack.size() > 1) {
            newActivity.xmlvmOnCreate(null);
        }
    }

    public static void startActivityForResult(Intent intent, int requestCode) {
        // TODO not for real
        startActivity(intent);
    }

    public static void bootstrapMainActivity() {
        manifest = new AndroidManifest();
        startActivity(new Intent("android.intent.action.MAIN"));
        UIApplication.main(null, ActivityManager.class);
    }

}
