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

package org.xmlvm.tutorial.android.helloworld.i18n;

import android.app.Activity;
import android.os.Bundle;

/**
 * This variation of Hello World is localized for different languages (for now
 * English and German). The implementation is identical to the declarative
 * version of Hello World, i.e., the main view is defined by a layout resource
 * via <code>R.layout.main</code>. The TextView in the layout resource
 * references a string that can be internationalized. In this particular
 * example, the English version of the string is in file
 * <code>res/values/strings.xml</code> whereas the German translation of the
 * string is located in file <code>res/values-de/strings.xml</code> ('de' stands
 * for 'deutsch', i.e., German). Depending on the settings of a device either
 * one of the string resources will be used. Technically, the file
 * <code>res/values/strings.xml</code> is the default version for all devices
 * not set to the German language.
 */
public class HelloWorldActivity extends Activity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
    }
}