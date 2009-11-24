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

import java.util.Map;

import android.content.Context;
import android.util.AttributeSet;

public class ResourceAttributes implements AttributeSet {

    private Context             context;
    private String              androidNsPrefix;
    private Map<String, String> attributeMap;

    public ResourceAttributes(Context context, String androidNsPrefix,
            Map<String, String> attributeMap) {
        this.context = context;
        this.androidNsPrefix = androidNsPrefix;
        this.attributeMap = attributeMap;
    }

    @Override
    public int getAttributeIntValue(String namespace, String attribute, int defaultValue) {
        String value = getAttributeValue(namespace, attribute);
        if (value == null) {
            return defaultValue;
        }

        return Integer.parseInt(value);
    }

    @Override
    public float getAttributeFloatValue(String namespace, String attribute, float defaultValue) {
        String value = getAttributeValue(namespace, attribute);
        if (value == null) {
            return defaultValue;
        }

        return Float.parseFloat(value);
    }

    @Override
    public String getAttributeValue(String namespace, String attribute) {
        StringBuffer keyName = new StringBuffer();

        if (namespace != null && namespace.length() > 0) {
            keyName.append(namespace);

            if (!namespace.endsWith(":")) {
                keyName.append(":");
            }
        } else {
            keyName.append(androidNsPrefix);
        }

        keyName.append(attribute);

        return attributeMap.get(keyName.toString());
    }

    @Override
    public int getAttributeResourceValue(String namespace, String attribute, int defaultValue) {
        String value = getAttributeValue(namespace, attribute);
        if (value == null) {
            return defaultValue;
        }

        int resourceId;
        if (value.startsWith("@+id/")) {
            resourceId = context.getResources().getIdentifier(value.substring("@+id/".length()),
                    "id", ActivityManager.getApplicationPackageName());
            if (resourceId == -1) {
                resourceId = defaultValue;
            }
        } else if (value.startsWith("@drawable/")) {
            resourceId = context.getResources().getIdentifier(
                    value.substring("@drawable/".length()), "drawable",
                    ActivityManager.getApplicationPackageName());
            if (resourceId == -1) {
                resourceId = defaultValue;
            }
        } else {
            resourceId = Integer.parseInt(value);
        }

        return resourceId;
    }

    @Override
    public String getIdAttribute() {
        return getAttributeValue(null, "id");
    }

    @Override
    public int getIdAttributeResourceValue(int defaultValue) {
        return getAttributeResourceValue(null, "id", defaultValue);
    }
}
