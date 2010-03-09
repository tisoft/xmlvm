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

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.xmlvm.iphone.NSBundle;
import org.xmlvm.iphone.NSData;
import org.xmlvm.iphone.NSXMLParser;
import org.xmlvm.iphone.NSXMLParserDelegate;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.InflateException;

class DrawableParser extends NSXMLParserDelegate {

    private static final int UNKNOWN_DRAWABLE   = 0;
    private static final int STATELIST_DRAWABLE = 1;
    private static final int GRADIENT_DRAWABLE  = 2;

    private Context          context;
    private String           prefix;
    private Drawable         drawable;
    private int              drawableType       = UNKNOWN_DRAWABLE;

    public DrawableParser(Context context) {
        this.context = context;
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
        AttributeSet attrs = new ResourceAttributes(context, prefix, attributes);

        if (qualifiedName.equals("selector")) {
            drawable = StateListDrawable.xmlvmCreateStateListDrawable(attrs);
            drawableType = STATELIST_DRAWABLE;
        } else if (qualifiedName.equals("shape")) {
            drawable = GradientDrawable.xmlvmCreateGradientDrawable(attrs);
            drawableType = GRADIENT_DRAWABLE;
        } else {
            switch (drawableType) {
            case STATELIST_DRAWABLE:
                didStartStateListDrawableElement(qualifiedName, attrs);
                break;
            case GRADIENT_DRAWABLE:
                didStartGradientDrawableElement(qualifiedName, attrs);
            }
        }
    }

    public void didEndElement(NSXMLParser parser, String elementName, String namespaceURI,
            String qualifiedName) {
    }

    private void didStartStateListDrawableElement(String elementName, AttributeSet attrs) {
        if (elementName.equals("item")) {
            processStateListItem(attrs);
        } else {
            throw new InflateException("Element not valid for StateListDrawable: " + elementName);
        }
    }

    private void didStartGradientDrawableElement(String elementName, AttributeSet attrs) {
        // TODO: Implement parsing the various gradient elements
        if (elementName.equals("solid")) {
            int color = attrs.getAttributeIntValue(null, "color", 0);
            ((GradientDrawable) drawable).setColor(color);
        } else if (elementName.equals("padding")) {
            int left = Dimension.resolveDimension(attrs.getAttributeValue(null, "left"));
            left = left < 0 ? 0 : left;

            int top = Dimension.resolveDimension(attrs.getAttributeValue(null, "top"));
            top = top < 0 ? 0 : top;

            int right = Dimension.resolveDimension(attrs.getAttributeValue(null, "right"));
            right = right < 0 ? 0 : right;

            int bottom = Dimension.resolveDimension(attrs.getAttributeValue(null, "bottom"));
            bottom = bottom < 0 ? 0 : bottom;

            ((GradientDrawable) drawable).xmlvmSetPadding(left, top, right, bottom);
        }
    }

    private void processStateListItem(AttributeSet attrs) {
        List<Integer> states = new ArrayList<Integer>();
        boolean b = attrs.getAttributeBooleanValue(null, State.STATE_PRESSED_NAME, false);
        if (b) {
            states.add(new Integer(State.STATE_PRESSED_ID));
        }
        b = attrs.getAttributeBooleanValue(null, State.STATE_CHECKED_NAME, false);
        if (b) {
            states.add(new Integer(State.STATE_CHECKED_ID));
        }

        int drawableId = attrs.getAttributeResourceValue(null, "drawable", -1);
        Drawable d = context.getResources().getDrawable(drawableId);

        int stateArray[] = new int[states.size()];
        for (int i = 0; i < states.size(); i++) {
            stateArray[i] = states.get(i).intValue();
        }

        ((StateListDrawable) drawable).xmlvmAddState(stateArray, d);
    }

    Drawable getDrawable() {
        return drawable;
    }
}

class StringsParser extends NSXMLParserDelegate {

    private Context              context;
    private String               prefix;
    private Map<String, Integer> nameToIdMap;
    private Map<Integer, String> stringMap;
    private Integer              currentId;
    private StringBuffer         currentValue;

    public StringsParser(Context context, Map<String, Integer> nameToIdMap) {
        this.context = context;
        this.nameToIdMap = nameToIdMap;
        stringMap = new HashMap<Integer, String>();
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
        AttributeSet attrs = new ResourceAttributes(context, prefix, attributes);

        if (qualifiedName.equals("string")) {
            currentValue = new StringBuffer();
            String name = attrs.getAttributeValue("", "name");
            currentId = nameToIdMap.get("string/" + name);
        }
    }

    @Override
    public void didEndElement(NSXMLParser parser, String elementName, String namespaceURI,
            String qualifiedName) {
        if (qualifiedName.equals("string")) {
            stringMap.put(currentId, currentValue.toString());
            currentId = null;
        }
    }

    @Override
    public void foundCharacters(NSXMLParser parser, String characters) {
        if (currentId != null) {
            currentValue.append(characters);
        }
    }

    Map<Integer, String> getStringMap() {
        return stringMap;
    }
}

class StringArraysParser extends NSXMLParserDelegate {

