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

package org.xmlvm.tutorial.android.navigation.tabbar;

import android.app.TabActivity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.widget.TabHost;

/**
 * This application demonstrates the use of a TabBar. A TabBar allows to select
 * from a variety of options. In contrast to a menu, a TabBar is permanently
 * shown on the top of the screen. Each tab is associated with its own Activity
 * that will be called when selecting that particular tab. In this example, the
 * TabBar contains fours tabs called "Email", "Map", "Dial", and "Info". System
 * icons are used for each tab. For all tabs, a helper Activity called
 * DisplayActivity is called when the tab is selected. The Intent used to launch
 * DisplayActivity is associated with data passed to this activity. Note that
 * the main activity TabBarActivity is derived from base class TabActivity.
 */
public class TabBarActivity extends TabActivity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        /*
         * Retrieve the container for a tabbed window view. This object holds
         * two children: a set of tab labels that the user clicks to select a
         * specific tab, and a FrameLayout object that displays the contents of
         * that page.
         */
        TabHost host = getTabHost();
        /*
         * The resource object is used to load system icons to be used in this
         * TabBar.
         */
        Resources r = getResources();
        /*
         * Add the individual tabs to the TabBar. This is also an example of a
         * so-called fluent-interface where each method returns a reference to
         * an object. This allows the concatenation of several method
         * invocations into one "sentence" (hence the term fluent-interface).
         * For each tab, the following information is required: (1) tag of the
         * tab (specified as the parameter of method newTabSpec()), (2) an
         * indicator consisting of a label and an icon, and (3) the content to
         * be shown when the tab is selected. The latter is specified via an
         * Intent. In this example, all tabs call DisplayActivity with a
         * parameter specifying from which tab it was invoked.
         */
        host.addTab(host.newTabSpec("Email")
                .setIndicator("Email", r.getDrawable(R.drawable.ic_dialog_email))
                .setContent(new Intent(this, DisplayActivity.class).putExtra("TAB", "Email")));
        host.addTab(host.newTabSpec("Map")
                .setIndicator("Map", r.getDrawable(R.drawable.ic_dialog_map))
                .setContent(new Intent(this, DisplayActivity.class).putExtra("TAB", "Map")));
        host.addTab(host.newTabSpec("Dial")
                .setIndicator("Dial", r.getDrawable(R.drawable.ic_dialog_dialer))
                .setContent(new Intent(this, DisplayActivity.class).putExtra("TAB", "Dial")));
        host.addTab(host.newTabSpec("Info")
                .setIndicator("Info", r.getDrawable(R.drawable.ic_dialog_info))
                .setContent(new Intent(this, DisplayActivity.class).putExtra("TAB", "Info")));
    }
}