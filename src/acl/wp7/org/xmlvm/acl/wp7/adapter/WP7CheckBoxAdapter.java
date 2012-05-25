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

package org.xmlvm.acl.wp7.adapter;

import org.xmlvm.acl.common.adapter.CheckBoxAdapter;
import org.xmlvm.acl.wp7.objects.WP7View;

import Compatlib.System.Boolean;
import Compatlib.System.Object;
import Compatlib.System.Windows.RoutedEventArgs;
import Compatlib.System.Windows.RoutedEventHandler;
import android.widget.CheckBox;
import android.widget.CompoundButton;

/**
 *
 */
public class WP7CheckBoxAdapter extends WP7View implements CheckBoxAdapter {

    private CheckBox checkBox;

    public WP7CheckBoxAdapter(CheckBox checkBox) {
        super(checkBox);
        this.checkBox = checkBox;
        this.setElement(new Compatlib.System.Windows.Controls.CheckBox());
        ((Compatlib.System.Windows.Controls.CheckBox)this.getElement()).Click.__add(new RoutedEventHandler(this, new Compatlib.System.String("checkbox_onClick")));
    }
    
    public void checkbox_onClick(Object sender, RoutedEventArgs e) {
        Boolean isChecked = ((Compatlib.System.Windows.Controls.CheckBox)this.getElement()).getIsChecked();
        if(isChecked!=null) {
            ((Compatlib.System.Windows.Controls.CheckBox)this.getElement()).setIsChecked(!isChecked.getValue());
        }
        this.checkBox.setChecked(!checkBox.isChecked());
        this.checkBox.xmlvmSetDrawableState(checkBox.isChecked() ? CompoundButton.CHECKED_STATE_SET : this.checkBox.EMPTY_STATE_SET);
    }

    @Override
    public void setOn(boolean checked) {
        ((Compatlib.System.Windows.Controls.CheckBox)this.getElement()).setIsChecked(checked);
    }

    @Override
    public boolean isOn() {
        return ((Compatlib.System.Windows.Controls.CheckBox)this.getElement()).getIsChecked().getValue();
    }

}
