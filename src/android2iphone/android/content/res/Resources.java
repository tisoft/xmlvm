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

package android.content.res;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

import org.xmlvm.iphone.NSBundle;
import org.xmlvm.iphone.NSData;
import org.xmlvm.iphone.UIImage;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.internal.ActivityManager;
import android.internal.Assert;
import android.util.Log;

public class Resources {

    /** A map holding the mapping from IDs to variable names. */
    private Map<Integer, String>        idToNameMap = new HashMap<Integer, String>();

    /** A map holding the mapping from variable names to IDs. */
    private Map<String, Integer>        nameToIdMap = new HashMap<String, Integer>();

    /** A map holding the mapping from resourceId to Drawable. */
    private Map<Integer, Drawable>      drawableMap = new HashMap<Integer, Drawable>();

    /**
     * A map holding the mapping from resourceId to NSData (representing the
     * content of the XML layout file).
     */
    private static Map<Integer, NSData> layoutMap   = new HashMap<Integer, NSData>();

    public Resources() {
        init();
    };

    public Drawable getDrawable(int resourceId) {
        Drawable d = drawableMap.get(new Integer(resourceId));
        if (d == null) {
            String fileName = findResourceNameById(resourceId);
            fileName = getFileNamePath(fileName) + ".png";
            UIImage image = UIImage.imageWithContentsOfFile(fileName);
            d = BitmapDrawable.xmlvmCreateWithImage(image);
            drawableMap.put(new Integer(resourceId), d);
        }

        return d;
    }

    public NSData getLayout(int resourceId) {
        NSData theFile = layoutMap.get(new Integer(resourceId));
        if (theFile == null) {
            String fileName = getFileNamePath(findResourceNameById(resourceId));
            String filePath = NSBundle.mainBundle().pathForResource(fileName, "xml");
            theFile = NSData.dataWithContentsOfFile(filePath);
            layoutMap.put(new Integer(resourceId), theFile);
        }

        return theFile;
    }

    public int getIdentifier(String name, String defType, String defPackage) {
        String str = name;
        int i;

        // Remove package
        i = str.indexOf(':');
        if (i != -1) {
            str = str.substring(i + 1);
        }

        // Prepend resource type if not specified
        if (str.indexOf('/') == -1 && defType != null) {
            str = defType + "/" + str;
        }

        return findResourceIdByName(str);
    }

    public String getResourceEntryName(int resourceId) {
        String str = findResourceNameById(resourceId);
        return str == null ? null : str.substring(str.indexOf('/'));
    }
    
    public String getResourcePackageName(int resourceId) {
        return ActivityManager.getApplicationPackageName();
    }

    public String getResourceTypeName(int resourceId) {
        String str = findResourceNameById(resourceId);
        return str == null ? null : str.substring(0, str.indexOf('/'));
    }

    public String getResourceName(int resourceId) {
        String str = findResourceNameById(resourceId);
        return str == null ? null : ActivityManager.getApplicationPackageName() + ':' + str;
    }

    private String findResourceNameById(int resourceId) {
        String name = idToNameMap.get(new Integer(resourceId));
        return name != null ? name : "";
    }

    private int findResourceIdByName(String resourceName) {
        Integer i = nameToIdMap.get(resourceName);
        return i != null ? i.intValue() : -1;
    }

    private void initResources(String resourceClass) {
        try {
            String activityPackageName = ActivityManager.getApplicationPackageName();
            String rClassName = activityPackageName + ".R$" + resourceClass;
            Class<?> rClazz = Class.forName(rClassName);
            Field[] fields = rClazz.getDeclaredFields();

            for (int i = 0; i < fields.length; i++) {
                String fullFieldName = resourceClass + "/" + fields[i].getName();
                idToNameMap.put(new Integer(fields[i].getInt(rClazz)), fullFieldName);
                nameToIdMap.put(fullFieldName, new Integer(fields[i].getInt(rClazz)));
            }
        } catch (Throwable t) {
            Log.i("Resources", "Unable to resolve resources for "
                    + ActivityManager.getApplicationPackageName() + ": " + resourceClass);
        }
    }

    private void init() {
        idToNameMap = new HashMap<Integer, String>();
        nameToIdMap = new HashMap<String, Integer>();

        initResources("attr");
        initResources("drawable");
        initResources("id");
        initResources("layout");
        initResources("string");
    }

    private String getFileNamePath(String filePath) {
        int i = filePath.lastIndexOf('/');
        String fileName = filePath.substring(i + 1);
        return fileName;
        
//        return RES_DIR + "/" + filePath;
    }

    /**
     * @param id
     * @return
     */
    public String getText(int id) {
        Assert.NOT_IMPLEMENTED();
        return null;
    }
}
