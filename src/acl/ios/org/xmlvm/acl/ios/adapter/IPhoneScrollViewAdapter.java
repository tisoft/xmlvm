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

import org.xmlvm.acl.common.adapter.ScrollViewAdapter;
import org.xmlvm.acl.common.objects.CommonView;
import org.xmlvm.acl.ios.objects.IPhoneView;
import org.xmlvm.iphone.UIScrollView;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIEvent;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.widget.ScrollView;

/**
 *
 */
public class IPhoneScrollViewAdapter extends IPhoneView implements ScrollViewAdapter {

    /**
     * @param scrollView
     */
    public IPhoneScrollViewAdapter(ScrollView scrollView) {
        super(scrollView);
        UIScrollView view = new UIScrollView() {

            @Override
            public void touchesBegan(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_DOWN, touches, event);
            }

            @Override
            public void touchesMoved(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_MOVE, touches, event);
            }

            @Override
            public void touchesCancelled(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_CANCEL, touches, event);
            }

            @Override
            public void touchesEnded(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_UP, touches, event);
            }
        };
        this.setView(view);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.ScrollViewAdapter#setScrollEnabled(boolean)
     */
    @Override
    public void setScrollEnabled(boolean b) {
        ((UIScrollView)this.getView()).setScrollEnabled(b);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.ScrollViewAdapter#setContentOffset(int, int, boolean)
     */
    @Override
    public void setContentOffset(RectF rect, boolean b) {
        ((UIScrollView)this.getView()).setContentOffset(IPhoneView.toCGPoint(rect), b);
    }

}
