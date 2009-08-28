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

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.AbsoluteLayout.LayoutParams;

/**
 * @author arno
 * 
 */
public class Layout {

    private Map<Integer, View> viewMap        = new HashMap<Integer, View>();
    private Stack<ViewGroup>   viewGroupStack = new Stack<ViewGroup>();
    private ViewGroup          currentViewGroup;
    private Context            context;

    // TODO hack!
    private int                currentY       = 0;

    public Layout(Context context) {
        this.context = context;
    }

    public void beginLinearLayout(ViewParameters params) {
        currentViewGroup = new ViewGroup(context);
        viewGroupStack.push(currentViewGroup);
    }

    public void endLinearLayout() {
        currentViewGroup = viewGroupStack.pop();
    }

    public View getTopView() {
        return currentViewGroup;
    }

    /**
     * @param params
     */
    public void addEditText(ViewParameters params) {
        EditText editText = new EditText(context);
        addView(editText, params);
    }

    /**
     * @param params
     */
    public void addTextView(ViewParameters params) {
        TextView textView = new TextView(context);
        addView(textView, params);
    }

    /**
     * @param params
     */
    public void addButton(ViewParameters params) {
        Button button = new Button(context);
        if (params.text != null) {
            button.setText(params.text);
        }
        addView(button, params);
    }

    private void addView(View view, ViewParameters params) {
        viewMap.put(new Integer(params.id), view);
        // TODO should do something with the params
        LayoutParams p = new LayoutParams(320, 30, 0, currentY);
        currentY += 30;
        currentViewGroup.addView(view, p);
    }

    /**
     * @param id
     * @return
     */
    public View findViewById(int id) {
        return viewMap.get(new Integer(id));
    }
}
