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

import java.util.Set;

import org.xmlvm.acl.common.adapter.CheckBoxAdapter;
import org.xmlvm.acl.ios.objects.IPhoneView;
import org.xmlvm.iphone.UIControl;
import org.xmlvm.iphone.UIControlDelegate;
import org.xmlvm.iphone.UIControlEvent;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UISwitch;
import org.xmlvm.iphone.UITouch;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;

/**
 *
 */
public class IPhoneCheckBoxAdapter extends IPhoneView implements CheckBoxAdapter {

    private CheckBox checkBox;
    
    public IPhoneCheckBoxAdapter(final CheckBox checkBox) {
        super(checkBox);
        this.checkBox = checkBox;
        // TODO mapping a CheckBox to a UISwitch is not entirely correct since
        // the latter does not setText()
        final UISwitch uiSwitch = new UISwitch();
        uiSwitch.addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControl sender, int eventType) {
                if (checkBox.getOnCheckedChangeListener() != null) {
                    checkBox.getOnCheckedChangeListener().onCheckedChanged(checkBox, uiSwitch.isOn());
                }
            }

        }, UIControlEvent.ValueChanged);
        this.setView(uiSwitch);

    }
    
    @Override
    public void setOn(boolean checked) {
        ((UISwitch)this.getView()).setOn(checked);
    }

    @Override
    public boolean isOn() {
        return ((UISwitch)this.getView()).isOn();
    }
    
    @Override
    public RectF getFrame() {
        return new RectF(0, 0, (int) UISwitch.kSwitchButtonWidth, (int) UISwitch.kSwitchButtonHeight);
    }

    @Override
    public boolean xmlvmTouchesEvent(int action, Set<UITouch> touches, UIEvent event) {
        if (action == MotionEvent.ACTION_UP) {
            checkBox.setChecked(!checkBox.isChecked());
            checkBox.xmlvmSetDrawableState(checkBox.isChecked() ? CompoundButton.CHECKED_STATE_SET
                    : ((View) this.getAndroidView()).EMPTY_STATE_SET);
        }

        return super.xmlvmTouchesEvent(action, touches, event);
    }
    
}
