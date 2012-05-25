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
import android.view.MotionEvent;
import android.view.View;
import java.util.Set;

import org.xmlvm.acl.common.objects.CommonView;

/* TODO: This implementation of ProgressBar is currently hard coded
 * for indeterminate mode.
 */
public class ProgressBar extends View {

    final private int SMALL_SPINNER_SIZE = 21;
    final private int LARGE_SPINNER_SIZE = 36;

    public ProgressBar(Context c) {
        super(c);
        initProgressBar(c, null);
    }

    public ProgressBar(Context c, AttributeSet attrs) {
        super(c, attrs);
        initProgressBar(c, attrs);
    }

    @Override
    protected CommonView xmlvmNewCommonDeviceView(AttributeSet attrs) {
        return CommonDeviceAPIFinder.instance().getWidgetFactory().createProgressBar(this);
    }

    private void initProgressBar(Context c, AttributeSet attrs) {
        if (attrs != null && attrs.getAttributeCount() > 0) {
            parseProgressBarAttributes(attrs);
        }
    }

    private void parseProgressBarAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);
        
        // Implementation of attribute parsing
        
        setIgnoreRequestLayout(false);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(LARGE_SPINNER_SIZE + paddingLeft + paddingRight, LARGE_SPINNER_SIZE
                + paddingTop + paddingBottom);
    }

}
