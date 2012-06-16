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

import org.xmlvm.acl.common.adapter.CheckBoxAdapter;
import org.xmlvm.acl.common.objects.CommonView;

import android.content.Context;
import android.graphics.RectF;
import android.internal.Assert;
import android.internal.CommonDeviceAPIFinder;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;

public class CheckBox extends CompoundButton {
    
    public static final float kSwitchButtonWidth  = CommonDeviceAPIFinder.instance().getProperties().getSwitchButtonWidth();
    public static final float kSwitchButtonHeight = CommonDeviceAPIFinder.instance().getProperties().getSwitchButtonHeight();

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
                            new RectF(a.x, a.y, (int) (a.x + kSwitchButtonWidth),
                                    (int) (a.y + kSwitchButtonHeight)));
        }
    }

    @Override
    public boolean isChecked() {
        return ((CheckBoxAdapter) xmlvmGetViewHandler().getContentView()).isOn();
    }

    @Override
    public void setChecked(boolean checked) {
        ((CheckBoxAdapter) xmlvmGetViewHandler().getContentView()).setOn(checked);
    }

    public void setSelected(boolean b) {
        // TODO Auto-generated method stub

    }

    @Override
    protected CommonView xmlvmNewCommonDeviceView(AttributeSet attrs) {
        return CommonDeviceAPIFinder.instance().getWidgetFactory().createCheckBox(this);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension((int) kSwitchButtonWidth + paddingLeft + paddingRight + 2
                * xmlvmGetInsetsX(), (int) kSwitchButtonHeight + paddingTop
                + paddingBottom + 2 * xmlvmGetInsetsY());
    }

    @Override
    protected boolean setFrame(int left, int top, int right, int bottom) {
        int insetsX = xmlvmGetInsetsX();
        int insetsY = xmlvmGetInsetsY();
        return super.setFrame(left + paddingLeft + insetsX, top + paddingTop + insetsY, right
                - paddingRight - insetsX, bottom - paddingBottom - insetsY);
    }

    @Override
    protected void xmlvmUpdateView(boolean checked) {
        // TODO Auto-generated method stub
        Log.w("xmlvm", "CheckBox.xmlvmUpdateView() not implemented");
    }

    @Override
    public void setText(String text) {
        if (text.length() > 0) {
            Assert.FAIL("setText() not supported by UISwitch");
        }
    }
    
    public OnCheckedChangeListener getOnCheckedChangeListener() {
        return this.onCheckedChangeListener;
    }
    
}
