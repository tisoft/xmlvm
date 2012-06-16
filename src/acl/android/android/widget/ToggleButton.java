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


import android.content.Context;
import android.internal.CommonDeviceAPIFinder;
import android.util.AttributeSet;

import org.xmlvm.acl.common.adapter.ToggleButtonAdapter;
import org.xmlvm.acl.common.objects.CommonView;

public class ToggleButton extends CompoundButton {

    public ToggleButton(Context c) {
        super(c);
        initToggleButton(c, null);
    }

    public ToggleButton(Context c, AttributeSet attrs) {
        super(c, attrs);
        initToggleButton(c, attrs);
    }

    private void initToggleButton(Context c, AttributeSet attrs) {
        if (attrs != null && attrs.getAttributeCount() > 0) {
            parseToggleButtonAttributes(attrs);
        }
    }

    private void parseToggleButtonAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);

        String value = attrs.getAttributeValue(null, "textOn");
        setTextOn(value != null ? value : "");
        value = attrs.getAttributeValue(null, "textOff");
        setTextOff(value != null ? value : "");

        setIgnoreRequestLayout(false);
    }

    @Override
    protected CommonView xmlvmNewCommonDeviceView(AttributeSet attrs) {
        return CommonDeviceAPIFinder.instance().getWidgetFactory().createToggleButton(this);
    }

    @Override
    public void setText(String text) {
        this.text = text;
        ((ToggleButtonAdapter) xmlvmGetViewHandler().getContentView()).setText(text);
        requestLayout();
    }

    void setTextOff(String textOff) {
        ((ToggleButtonAdapter) xmlvmGetViewHandler().getContentView()).setTextOff(textOff);
        requestLayout();
    }

    void setTextOn(String textOn) {
        ((ToggleButtonAdapter) xmlvmGetViewHandler().getContentView()).setTextOff(textOn);
        requestLayout();
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int minWidth = getSuggestedMinimumWidth();
        int minHeight = getSuggestedMinimumHeight();

        // TODO: Also consider the button's text size to determine its size
        setMeasuredDimension(minWidth, minHeight);
    }

    @Override
    protected void xmlvmUpdateView(boolean checked) {
        ((ToggleButtonAdapter) xmlvmGetViewHandler().getContentView()).setSelected(checked);
    }

}
