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

import java.lang.reflect.Constructor;
import java.util.Map;
import java.util.Stack;

import org.xmlvm.iphone.NSData;
import org.xmlvm.iphone.NSXMLParser;
import org.xmlvm.iphone.NSXMLParserDelegate;

import android.content.Context;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

class LayoutParser extends NSXMLParserDelegate {

    private String           prefix           = "";
    private Context          context;
    private ViewGroup        root;
    private ViewGroup        currentViewGroup = null;
    private View             layoutRootView   = null;
    private Stack<ViewGroup> viewGroupStack   = new Stack<ViewGroup>();

    public LayoutParser(Context context, ViewGroup root) {
        this.context = context;
        this.root = root;
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
        View v;

        if (qualifiedName.indexOf('.') == -1) {
            String str = "android.widget." + qualifiedName;
            v = createView(str, context, attrs);

            if (v == null) {
                str = "android.view." + qualifiedName;
                v = createView(str, context, attrs);

                if (v == null) {
                    v = createView(qualifiedName, context, attrs);
                }
            }
        } else {
            v = createView(qualifiedName, context, attrs);
        }

        if (v != null) {
            addView(v, attrs);

            if (v instanceof ViewGroup) {
                viewGroupStack.push(currentViewGroup);
                currentViewGroup = (ViewGroup) v;
            }
        } else {
            throw new InflateException("Unable to create widget: " + qualifiedName);
        }
    }

    @Override
    public void didEndElement(NSXMLParser parser, String elementName, String namespaceURI,
            String qualifiedName) {

        boolean closesCurrentViewGroup = false;
        String currentViewGroupName = currentViewGroup.getClass().getName();

        if (qualifiedName.indexOf('.') == -1) {

            // Try to find class in android.widget
            String str = "android.widget." + qualifiedName;
            if (str.equals(currentViewGroupName)) {
                closesCurrentViewGroup = true;
            }

            // Try to find class in android.view
            str = "android.widget." + qualifiedName;
            if (str.equals(currentViewGroupName)) {
                closesCurrentViewGroup = true;
            }

            // Try to find class in default package
            if (qualifiedName.equals(currentViewGroupName)) {
                closesCurrentViewGroup = true;
            }
        } else {
            if (qualifiedName.equals(currentViewGroupName)) {
                closesCurrentViewGroup = true;
            }
        }

        if (closesCurrentViewGroup) {
            currentViewGroup = viewGroupStack.pop();
        }
    }

    ViewGroup getCurrentView() {
        return currentViewGroup;
    }

    View getLayoutRootView() {
        return layoutRootView;
    }

    private View createView(String name, Context context, AttributeSet attrs) {
        try {
            Class<?> clazz = Class.forName(name);
            Class<?>[] signature = new Class[] { Context.class, AttributeSet.class };
            Constructor<?> c = clazz.getConstructor(signature);
            Object[] params = new Object[] { context, attrs };
            View v = (View) c.newInstance(params);
            return v;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    private void addView(View view, AttributeSet attrs) {

        ViewGroup.LayoutParams layoutParams;

        if (currentViewGroup != null) {
            currentViewGroup.addView(view);
            layoutParams = currentViewGroup.generateLayoutParams(attrs);
        } else {
            if (root == null) {
                layoutParams = new FrameLayout.LayoutParams(context, attrs);
            } else {
                layoutParams = root.generateLayoutParams(attrs);
            }
        }
        view.setLayoutParams(layoutParams);

        if (layoutRootView == null) {
            layoutRootView = view;
        }
    }
}

public class LayoutManager {

    public static View getLayout(Context context, int id, ViewGroup root) {
        NSData layoutDesc = context.getResources().getLayout(id);
        NSXMLParser xmlParser = new NSXMLParser(layoutDesc);
        xmlParser.setShouldProcessNamespaces(true);
        xmlParser.setShouldReportNamespacePrefixes(true);
        LayoutParser parser = new LayoutParser(context, root);
        xmlParser.setDelegate(parser);
        boolean success = xmlParser.parse();
        if (!success) {
            throw new InflateException("Unable to inflate layout: " + id);
        }

        return parser.getLayoutRootView();
    }
}
