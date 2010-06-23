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

import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import java.util.Locale;

import org.xmlvm.iphone.NSBundle;
import org.xmlvm.iphone.NSData;
import org.xmlvm.iphone.UIImage;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.internal.ActivityManager;
import android.internal.Assert;
import android.internal.ResourceParser;
import android.util.DisplayMetrics;
import android.util.Log;

public class Resources {

    /** The name of the directory holding the application's resources. */
    private static final String           RES_DIR     = "res";

    /** A map holding the mapping from IDs to variable names. */
    private Map<Integer, String>          idToNameMap = new HashMap<Integer, String>();

    /** A map holding the mapping from variable names to IDs. */
    private Map<String, Integer>          nameToIdMap = new HashMap<String, Integer>();

    /** A map holding the mapping from resourceId to Drawable. */
    private Map<Integer, Drawable>        drawableMap = new HashMap<Integer, Drawable>();

    /**
     * A map holding the mapping from resourceId to NSData (representing the
     * content of the XML layout file).
     */
    private static Map<Integer, NSData>   layoutMap   = new HashMap<Integer, NSData>();

    private static Map<Integer, String>   stringMap;
    private static Map<Integer, String[]> stringArrayMap;

    private WeakReference<Context>        context;

    public Resources(Context context) {
        this.context = new WeakReference<Context>(context);
        init();
    };

    public Drawable getDrawable(int resourceId) {
        Drawable d = drawableMap.get(new Integer(resourceId));
        if (d == null) {
            String fileName = getFileNamePath(findResourceNameById(resourceId));
            UIImage image = UIImage.imageWithContentsOfFile(fileName + ".png");
            if (image != null) {
                d = BitmapDrawable.xmlvmCreateWithImage(image);
                drawableMap.put(new Integer(resourceId), d);
            } else {
                d = ResourceParser.parseDrawable(getContext(), fileName);
                drawableMap.put(new Integer(resourceId), d);
            }
        }

        return d;
    }

    public NSData getLayout(int resourceId) {
        NSData theFile = layoutMap.get(new Integer(resourceId));
        if (theFile == null) {
            String resourceName = getResourceName(findResourceNameById(resourceId));
            String resourceDir = getResourceDirectory(findResourceNameById(resourceId));
            String filePath = NSBundle.mainBundle().pathForResource(resourceName, "xml",
                    resourceDir);
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
        initResources("array");
    }

    private String getFileNamePath(String filePath) {
        return RES_DIR + "/" + filePath;
    }

    private String getResourceName(String filePath) {
        int i = filePath.lastIndexOf('/');
        return i >= 0 ? filePath.substring(i + 1) : filePath;
    }

    private String getResourceDirectory(String filePath) {
        String fileName = RES_DIR + "/" + filePath;
        int i = fileName.lastIndexOf('/');
        return i >= 0 ? fileName.substring(0, i) : null;
    }

    /**
     * @param id
     * @return
     */
    public String getString(int id) {
        if (stringMap == null) {
            String path = getValuesDir() + "/" + "strings";
            stringMap = ResourceParser.parseStrings(getContext(), path, nameToIdMap);
        }

        return stringMap.get(new Integer(id));
    }

    public String[] getTextArray(int id) {
        if (stringArrayMap == null) {
            String path = getValuesDir();
            stringArrayMap = ResourceParser.parseStringArrays(getContext(), path, nameToIdMap);
        }

        return stringArrayMap.get(new Integer(id));
    }

    public String getText(int id) {
        return getString(id);
    }

    private String getValuesDir() {
        String locale = Locale.getDefault().toString();
        locale = locale.replaceAll("-", "_");
        String path = RES_DIR + "/values-" + locale;
        String resP = NSBundle.mainBundle().pathForResource("strings", "xml", path);
        if (resP == null) {
            String[] p = locale.split("_"); // just use language
            if (p.length >= 2) {
                path = RES_DIR + "/values-" + p[0];
                resP = NSBundle.mainBundle().pathForResource("strings", "xml", path);
            }
        }
        if (resP == null) {
            path = RES_DIR + "/values"; // default values, should always exist
        }
        return path;
    }

    public DisplayMetrics getDisplayMetrics() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public Configuration getConfiguration() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    private Context getContext() {
        return context == null ? null : context.get();
    }
}
