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

package org.xmlvm.tutorial.android.sayhello.prog;

import android.app.Activity;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * The SayHello application allows the user to enter a name and upon pressing a
 * button, that name is written out as a greeting in a TextView. SayHello
 * consists of three widgets: an EditText (for entering the name), a TextView
 * (for displaying a greeting), and a Button. Those widgets are arranged
 * vertically with the help of a LinearLayout. This version of SayHello builds
 * up the user interface programmatically without the use of a layout resource.
 */
public class SayHelloActivity extends Activity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        /*
         * Create a vertically aligned LinearLayout that is used as a container
         * for the three widgets.
         */
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);

        /*
         * Create the EditText where the user can enter a name. The EditText is
         * given various layout parameters specific to a LinearLayout such as
         * margins. After the EditText instance is created, it is added as a
         * child to the LinearLayout. The variable 'editText' has to be declared
         * final because it will be referenced inside an anonymous class (see
         * below).
         */
        final EditText editText = new EditText(this);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.FILL_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        params.leftMargin = params.rightMargin = params.topMargin = 50;
        params.bottomMargin = 25;
        params.gravity = Gravity.CENTER;
        layout.addView(editText, params);

        /*
         * Create the TextView that will show the greeting whenever the user
         * clicks the button. As with the EditText, the TextView is given
         * certain layout parameters specific to a LinearLayout. The variable
         * 'textView' has to be declared final because it will be referenced
         * inside an anonymous class (see below).
         */
        params = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT,
                LinearLayout.LayoutParams.WRAP_CONTENT);
        final TextView textView = new TextView(this);
        params.topMargin = params.bottomMargin = 25;
        params.gravity = Gravity.CENTER;
        layout.addView(textView, params);

        /*
         * Finally the Button is created, given the label "Say Hello" and added
         * to the LinearLayout.
         */
        Button button = new Button(this);
        button.setText("Say Hello");
        /*
         * Install an OnClickListener for the button. This is done by
         * instantiating an anonymous class implementing interface
         * OnClickListener. Whenever the user pressed the button, the onClick()
         * callback method is invoked.
         */
        button.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View v) {
                /*
                 * Read the name the user entered, prepend "Hello, " to the
                 * name, and display the resulting greeting in the TextView.
                 */
                textView.setText("Hello, " + editText.getText());

            }
        });
        layout.addView(button, params);

        setContentView(layout);
    }
}