    private Context                context;
    private String                 prefix;
    private Map<String, Integer>   nameToIdMap;
    private Map<Integer, String[]> stringMap;
    private Integer                currentId;
    private StringBuffer[]         currentValue;
    private int                    currentIdx;
    private boolean                inItem;

    public StringArraysParser(Context context, Map<String, Integer> nameToIdMap) {
        this.context = context;
        this.nameToIdMap = nameToIdMap;
        stringMap = new HashMap<Integer, String[]>();
        inItem = false;
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
        AttributeSet attrs = new ResourceAttributes(context, prefix, attributes);
        // System.out.println("StartEl="+qualifiedName);
        if (qualifiedName.equals("string-array")) {
            String name = attrs.getAttributeValue("", "name");
            currentId = nameToIdMap.get("array/" + name);
            // if (currentId==null) { System.out.println("cId=null"); } else {
            // System.out.println("cId="+currentId); }
            currentIdx = -1;
            currentValue = new StringBuffer[100]; // TODO: at most 100 values
                                                  // for array
        } else if (qualifiedName.equals("item")) {
            currentIdx++;
            inItem = true;
            currentValue[currentIdx] = new StringBuffer();
        }
    }

    @Override
    public void didEndElement(NSXMLParser parser, String elementName, String namespaceURI,
            String qualifiedName) {
        // System.out.println("EndEl="+qualifiedName);
        if (currentId != null && qualifiedName.equals("string-array")) {
            // System.out.println("Storing "+currentId);
            String[] cV = new String[currentIdx + 1];
            for (int i = 0; i <= currentIdx; i++) {
                cV[i] = currentValue[i].toString();
            }
            stringMap.put(currentId, cV);
            currentId = null;
        } else if (currentId != null && currentIdx >= 0 && qualifiedName.equals("item")) {
            // System.out.println("currentIdx="+currentIdx);
            inItem = false;
        }
    }

    @Override
    public void foundCharacters(NSXMLParser parser, String characters) {
        // System.out.println("chars");
        if (currentId != null && currentIdx >= 0 && inItem) {
            // System.out.println("Adding "+characters+" to "+currentId+"/#"+currentIdx);
            currentValue[currentIdx].append(characters);
        }
    }

    Map<Integer, String[]> getStringMap() {
        return stringMap;
    }
}

public class ResourceParser {

    public static Drawable parseDrawable(Context context, String fileName) {
        String resourceName = getResourceName(fileName);
        String resourceDir = getResourceDirectory(fileName);
        String filePath = NSBundle.mainBundle().pathForResource(resourceName, "xml", resourceDir);
        NSData content = NSData.dataWithContentsOfFile(filePath);

        DrawableParser delegate = new DrawableParser(context);
        NSXMLParser xmlParser = createParser(context, content, delegate);
        boolean success = xmlParser.parse();
        if (!success) {
            throw new InflateException("Unable to inflate drawable resource: " + fileName + ".xml");
        }

        return delegate.getDrawable();
    }

    public static Map<Integer, String> parseStrings(Context context, String fileName,
            Map<String, Integer> nameToIdMap) {
        String resourceName = getResourceName(fileName);
        String resourceDir = getResourceDirectory(fileName);
        String filePath = NSBundle.mainBundle().pathForResource(resourceName, "xml", resourceDir);
        NSData content = NSData.dataWithContentsOfFile(filePath);

        StringsParser delegate = new StringsParser(context, nameToIdMap);
        NSXMLParser xmlParser = createParser(context, content, delegate);
        boolean success = xmlParser.parse();
        if (!success) {
            throw new InflateException("Unable to inflate string resources: " + fileName + ".xml");
        }

        return delegate.getStringMap();
    }

    public static Map<Integer, String[]> parseStringArrays(Context context, String fileName,
            Map<String, Integer> nameToIdMap) {

        String resourceName = getResourceName(fileName);
        String resourceDir = getResourceDirectory(fileName);
        String filePath = NSBundle.mainBundle().pathForResource(resourceName, "xml", resourceDir);
        NSData content = NSData.dataWithContentsOfFile(filePath);

        StringArraysParser delegate = new StringArraysParser(context, nameToIdMap);
        NSXMLParser xmlParser = createParser(context, content, delegate);
        boolean success = xmlParser.parse();
        if (!success) {
            throw new InflateException("Unable to inflate string resources: " + fileName + ".xml");
        }

        return delegate.getStringMap();
    }

    private static NSXMLParser createParser(Context context, NSData content,
            NSXMLParserDelegate delegate) {
        NSXMLParser xmlParser = new NSXMLParser(content);
        xmlParser.setShouldProcessNamespaces(true);
        xmlParser.setShouldReportNamespacePrefixes(true);
        xmlParser.setDelegate(delegate);

        return xmlParser;
    }

    private static String getResourceName(String resourcePath) {
        int i = resourcePath.lastIndexOf('/');
        return i >= 0 ? resourcePath.substring(i + 1) : resourcePath;
    }

    private static String getResourceDirectory(String resourcePath) {
        int i = resourcePath.lastIndexOf('/');
        return i >= 0 ? resourcePath.substring(0, i) : null;
    }

}
