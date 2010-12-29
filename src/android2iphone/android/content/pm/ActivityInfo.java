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

package android.content.pm;

/**
 * <i>(XMLVM Compatibility Class)</i>
 * <p>
 * Information you can retrieve about a particular application activity or
 * receiver. This corresponds to information collected from the
 * AndroidManifest.xml's <activity> and <receiver> tags.
 */
public class ActivityInfo {
    public static final int SCREEN_ORIENTATION_LANDSCAPE = 0;
    public static final int SCREEN_ORIENTATION_PORTRAIT  = 1;
    public static final int SCREEN_ORIENTATION_USER      = 2;
    public static final int SCREEN_ORIENTATION_BEHIND    = 3;
    public static final int SCREEN_ORIENTATION_SENSOR    = 4;
    public static final int SCREEN_ORIENTATION_NOSENSOR  = 5;
}
