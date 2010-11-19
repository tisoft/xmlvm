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

import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.xmlvm.iphone.NSBundle;
import org.xmlvm.iphone.NSData;
import org.xmlvm.iphone.NSFileManager;
import org.xmlvm.iphone.UIImage;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.internal.AndroidManifest;
import android.internal.Assert;
import android.internal.ConfigurationFactory;
import android.internal.Density;
import android.internal.ResourceFolderSelector;
import android.internal.ResourceParser;
import android.util.DisplayMetrics;
import android.util.Log;

public class Resources {

    /** Filename prefix used for IOS specific resources. */
    private static final String         IOS_PREFIX               = "_ios_";

    /** The name of the directory holding the application's resources. */
    private static final String         RES_DIR                  = "res";

    /** The device's configuration */
    private Configuration               configuration            = null;

    /** The device's density. */
    private int                         density                  = Density.DENSITY_UNDEFINED;

    /**
     * UIImages whose size (in bytes) is less than this threshold will be
     * cached.
     */
    final private static long           DRAWABLE_CACHE_THRESHOLD = 50000;

    /**
     * The cached folders to search for values resources (string, dimensions,
     * ...).
     */
    private List<String>                valuesFolders            = null;

    /** The cached folders to search for layout resources. */
    private List<String>                layoutFolders            = null;

    /** The cached folders to search for drawable resources. */
    private List<String>                drawableFolders          = null;

    /** A map holding the mapping from IDs to variable names. */
    private Map<Integer, String>        idToNameMap              = new HashMap<Integer, String>();

    /** A map holding the mapping from variable names to IDs. */
    private Map<String, Integer>        nameToIdMap              = new HashMap<String, Integer>();

    /** A map holding the mapping from resourceId to Drawable. */
    private Map<Integer, Drawable>      drawableMap              = new HashMap<Integer, Drawable>();

    /**
     * A map holding the mapping from resourceId to NSData (representing the
     * content of the XML layout file).
     */
    private static Map<Integer, NSData> layoutMap                = new HashMap<Integer, NSData>();

    /** A map holding all resources which can be read from the values folders. */
    private static Map<Integer, Object> resourceMap              = null;

    private WeakReference<Context>      context;


    public Resources(Context context) {
        this.context = new WeakReference<Context>(context);
        init();
    };

    public Drawable getDrawable(int resourceId) {
        Drawable d = drawableMap.get(new Integer(resourceId));
        if (d == null) {
            // Initialize the folders to search for drawables
            if (drawableFolders == null) {
                drawableFolders = getResourceFolders("drawable");
            }
            // Initialze layout folder as well, XML based drawables might be
            // stored in a layout folder
            if (layoutFolders == null) {
                layoutFolders = getResourceFolders("layout");
            }

            // Get the layout resource's name and determine whether it is
            // located
            // in the drawable or layout folder
            String resourceName = getResourceName(findResourceNameById(resourceId));
            boolean usesDrawableFolder = getResourceDirectory(findResourceNameById(resourceId))
                    .equals("drawable");

            // Iterate drawable folders and try to load image
            for (String folder : usesDrawableFolder ? drawableFolders : layoutFolders) {
                String type = findDrawableType(folder, resourceName);
                if (type != null) {
                    if (type.equals("xml")) {
                        d = ResourceParser.parseDrawable(getContext(), RES_DIR + "/" + folder + "/"
                                + resourceName);
                        drawableMap.put(new Integer(resourceId), d);
                    } else {
                        String path = NSBundle.mainBundle().bundlePath() + "/" + RES_DIR + "/"
                                + folder + "/" + resourceName + ".png";
                        UIImage image = UIImage.imageWithContentsOfFile(path);
                        // UIImage image = UIImage.imageNamed(RES_DIR + "/" +
                        // folder
                        // + "/" + resourceName + ".png");
                        d = BitmapDrawable.xmlvmCreateWithImage(image);
                        File f = new File(path);
                        if (f.length() < DRAWABLE_CACHE_THRESHOLD) {
                            drawableMap.put(new Integer(resourceId), d);
                        }
                    }
                    break;
                }
            }
        }

        return d;
    }

    private String findDrawableType(String folder, String drawableName) {
        String path = RES_DIR + "/" + folder;
        if (NSBundle.mainBundle().pathForResource(drawableName, "png", path) != null) {
            return "png";
        }
        if (NSBundle.mainBundle().pathForResource(drawableName, "xml", path) != null) {
            return "xml";
        }

        return null;
    }

