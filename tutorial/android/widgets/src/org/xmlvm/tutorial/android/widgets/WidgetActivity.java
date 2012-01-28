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

package org.xmlvm.tutorial.android.widgets;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.Toast;

/**
 * 
 * This application demonstrates the various widgets that are available for use
 * in android. Widgets are mostly UI elements that can be used to enhance the
 * User Interface experience in an application. The android widgets are
 * available in the package <code> android.widget </code>. The widgets can be
 * implemented via the layout XML (which is followed in this example) or it can
 * be implemented programmatically. In this example, the implementation of
 * various widgets can be found in the file <code>res/layout/main.xml</code>.
 * The example is only the visual representation of the widgets and no handlers
 * are implemented for each of the widgets displayed.
 * 
 */
public class WidgetActivity extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);

        /*
         * The DatePicker can be initialized with a state using init method
         * which takes in the parameters like the year, month, date and a
         * listener when the date value is changed -
         * DatePicker.OnDateChangedListener.
         */
        DatePicker dp = (DatePicker) this.findViewById(R.id.datepicker);
        dp.init(2008, 1, 27, null);

        /*
         * The progress rendered by the ProgressBar can be controlled using the
         * setProgress method
         */
        ProgressBar mProgress = (ProgressBar) findViewById(R.id.progress_horiz);
        mProgress.setProgress(75);

        Button button = (Button) findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                /*
                 * A Toast serves as a notification that pops on the window and
                 * remains visible for certain period of time and fades out
                 * automatically.
                 */
                Toast.makeText(getBaseContext(), "Button clicked", Toast.LENGTH_LONG).show();
            }
        });

        /*
         * The Spinner widget is obtained from the layout with findViewById().
         * Each item in the string array -color_array which is defined in
         * res/values/strings.xml is bound with initial appearence for Spinner
         * using createFromResource() android.R.layout.simple_spinner_item and
         * simple_spinner_dropdown_item are standard layouts defined by the
         * platform. ArrayAdapter is set to associate all of its items with the
         * Spinner using setAdapter().
         */
        Spinner spinner = (Spinner) findViewById(R.id.spinner);
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(this,
                R.array.color_array, android.R.layout.simple_spinner_item);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter(adapter);
    }
}