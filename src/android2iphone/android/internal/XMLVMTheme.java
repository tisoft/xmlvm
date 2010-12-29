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

package android.internal;

import android.R;

/**
 * @author arno
 * 
 */
public class XMLVMTheme {

    /**
     * Background color used in various widgets
     */
    public static final int BACKGROUND_COLOR;
    /**
     * Text color used in widgets
     */
    public static final int TEXT_COLOR;
    /**
     * Window background color
     */
    public static final int DECOR_COLOR;
    /** 
     * Toast background 
     */
    public static final int TOAST_COLOR;
    /**
     * UIButton background
     */
    public static final int BUTTONTEXT_COLOR;
    
    /**
     * No background
     */
    public static final int NOBACKGROUND_COLOR;
    
    static {
        if (AndroidManifest.getTheme() == R.style.Theme_Light) {
            BACKGROUND_COLOR = 0xFFFFFFFF;
            TEXT_COLOR = 0xFF000000;
            DECOR_COLOR = 0xFFFFFFFF;
            TOAST_COLOR = 0xAAFFFFFF;
        } else {
            BACKGROUND_COLOR = 0xFF000000;
            TEXT_COLOR = 0xFFFFFFFF;
            DECOR_COLOR = 0xFF191919;
            TOAST_COLOR = 0xAA000000;
        }
        BUTTONTEXT_COLOR = 0xFF324F85;
        NOBACKGROUND_COLOR = 0x00000000;
    }
}
