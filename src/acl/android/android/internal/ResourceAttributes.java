/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package android.internal;

import java.util.Map;

import org.xml.sax.Attributes;

import android.content.Context;
import android.util.AttributeSet;

public class ResourceAttributes implements AttributeSet {

    private Context             context;
    private String              androidNsPrefix;
    private Attributes attributeMap;

    public ResourceAttributes(Context context, String androidNsPrefix,
            Attributes attributes) {
        this.context = context;
        this.androidNsPrefix = androidNsPrefix;
        this.attributeMap = attributes;
    }

    @Override
    public boolean getAttributeBooleanValue(String namespace, String attribute, boolean defaultValue) {
        String value = getAttributeValue(namespace, attribute);
        if (value == null) {
            return defaultValue;
        }

        return Boolean.parseBoolean(value);
    }

    @Override
    public int getAttributeIntValue(String namespace, String attribute, int defaultValue) {
        String value = getAttributeValue(namespace, attribute);
        if (value == null) {
            return defaultValue;
        }

        int result = 0;
        if (value.startsWith("#")) {
            result = (int) Long.parseLong(value.substring(1), 16);
        } else if (value.startsWith("0x")) {
            result = (int) Long.parseLong(value.substring(2), 16);
        } else {
            result = Integer.parseInt(value);
        }

        return result;
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
        String result = null;
        if (namespace == null || namespace.length() == 0) {
            result = attributeMap.getValue(androidNsPrefix + attribute);
            if (result == null) {
                result = attributeMap.getValue(attribute);
            }
        } else if (namespace.length() > 0) {
            StringBuffer keyName = new StringBuffer();
            keyName.append(namespace);

            if (!namespace.endsWith(":")) {
                keyName.append(":");
            }
            
            keyName.append(attribute);
            result = attributeMap.getValue(keyName.toString());
        }
        return result;
    }

    @Override
    public int getAttributeResourceValue(String namespace, String attribute, int defaultValue) {
        String value = getAttributeValue(namespace, attribute);
        if (value == null) {
            return defaultValue;
        }

        int resourceId;
        if (value.startsWith("@")) {
            String type = getResourceType(value);
            String name = getResourceName(value);
            resourceId = context.getResources().getIdentifier(name, type,
                    AndroidManifest.getPackageName());
        } else {
            resourceId = Integer.parseInt(value);
        }

        /*
         * int resourceId; if (value.startsWith("@+id/")) { resourceId =
         * context.
         * getResources().getIdentifier(value.substring("@+id/".length()), "id",
         * AndroidManifest.manifest.appPackage); if (resourceId == -1) {
         * resourceId = defaultValue; } } else if
         * (value.startsWith("@drawable/")) { resourceId =
         * context.getResources().getIdentifier(
         * value.substring("@drawable/".length()), "drawable",
         * AndroidManifest.manifest.appPackage); if (resourceId == -1) {
         * resourceId = defaultValue; } } else { resourceId =
         * Integer.parseInt(value); }
         */

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

    private String getResourceType(String resourceName) {
        int s = 0;
        if (resourceName.startsWith("@+")) {
            s = 2;
        } else if (resourceName.startsWith("@")) {
            s = 1;
        }

        int e = resourceName.indexOf('/');
        return resourceName.substring(s, e);
    }

    private String getResourceName(String resourceName) {
        return resourceName.substring(resourceName.indexOf('/') + 1);
    }

    @Override
    public int getAttributeCount() {
        return attributeMap.getLength();
    }
}
