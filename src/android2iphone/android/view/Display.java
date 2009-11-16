/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package android.view;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIScreen;

public class Display {
    private Activity activity;

    public Display(Activity activity) {
        this.activity = activity;
    }

    /**
     * Return the current width of the screen TODO: Implement for real. This is
     * only a dummy.
     */
    public int getWidth() {
        CGSize s = UIScreen.mainScreen().getBounds().size;
        return (int)(activity.getRequestedOrientation() == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE ? s.height : s.width);
    }

    /**
     * Return the current height of the screen TODO: Implement for real. This is
     * only a dummy.
     */
    public int getHeight() {
        CGSize s = UIScreen.mainScreen().getBounds().size;
        return (int)(activity.getRequestedOrientation() == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE ? s.width : s.height);
    }
}
