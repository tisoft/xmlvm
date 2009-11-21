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

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

import org.xmlvm.iphone.NSBundle;
import org.xmlvm.iphone.NSData;
import org.xmlvm.iphone.UIImage;

public class ResourceMapper {
    /** A map holding the mapping from resourceId to UIImage. */
    private static Map<Integer, UIImage> imageMap    = new HashMap<Integer, UIImage>();

    /**
     * A map holding the mapping from resourceId to NSData (representing the
     * content of the XML layout file).
     */
    private static Map<Integer, NSData>  layoutMap   = new HashMap<Integer, NSData>();

    private static Map<String, Integer>  idMap       = new HashMap<String, Integer>();
    private static Map<String, Integer>  drawableMap = new HashMap<String, Integer>();

    public static UIImage getImageById(int resourceId) {
        UIImage theImage = imageMap.get(new Integer(resourceId));
        if (theImage == null) {
            String fileName = findVariableById(resourceId, "drawable");
            fileName += ".png";
            theImage = UIImage.imageWithContentsOfFile(fileName);
            imageMap.put(new Integer(resourceId), theImage);
        }
        return theImage;
    }

    public static NSData getLayoutById(int resourceId) {
        NSData theFile = layoutMap.get(new Integer(resourceId));
        if (theFile == null) {
            String fileName = findVariableById(resourceId, "layout");
            String filePath = NSBundle.mainBundle().pathForResource(fileName, "xml");
            theFile = NSData.dataWithContentsOfFile(filePath);
            layoutMap.put(new Integer(resourceId), theFile);
        }
        return theFile;
    }

    public static int getIdByName(String name) {
        Integer theId = idMap.get(name);
        if (theId == null) {
            theId = new Integer(findIdByVariableName(name, "id"));
            idMap.put(name, theId);
        }

        return theId.intValue();
    }

    public static int getDrawableByName(String name) {
        Integer drawableId = drawableMap.get(name);
        if (drawableId == null) {
            drawableId = new Integer(findIdByVariableName(name, "drawable"));
            drawableMap.put(name, drawableId);
        }

        return drawableId.intValue();
    }

    private static String findVariableById(int resourceId, String resourceClass) {
        try {
            int i;
            String applicationPackageName = ActivityManager.getApplicationPackageName();
            String rClassName = applicationPackageName + ".R$" + resourceClass;
            Class<?> rClazz = Class.forName(rClassName);
            Field[] fields = rClazz.getDeclaredFields();

            for (i = 0; i < fields.length && fields[i].getInt(rClazz) != resourceId; i++)
                ;

            if (i < fields.length) {
                return fields[i].getName();
            }

            return "";
        } catch (Throwable t) {
            return "";
        }
    }

    private static int findIdByVariableName(String variableName, String resourceClass) {
        try {
            int i;
            String applicationPackageName = ActivityManager.getApplicationPackageName();
            String rClassName = applicationPackageName + ".R$" + resourceClass;
            Class<?> rClazz = Class.forName(rClassName);
            Field[] fields = rClazz.getDeclaredFields();

            for (i = 0; i < fields.length && !fields[i].getName().equals(variableName); i++)
                ;

            if (i < fields.length) {
                return fields[i].getInt(rClazz);
            }

            return -1;
        } catch (Throwable t) {
            return -1;
        }
    }
}
