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

import org.xmlvm.iphone.NSNotification;
import org.xmlvm.iphone.UIApplication;

public class ActivityImpl extends UIApplication {
  public static ActivityImpl rootApp;
  public Activity parent;

  public ActivityImpl(String activityClassName) {
    try {
      Class<?> appClass = Class.forName(activityClassName);
      Activity theApp = (Activity) appClass.newInstance();
      theApp.myIphoneWrapper = this;
      parent = theApp;
      applicationDidFinishLaunching(null);
    } catch (ClassNotFoundException e) {
      e.printStackTrace();
    } catch (InstantiationException e) {
      e.printStackTrace();
    } catch (IllegalAccessException e) {
      e.printStackTrace();
    }
  }

  public void applicationDidFinishLaunching(NSNotification aNotification) {
    parent.onCreate(null);
  }
}