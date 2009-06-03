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

package org.xmlvm.iphone.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import org.xmlvm.iphone.UIApplication;



/**
 * Wiring code for launching an Android Activity inside the iPhone simulator
 */
public class AndroidAppLauncher
{

    /**
     * @TODO: How can we specify this class in build.xml?
     */
    public static final String ANDROID_FIREWORKS_CLASS = "org.xmlvm.demo.afireworks.AndroidFireworks";



    public static void main(String[] args)
        throws ClassNotFoundException, SecurityException,
        NoSuchMethodException, IllegalArgumentException,
        InstantiationException, IllegalAccessException,
        InvocationTargetException
    {
        String mainActivity = ANDROID_FIREWORKS_CLASS;
        if (args.length != 1) {
            System.err
                    .println("----------------------------------------------------------------");
            System.err
                    .println("Usage: AndroidAppLauncher <full android activity classname>.");
            System.err.println("WARNING. Using default class: "
                    + ANDROID_FIREWORKS_CLASS);
            System.err
                    .println("----------------------------------------------------------------");
        }
        else {
            mainActivity = args[0];
        }

        System.out.println("MAIN ACTIVITY: " + mainActivity);
        Class<?> androidActivityClazz = Class.forName(mainActivity);
        Object theAndroidActivity = androidActivityClazz.newInstance();
        Class<?> androidImplClazz = Class
                .forName("android.app.ActivityWrapper");
        Class<?> activityClazz = Class.forName("android.app.Activity");
        Class<?>[] intArgsClass = new Class<?>[] {activityClazz};
        Method m = androidImplClazz.getMethod("setActivity", intArgsClass);
        m.invoke(null, theAndroidActivity);
        UIApplication.main(args, androidImplClazz);
    }
}
