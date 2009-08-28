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

import org.xmlvm.iphone.NSData;
import org.xmlvm.iphone.NSXMLParser;
import org.xmlvm.iphone.NSXMLParserDelegate;

import android.content.Context;

class LayoutParser extends NSXMLParserDelegate {

    private String prefix = "";
    private Layout layout;

    public LayoutParser(Layout layout) {
        this.layout = layout;
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
        ViewParameters params = parseLayoutParameters(attributes);
        if (qualifiedName.equals("LinearLayout")) {
            layout.beginLinearLayout(params);
        } else if (qualifiedName.equals("EditText")) {
            layout.addEditText(params);
        } else if (qualifiedName.equals("TextView")) {
            layout.addTextView(params);
        } else if (qualifiedName.equals("Button")) {
            layout.addButton(params);
        } else {
            // TODO error
        }
        /*
         * String attr = ""; // txt = attributes.get(prefix + "orientation");
         * for (String s : attributes.keySet()) { attr += attributes.get(s) +
         * ";"; } }
         */
    }

    @Override
    public void didEndElement(NSXMLParser parser, String elementName, String namespaceURI,
            String qualifiedName) {
        if (qualifiedName.equals("LinearLayout")) {
            layout.endLinearLayout();
        }
    }

    private ViewParameters parseLayoutParameters(Map<String, String> attributes) {
        ViewParameters params = new ViewParameters();
        for (String key : attributes.keySet()) {
            String value = attributes.get(key);
            if (key.equals(prefix + "id")) {
                String name = value.substring("@+id/".length());
                params.id = ResourceMapper.getIdByName(name);
            } else if (key.equals(prefix + "text")) {
                params.text = value;
            } else {
                // TODO many more attributes
            }
        }
        return params;
    }
}

/**
 * @author arno
 * 
 */
public class LayoutManager {

    public static Layout getLayout(Context context, int id) {
        Layout layout = new Layout(context);
        NSData layoutDesc = ResourceMapper.getLayoutById(id);
        NSXMLParser xmlParser = new NSXMLParser(layoutDesc);
        xmlParser.setShouldProcessNamespaces(true);
        xmlParser.setShouldReportNamespacePrefixes(true);
        xmlParser.setDelegate(new LayoutParser(layout));
        boolean success = xmlParser.parse();
        // TODO what to do if success == false?
        return layout;
    }
}
