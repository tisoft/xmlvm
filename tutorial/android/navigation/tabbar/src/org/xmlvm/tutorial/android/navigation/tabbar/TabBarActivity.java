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

public class TabBarActivity extends TabActivity {

    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        Resources r = getResources();
        TabHost host = getTabHost();
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