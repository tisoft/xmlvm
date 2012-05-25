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

import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.InflateException;

class DrawableParser extends DefaultHandler {

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
    public void startPrefixMapping(String prefix, String namespaceURI) throws SAXException {
        if (namespaceURI.equals("http://schemas.android.com/apk/res/android")) {
            this.prefix = prefix + ":";
        }
    }

    @Override
    public void startElement(String namespaceURI, String elementName, String qualifiedName, Attributes attributes)
        throws SAXException {
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

    @Override
    public void endElement(String namespaceURI, String elementName, String qualifiedName) throws SAXException {

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
            DisplayMetrics metrics = new DisplayMetrics();
            metrics.setToDefaults();
            int left = (int) Dimension.resolveDimension(context, attrs.getAttributeValue(null,
                    "left"), metrics);
            left = left < 0 ? 0 : left;

            int top = (int) Dimension.resolveDimension(context, attrs
                    .getAttributeValue(null, "top"), metrics);
            top = top < 0 ? 0 : top;

            int right = (int) Dimension.resolveDimension(context, attrs.getAttributeValue(null,
                    "right"), metrics);
            right = right < 0 ? 0 : right;

            int bottom = (int) Dimension.resolveDimension(context, attrs.getAttributeValue(null,
                    "bottom"), metrics);
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


class XMLResourceParser extends DefaultHandler {

    private Context              context;
    private String               prefix;
    private Map<String, Integer> nameToIdMap;
    private Map<Integer, Object> resourceMap;
    private Integer              currentId;
    private StringBuffer         currentCDATA;
    private ArrayList<String>    currentStringArrayValue;
    private DisplayMetrics       metrics;


    public XMLResourceParser(Context context, Map<String, Integer> nameToIdMap,
            Map<Integer, Object> resourceMap) {
        this.context = context;
        this.nameToIdMap = nameToIdMap;
        this.resourceMap = resourceMap;
        currentCDATA = null;

        // TODO: Fix this
        // Should be retrieved using
        // Activity.getWindowManager().getDefaulDisplay
        // Works as long as Display implementation remains unchanged
        metrics = new DisplayMetrics();
        new Display().getMetrics(metrics);
    }

    @Override
    public void startPrefixMapping(String prefix, String namespaceURI) throws SAXException {
        if (namespaceURI.equals("http://schemas.android.com/apk/res/android")) {
            this.prefix = prefix + ":";
        }
    }

    @Override
    public void startElement(String namespaceURI, String elementName, String qualifiedName, Attributes attributes)
        throws SAXException {
        AttributeSet attrs = new ResourceAttributes(context, prefix, attributes);

        if (qualifiedName.equals("string")) {
            String name = attrs.getAttributeValue("", "name");
            currentId = nameToIdMap.get("string/" + name);
            currentCDATA = new StringBuffer();
        } else if (qualifiedName.equals("string-array")) {
            String name = attrs.getAttributeValue("", "name");
            currentId = nameToIdMap.get("array/" + name);
            currentStringArrayValue = new ArrayList<String>();
        } else if (qualifiedName.equals("dimen")) {
            String name = attrs.getAttributeValue("", "name");
            // TODO that is the prefix for dimen?
            currentId = nameToIdMap.get("dimen/" + name);
            currentCDATA = new StringBuffer();
        } else if (qualifiedName.equals("item")) {
            currentCDATA = new StringBuffer();
        }
    }

    @Override
    public void endElement(String namespaceURI, String elementName, String qualifiedName) throws SAXException {
        if (!resourceMap.containsKey(currentId)) {
            if (qualifiedName.equals("dimen")) {
                Float f = new Float(Dimension.resolveDimension(context, currentCDATA.toString(),
                        metrics));
                resourceMap.put(currentId, f);
            } else if (qualifiedName.equals("string")) {
                resourceMap.put(currentId, currentCDATA.toString());
                currentCDATA = null;
            } else if (qualifiedName.equals("string-array")) {
                // TODO should use ArrayList.toString() but the ObjC wrapper
                // don't
                // support it
                String[] stringArray = new String[currentStringArrayValue.size()];
                int i = 0;
                for (String s : currentStringArrayValue) {
                    stringArray[i++] = s;
                }
                resourceMap.put(currentId, stringArray);
                currentStringArrayValue = null;
            } else if (qualifiedName.equals("item")) {
                // Inside string-array
                if (currentStringArrayValue != null) {
                    currentStringArrayValue.add(currentCDATA.toString());
                    currentCDATA = null;
                }
            }
        }
    }

    @Override
    public void characters(char[] ch, int start, int length) throws SAXException {
        if (currentCDATA != null) {
            currentCDATA.append(new String(ch, start, length));
        }
    }
}


public class ResourceParser {

    public static Drawable parseDrawable(Context context, String fileName) {
        String resourceName = getResourceName(fileName);
        String resourceDir = getResourceDirectory(fileName);
        String filePath = CommonDeviceAPIFinder.instance().getFileSystem().getPathForResource(resourceName, "xml", resourceDir);
        
        DrawableParser delegate = new DrawableParser(context);
        SAXParser xmlParser = createParser(context);
        try {
            xmlParser.parse(new FileInputStream(filePath), delegate);
        } catch(Exception e) {
            throw new InflateException("Unable to inflate drawable resource: " + fileName + ".xml");
        }
        return delegate.getDrawable();
    }

    public static void parse(Context context, String fileName, Map<String, Integer> nameToIdMap,
            Map<Integer, Object> resourceMap) {
        String resourceName = getResourceName(fileName);
        String resourceDir = getResourceDirectory(fileName);
        String filePath = CommonDeviceAPIFinder.instance().getFileSystem().getPathForResource(resourceName, "xml", resourceDir);

        XMLResourceParser delegate = new XMLResourceParser(context, nameToIdMap, resourceMap);
        SAXParser xmlParser = createParser(context);
        try {
            xmlParser.parse(new FileInputStream(filePath), delegate);
        } catch(Exception e) {
            throw new InflateException("Unable to inflate string resources: " + fileName + ".xml");
        }
    }

    private static SAXParser createParser(Context context) {
        SAXParserFactory factory = SAXParserFactory.newInstance();
        factory.setNamespaceAware(true);
        SAXParser saxParser = null;
        try {
            saxParser = factory.newSAXParser();
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        } catch (SAXException e) {
            e.printStackTrace();
        }
        return saxParser;
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
