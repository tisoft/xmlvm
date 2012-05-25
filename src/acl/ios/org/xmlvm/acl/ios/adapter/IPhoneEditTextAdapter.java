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

import org.xmlvm.acl.common.adapter.EditTextAdapter;
import org.xmlvm.acl.common.subsystems.CommonTextFieldDelegate;
import org.xmlvm.acl.ios.subsystems.IPhoneTextFieldDelegate;
import org.xmlvm.iphone.UILabel;
import org.xmlvm.iphone.UITextBorderStyle;
import org.xmlvm.iphone.UITextField;

import android.widget.TextView;

/**
 *
 */
public class IPhoneEditTextAdapter extends IPhoneTextViewAdapter implements EditTextAdapter {

    /**
     * @param textView
     */
    public IPhoneEditTextAdapter(TextView textView) {
        super(textView);
        UITextField field = new UITextField();
        field.setBorderStyle(UITextBorderStyle.Bezel);
        field.setUserInteractionEnabled(true);
        this.setView(field);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.EditTextAdapter#setSecureTextEntry(boolean)
     */
    @Override
    public void setSecureTextEntry(boolean b) {
        ((UITextField)this.getView()).setSecureTextEntry(b);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.EditTextAdapter#setDelegate(org.xmlvm.common.subsystems.CommonDeviceTextFieldDelegate)
     */
    @Override
    public void setDelegate(CommonTextFieldDelegate iTextFieldDelegate) {
        ((UITextField)this.getView()).setDelegate(((IPhoneTextFieldDelegate)iTextFieldDelegate).getUITextFieldDelegate());
    }
    
    @Override
    public void setPlaceholder(String string) {
        ((UITextField)this.getView()).setPlaceholder(string);
    }

}
