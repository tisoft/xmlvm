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

import org.xmlvm.iphone.UIImage;

import android.app.ActivityWrapper;

public class ResourceMapper {
    /** A map holding the mapping from resourceId to UIImage. */
    private static Map<Integer, UIImage> imageMap = new HashMap<Integer, UIImage>();

    public static UIImage getImageById(int resourceId) {
        UIImage theImage = imageMap.get(new Integer(resourceId));
        if (theImage == null) {
            String fileName = findVariableById(resourceId);
            fileName += ".png";
            theImage = UIImage.imageAtPath(fileName);
            imageMap.put(new Integer(resourceId), theImage);
        }
        return theImage;
    }

    private static String findVariableById(int resourceId) {
        try {
            int i;
            String activityPackageName = ActivityWrapper.getActivity().getClass().getName();
            i = activityPackageName.lastIndexOf('.');
            activityPackageName = activityPackageName.substring(0, i);

            String rClassName = activityPackageName + ".R$drawable";
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
}
