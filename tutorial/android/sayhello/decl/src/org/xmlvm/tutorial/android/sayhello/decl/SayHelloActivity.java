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

package org.xmlvm.tutorial.android.sayhello.decl;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

/**
 * This version of SayHello makes use of layout resources. The layout is
 * described in file <code>res/layout/main.xml</code>. Widgets that need to be
 * referenced from this layout (the TextView and the EditText) are located via
 * their resource ID as defined in the R-class. Note that the click-listener is
 * installed via the layout resource.
 */
public class SayHelloActivity extends Activity {
    private EditText editText;
    private TextView textView;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);

        /*
         * Use the method findViewById() to locate the widget with the
         * appropriate ID. The R-class is used to specify the ID. The R-class is
         * generated from the information contained in the layout-file main.xml.
         * Since findViewById() returns an instance of android.view.View, it
         * needs to be downcast to the proper type.
         */
        editText = (EditText) findViewById(R.id.editText);
        textView = (TextView) findViewById(R.id.textView);
    }

    /*
     * This method acts as the click listener. Note that it is not installed
     * programmatically, but defined as the click listener in main.xml via the
     * XML-attribute onClick. The method name can be arbitrary but its signature
     * must be a void return type and exactly one input argument of type
     * android.view.View. In this example that input parameter will represent
     * the button that caused the click listener to be called.
     */
    public void onClick(View view) {
        textView.setText("Hello, " + editText.getText());
    }
}