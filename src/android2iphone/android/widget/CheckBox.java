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

package android.widget;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UISwitch;

import android.content.Context;
import android.internal.Assert;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import org.xmlvm.iphone.UIView;

public class CheckBox extends CompoundButton {

    public CheckBox(Context c) {
        super(c);
    }

    public CheckBox(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    public void setLayoutParams(ViewGroup.LayoutParams l) {
        layoutParams = l;

        if (l instanceof AbsoluteLayout.LayoutParams) {
            AbsoluteLayout.LayoutParams a = (AbsoluteLayout.LayoutParams) l;
            xmlvmGetViewHandler().getMetricsView()
                    .setFrame(
                            new CGRect(a.x, a.y, UISwitch.kSwitchButtonWidth,
                                    UISwitch.kSwitchButtonHeight));
        }
    }

    @Override
    public boolean isChecked() {
        return ((UISwitch) xmlvmGetViewHandler().getContentView()).isOn();
    }

    @Override
    public void setChecked(boolean checked) {
        ((UISwitch) xmlvmGetViewHandler().getContentView()).setOn(checked);
    }

    public void setSelected(boolean b) {
        // TODO Auto-generated method stub

    }

    @Override
    protected UIView xmlvmNewUIView(AttributeSet attrs) {
        // TODO mapping a CheckBox to a UISwitch is not entirely correct since
        // the latter does not setText()
        return new UISwitch();
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension((int) UISwitch.kSwitchButtonWidth + paddingLeft + paddingRight,
                (int) UISwitch.kSwitchButtonHeight + paddingTop + paddingBottom);
    }

    @Override
    protected void xmlvmUpdateUIView(boolean checked) {
        // TODO Auto-generated method stub
        Log.w("xmlvm", "CheckBox.xmlvmUpdateUIView() not implemented");
    }

    @Override
    public void setText(String text) {
        Assert.FAIL("setText() not supported by UISwitch");
    }

}
