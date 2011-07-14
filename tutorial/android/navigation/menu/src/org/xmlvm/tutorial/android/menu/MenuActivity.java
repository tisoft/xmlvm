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

package org.xmlvm.tutorial.android.menu;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.TextView;

/**
 * This application demonstrates the use of Android's physical menu button that
 * each Android device possesses. The menu will show in the bottom half of the
 * screen when pressing the menu button. In this example, the menu consists of
 * three entries: Add, Delete, Search. Selecting a specific menu option will
 * display the selected option in a TextView on the main view.
 */
public class MenuActivity extends Activity {

    private TextView lblItem;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);

        lblItem = (TextView) findViewById(R.id.lblItem);
    }

    /*
     * Initialize the contents of the Activity's standard options menu. You
     * should place your menu items in to 'menu'. The default implementation
     * populates the menu with standard system menu items.
     */
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        /*
         * Retrieve the MenuInflater for this activity. It is used to
         * instantiate menu XML files into Menu objects.
         */
        MenuInflater inflater = getMenuInflater();
        /*
         * Load the file res/menu/options.xml
         */
        inflater.inflate(R.menu.options, menu);
        return true;
    }

    /*
     * This methom will be called whenever the user selected an option from the
     * menu.
     */
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        /*
         * Depending on which of the three menu options the user selected, set
         * an appropriate label in the main view's TextView.
         */
        switch (item.getItemId()) {
        case R.id.mnuAdd:
            lblItem.setText("Add");
            return true;
        case R.id.mnuDelete:
            lblItem.setText("Delete");
            return true;
        case R.id.mnuSearch:
            lblItem.setText("Search");
            return true;
        default:
            return super.onOptionsItemSelected(item);
        }
    }

}