    public NSData getLayout(int resourceId) {
        NSData theFile = layoutMap.get(new Integer(resourceId));
        if (theFile == null) {
            // Initialize the folders to search for layouts
            if (layoutFolders == null) {
                layoutFolders = getResourceFolders("layout");
            }

            // Get the layout resource's name
            String resourceName = getResourceName(findResourceNameById(resourceId));
            String iosResourceName = IOS_PREFIX + resourceName;

            // Iterate the layout folders and try to load the layout from that
            // folder
            for (String folder : layoutFolders) {
                // First try IOS specific resources, if not found use "normal"
                // resource
                String filePath = NSBundle.mainBundle().pathForResource(iosResourceName, "xml",
                        RES_DIR + "/" + folder);
                if (filePath == null) {
                    filePath = NSBundle.mainBundle().pathForResource(resourceName, "xml",
                            RES_DIR + "/" + folder);
                }

                if (filePath != null) {
                    theFile = NSData.dataWithContentsOfFile(filePath);
                    layoutMap.put(new Integer(resourceId), theFile);
                    break;
                }
            }
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
        return AndroidManifest.getPackageName();
    }

    public String getResourceTypeName(int resourceId) {
        String str = findResourceNameById(resourceId);
        return str == null ? null : str.substring(0, str.indexOf('/'));
    }

    public String getResourceName(int resourceId) {
        String str = findResourceNameById(resourceId);
        return str == null ? null : AndroidManifest.getPackageName() + ':' + str;
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
            String activityPackageName = AndroidManifest.getPackageName();
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
                    + AndroidManifest.getPackageName() + ": " + resourceClass);
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
        initResources("dimen");
    }

    private String getResourceName(String filePath) {
        int i = filePath.lastIndexOf('/');
        return i >= 0 ? filePath.substring(i + 1) : filePath;
    }

    private String getResourceDirectory(String filePath) {
        int i = filePath.lastIndexOf('/');
        return i >= 0 ? filePath.substring(0, i) : null;
    }

    /**
     * @param id
     * @return
     */
    public String getString(int id) {
        if (resourceMap == null) {
            loadValueResources();
        }

        return (String) resourceMap.get(new Integer(id));
    }

    public String[] getTextArray(int id) {
        if (resourceMap == null) {
            loadValueResources();
        }

        return (String[]) resourceMap.get(new Integer(id));
    }

    /**
     * 
     * Loads all resources stored in the values folders: String, StringArray,
     * Dimensions, etc.. To load the resources all XML files stored in one of
     * the values folders are parsed and stored. The folders to search depend on
     * the device configuration and the folders available.
     * 
     */

    private void loadValueResources() {
        // Initialize the folders to search for strings
        if (valuesFolders == null) {
            valuesFolders = getResourceFolders("values");
        }

        resourceMap = new HashMap<Integer, Object>();

        // Iterate all suitable values folders
        for (String folder : valuesFolders) {
            // Get all files from the folder
            List<String> allFiles = NSFileManager.defaultManager().contentsOfDirectoryAtPath(
                    NSBundle.mainBundle().bundlePath() + "/" + RES_DIR + "/" + folder, null);

            // Iterate all files and parse XML files
            for (String file : allFiles) {
                if (file.endsWith(".xml")) {
                    String baseName = file.substring(0, file.length() - 4);
                    String fullPath = RES_DIR + "/" + folder + "/" + baseName;
                    ResourceParser.parse(getContext(), fullPath, nameToIdMap, resourceMap);
                }
            }

        }
    }

    public String getText(int id) {
        return getString(id);
    }

    /**
     * 
     * Get the folders to search for resources of a particular type. The type is
     * specified by the folder's prefix (drawable, layout, ...).
     * 
     * @param type
     *            The resource type to get the folders for.
     * 
     * @return The folders to search for resources.
     * 
     */

    private List<String> getResourceFolders(String type) {
        // Get all files and folders below the res folder
        List<String> allFiles = NSFileManager.defaultManager().contentsOfDirectoryAtPath(
                NSBundle.mainBundle().bundlePath() + "/" + RES_DIR, null);

        // Get all folders of the
        List<String> resourceFolders = new ArrayList<String>();
        if (allFiles != null) {
            for (String file : allFiles) {
                if (file.startsWith(type)) {
                    resourceFolders.add(file);
                }
            }
        }

        // Initialize configuration and density if not already initialized
        if (configuration == null) {
            configuration = ConfigurationFactory.create();
        }

        if (density == Density.DENSITY_UNDEFINED) {
            density = ConfigurationFactory.getDensity();
        }

        return new ResourceFolderSelector().getResourceFolders(resourceFolders, configuration,
                density);
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

    public float getDimension(int id) {
        if (resourceMap == null) {
            loadValueResources();
        }

        return ((Float) resourceMap.get(new Integer(id))).floatValue();
    }
}
