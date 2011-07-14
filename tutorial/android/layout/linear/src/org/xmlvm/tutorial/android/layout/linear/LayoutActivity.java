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

package org.xmlvm.tutorial.android.layout.linear;

import android.app.Activity;
import android.os.Bundle;

/**
 * This example shows the use of a LinearLayout for both portrait and landscape
 * mode. The application displays six buttons that are arranged according to the
 * screen orientation. The layout resource is referenced via identifier
 * <code>R.layout.main</code>. Two different versions of this layout resource
 * exist and are picked according to the current screen orientation:
 * <code>res/layout/main.xml</code> is the layout resource used in portrait mode
 * and <code>res/layout-land/main.xml</code> is the layout resource used when
 * the device is in landscape mode.
 */
public class LayoutActivity extends Activity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
    }
}