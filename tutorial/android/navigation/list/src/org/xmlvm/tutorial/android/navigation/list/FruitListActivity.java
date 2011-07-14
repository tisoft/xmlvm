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

package org.xmlvm.tutorial.android.navigation.list;

import android.app.AlertDialog;
import android.app.ListActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

/**
 * This application is an example of a ListActivity that displays an arbitrary
 * number of items as a vertical list. A list item can be an arbitrary view. In
 * this example a list item is a TextView showing one of several fruit names
 * hardcoded into the application. Note that the base class of this example is
 * ListActivity.
 */
public class FruitListActivity extends ListActivity {

    final private static String[] FRUITS = { "Apple", "Plum", "Pear", "Peach", "Orange", "Cherry",
            "Pineapple", "Strawberry", "Lemon", "Blackberry", "Grape" };

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        /*
         * This example uses an ArrayAdapter to fill the ListActivity with
         * specific values. The ArrayAdapter needs a reference to a layout item
         * representing a TextView and a String array with the values to be
         * shown. The TextView is defined in layout resource
         * res/layout/list_item.xml
         */
        setListAdapter(new ArrayAdapter<String>(this, R.layout.list_item, FRUITS));
        /*
         * Retrieve the ListView.
         */
        ListView listView = getListView();
        /*
         * Set a click listener that will be invoked whenever an item from the
         * list has been selected.
         */
        listView.setOnItemClickListener(new OnItemClickListener() {

            /*
             * Callback that will be invoked whenever an item from the list has
             * been selected. 'parent' is the AdapterView where the click
             * happened. 'view' is the view within the AdapterView that was
             * clicked (this will be a view provided by the adapter). 'position'
             * is the position of the view in the adapter. 'id' is the row id of
             * the item that was clicked.
             */
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                /*
                 * Whenever an item of the ListActivity is selected, show an
                 * AlertDialog to inform which item was selected. The way the
                 * AlertDialog is built up is an example of a fluent interface.
                 */
                AlertDialog.Builder builder = new AlertDialog.Builder(FruitListActivity.this);
                builder.setTitle("Selection").setMessage(((TextView) view).getText())
                        .setCancelable(false).setPositiveButton("Ok", null);
                /*
                 * Create and show the model AlertDialog.
                 */
                builder.create().show();
            }

        });

    }
}