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

class AndroidManifestParser extends NSXMLParserDelegate {

    private String          prefix = "";
    private AndroidManifest manifest;
    private String          currentActivity;

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
        if (qualifiedName.equals("manifest")) {
            manifest.appPackage = attributes.get("package");
        }
        if (qualifiedName.equals("activity")) {
            currentActivity = attributes.get(prefix + "name");
            if (currentActivity.indexOf('.') == -1) {
                currentActivity = manifest.appPackage + '.' + currentActivity;
            }
            if (currentActivity.charAt(0) == '.') {
                currentActivity = manifest.appPackage + currentActivity;
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

    public String               appPackage;
    private Map<String, String> activities = new HashMap<String, String>();

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

    public void addActivity(String action, String activityName) {
        activities.put(action, activityName);
    }

    public String getActivityName(String action) {
        return activities.get(action);
    }
}
