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

import java.util.HashMap;
import java.util.Map;

import org.xmlvm.iphone.NSBundle;
import org.xmlvm.iphone.NSData;
import org.xmlvm.iphone.NSXMLParser;
import org.xmlvm.iphone.NSXMLParserDelegate;

import android.R;
import android.content.pm.ActivityInfo;

class AndroidManifestParser extends NSXMLParserDelegate {

    private String                   prefix = "";
    private AndroidManifest          manifest;
    private AndroidManifest.Activity currentActivity;

    public AndroidManifestParser(AndroidManifest manifest) {
        this.manifest = manifest;
    }

    @Override
    public void didStartMappingPrefix(NSXMLParser parser, String prefix, String namespaceURI) {
        if (namespaceURI.equals("http://schemas.android.com/apk/res/android")) {
            this.prefix = prefix + ":";
        }
    }

    @Override
    public void didStartElement(NSXMLParser parser, String elementName, String namespaceURI,
            String qualifiedName, Map<String, String> attributes) {
        if (qualifiedName.equals("application")) {
            // For now simply check for the Theme.Light string to enable NATIVE
            // theme instead of the dark Android theme
            String theme = attributes.get(prefix + "theme");
            if (theme != null && theme.equals("@android:style/Theme.Light")) {
                manifest.appTheme = R.style.Theme_Light;
            }
        }
        if (qualifiedName.equals("manifest")) {
            manifest.appPackage = attributes.get("package");
        }
        if (qualifiedName.equals("activity")) {
            currentActivity = new AndroidManifest.Activity();
            String className = attributes.get(prefix + "name");
            if (className.indexOf('.') == -1) {
                className = manifest.appPackage + '.' + className;
            }
            if (className.charAt(0) == '.') {
                className = manifest.appPackage + className;
            }
            currentActivity.className = className;

            String screenOrientation = attributes.get(prefix + "screenOrientation");
            if (screenOrientation == null) {
                return;
            }
            if (screenOrientation.equals("landscape")) {
                currentActivity.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
            } else if (screenOrientation.equals("portrait")) {
                currentActivity.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
            } else {
                Assert.NOT_IMPLEMENTED();
            }
        }
        if (qualifiedName.equals("action")) {
            String action = attributes.get(prefix + "name");
            manifest.addActivity(action, currentActivity);
        }
    }

    @Override
    public void didEndElement(NSXMLParser parser, String elementName, String namespaceURI,
            String qualifiedName) {
    }
}

/**
 * @author arno
 * 
 */
public class AndroidManifest {

    static class Activity {
        public String className;
        public int    screenOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
    }

    private final static AndroidManifest manifest   = new AndroidManifest();
    String                               appPackage;
    int                                  appTheme   = R.style.Theme;
    private Map<String, Activity>        activities = new HashMap<String, Activity>();
    private Map<String, String>          classes    = new HashMap<String, String>();

    public AndroidManifest() {
        String filePath = NSBundle.mainBundle().pathForResource("AndroidManifest", "xml");
        NSData manifestFile = NSData.dataWithContentsOfFile(filePath);
        NSXMLParser xmlParser = new NSXMLParser(manifestFile);
        xmlParser.setShouldProcessNamespaces(true);
        xmlParser.setShouldReportNamespacePrefixes(true);
        xmlParser.setDelegate(new AndroidManifestParser(this));
        boolean success = xmlParser.parse();
        // TODO what to do if success == false?
    }

    void addActivity(String action, Activity activity) {
        activities.put(action, activity);
        classes.put(activity.className, action);
    }

    public static String getActivityClassName(String action) {
        Activity act = manifest.activities.get(action);
        if (act == null)
            return null;
        return act.className;
    }

    public static String getActionForClass(String className) {
        return manifest.classes.get(className);
    }

    public static int getActivityScreenOrientation(String action) {
        Activity act = manifest.activities.get(action);
        if (act == null)
            return ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
        return act.screenOrientation;
    }

    public static String getPackageName() {
        return manifest.appPackage;
    }

    public static int getTheme() {
        return manifest.appTheme;
    }
}
