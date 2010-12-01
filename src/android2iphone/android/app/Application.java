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

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIWindow;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.ContextWrapper;
import android.internal.TopActivity;

public class Application extends ContextWrapper {

    private UIWindow topLevelWindow;


    public void onCreate() {
        // Important: the UIWindow instance should *not* be created in the
        // constructor of class Application because it will then be created
        // before UIAppication exists. That seems to be illegal in iOS.
        topLevelWindow = new UIWindow();
        CGRect rect = UIScreen.mainScreen().getBounds();
        topLevelWindow.setFrame(rect);
        topLevelWindow.makeKeyAndVisible();
        startActivity(new Intent("android.intent.action.MAIN"));
    }

    public void onTerminate() {
        while (TopActivity.get() != null)
            TopActivity.get().xmlvmDestroy();
    }

    public void onLowMemory() {
    }

    public void onConfigurationChanged(Configuration newConfig) {
        // Configuration doesn't change in iPhone
    }

    public UIWindow xmlvmGetTopLevelWindow() {
        return topLevelWindow;
    }
}
