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

package org.xmlvm.acl.ios.adapter;

import org.xmlvm.acl.common.adapter.AlertDialogAdapter;
import org.xmlvm.iphone.UIAlertView;
import org.xmlvm.iphone.UIAlertViewDelegate;

import android.app.AlertDialog;

/**
 *
 */
public class IPhoneAlertDialogAdapter implements AlertDialogAdapter {

    private UIAlertView alertView;
    
    public IPhoneAlertDialogAdapter(String title, String message, final AlertDialog alertDialog, String cancelButtonTitle) {
        this.alertView = new UIAlertView(title, message, new UIAlertViewDelegate() {
            @Override
            public void clickedButtonAtIndex(UIAlertView alertView, int buttonIndex) {
                alertDialog.clickedButtonAtIndex(buttonIndex);
            }
        }, cancelButtonTitle);
    }

    @Override
    public void setTitle(String title) {
        this.alertView.setTitle(title);
    }

    @Override
    public void setMessage(String message) {
        this.alertView.setMessage(message);        
    }

    @Override
    public void addButtonWithTitle(String title) {
        this.alertView.addButtonWithTitle(title);
    }

    @Override
    public void show() {
        this.alertView.show();
    }
    
    
}
