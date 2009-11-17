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

import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

import org.xmlvm.iphone.NSData;
import org.xmlvm.iphone.NSXMLParser;
import org.xmlvm.iphone.NSXMLParserDelegate;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

class LayoutParser extends NSXMLParserDelegate {

    private Map<Integer, View> viewMap          = new HashMap<Integer, View>();
    private String             prefix           = "";
    private Context            context;
    private ViewGroup          currentViewGroup = null;
    private View               layoutRootView   = null;
    private Stack<ViewGroup>   viewGroupStack   = new Stack<ViewGroup>();

    public LayoutParser(Context context) {
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
        AttributeSet attrs = new ResourceAttributes(prefix, attributes);

        if (qualifiedName.equals("LinearLayout")) {
            beginLinearLayout(attrs);
        } else if (qualifiedName.equals("EditText")) {
            addEditText(attrs);
        } else if (qualifiedName.equals("TextView")) {
            addTextView(attrs);
        } else if (qualifiedName.equals("Button")) {
            addButton(attrs);
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
            endLinearLayout();
        }
    }

    ViewGroup getCurrentView() {
        return currentViewGroup;
    }

    View getLayoutRootView() {
        return layoutRootView;
    }

    private void beginLinearLayout(AttributeSet attrs) {
        ViewGroup vg = new LinearLayout(context, attrs);
        addView(vg, attrs);
        viewGroupStack.push(vg);
        currentViewGroup = vg;
    }

    private void endLinearLayout() {
        currentViewGroup = viewGroupStack.pop();
    }

    private void addEditText(AttributeSet attrs) {
        EditText editText = new EditText(context, attrs);
        addView(editText, attrs);
    }

    public void addTextView(AttributeSet attrs) {
        TextView textView = new TextView(context, attrs);
        addView(textView, attrs);
    }

    public void addButton(AttributeSet attrs) {
        Button button = new Button(context, attrs);
        addView(button, attrs);
    }

    private void addView(View view, AttributeSet attrs) {

        ViewGroup.LayoutParams layoutParams;

        if (currentViewGroup != null) {
            currentViewGroup.addView(view);
            layoutParams = currentViewGroup.generateLayoutParams(attrs);
        } else {
            layoutParams = new ViewGroup.LayoutParams(context, attrs);
        }
        view.setLayoutParams(layoutParams);

        if (view.getId() != 0) {
            viewMap.put(new Integer(view.getId()), view);
        }

        if (layoutRootView == null) {
            layoutRootView = view;
        }
    }

    Map<Integer, View> getViewMap() {
        return viewMap;
    }
}

/**
 * @author arno
 * 
 */
public class LayoutManager {

    public static View getLayout(Context context, int id) {
        NSData layoutDesc = ResourceMapper.getLayoutById(id);
        NSXMLParser xmlParser = new NSXMLParser(layoutDesc);
        xmlParser.setShouldProcessNamespaces(true);
        xmlParser.setShouldReportNamespacePrefixes(true);
        LayoutParser parser = new LayoutParser(context);
        xmlParser.setDelegate(parser);
        boolean success = xmlParser.parse();
        // TODO what to do if success == false?
        View layoutRootView = parser.getLayoutRootView();

        if (layoutRootView instanceof ViewGroup) {
            ((ViewGroup) layoutRootView).setXmlvmViewMap(parser.getViewMap());
        }

        return layoutRootView;
    }
}
