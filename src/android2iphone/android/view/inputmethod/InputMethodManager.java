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

package android.view.inputmethod;

import org.xmlvm.iphone.UIView;

import android.internal.IBinderImpl;
import android.os.IBinder;

public final class InputMethodManager {

    public final static int HIDE_NOT_ALWAYS = 2;

    public boolean hideSoftInputFromWindow(IBinder windowToken, int flags) {
        if ((flags & HIDE_NOT_ALWAYS) != 0) {
            resignFirstResponderForViewHierarchy(((IBinderImpl) windowToken).getView()
                    .xmlvmGetUIView());
        }
        return false;
    }

    /**
     * Under Android it is sufficient to hide the keyboard for the top-level
     * widget of a view hierarchy. iPhone requires that the specific widget that
     * caused the soft keyboard to open to resign as first responder. We
     * therefore have to recurse through the view hierarchy.
     * 
     * @param view
     *            UIView to resign as first responder.
     */
    private void resignFirstResponderForViewHierarchy(UIView view) {
        view.resignFirstResponder();
        for (UIView subview : view.getSubviews()) {
            resignFirstResponderForViewHierarchy(subview);
        }
    }
}
