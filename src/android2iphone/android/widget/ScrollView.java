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

import org.xmlvm.iphone.CGPoint;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIScrollView;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.Set;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIView;

public class ScrollView extends FrameLayout {

    private int viewOriginLeft = 0;
    private int viewOriginTop  = 0;

    public ScrollView(Context c) {
        super(c);
    }

    public ScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    protected UIView xmlvmNewUIView(AttributeSet attrs) {
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
        //TODO if we don't do this, the scroll view will intercept motion events.
        view.setScrollEnabled(false);
        return view;
    }

    public void smoothScrollBy(int dx, int dy) {
        if (getChildCount() == 0) {
            return;
        }

        viewOriginLeft += dx;
        viewOriginTop += dy;
        CGRect rect = new CGRect(0, 0, getChildAt(0).getWidth(), getChildAt(0).getHeight());
        viewOriginLeft = Math.min((int) rect.size.width - getWidth(), viewOriginLeft);
        viewOriginLeft = Math.max(0, viewOriginLeft);
        viewOriginTop = Math.min((int) rect.size.height - getHeight(), viewOriginTop);
        viewOriginTop = Math.max(0, viewOriginTop);
        CGPoint offset = new CGPoint(viewOriginLeft, viewOriginTop);
        ((UIScrollView) xmlvmGetViewHandler().getContentView()).setContentOffset(offset, true);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);

        // if (!mFillViewport) {
        // return;
        // }

        final int heightMode = MeasureSpec.getMode(heightMeasureSpec);
        if (heightMode == MeasureSpec.UNSPECIFIED) {
            return;
        }

        if (getChildCount() > 0) {
            final View child = getChildAt(0);
            int height = getMeasuredHeight();
            if (child.getMeasuredHeight() < height) {
                final FrameLayout.LayoutParams lp = (LayoutParams) child.getLayoutParams();

                int childWidthMeasureSpec = getChildMeasureSpec(widthMeasureSpec, paddingLeft
                        + paddingRight, lp.width);
                height -= paddingTop;
                height -= paddingBottom;
                int childHeightMeasureSpec = MeasureSpec.makeMeasureSpec(height,
                        MeasureSpec.EXACTLY);

                child.measure(childWidthMeasureSpec, childHeightMeasureSpec);
            }
        }
    }

    // @Override
    // protected void onLayout(boolean changed, int l, int t, int r, int b) {
    // super.onLayout(changed, l, t, r, b);
    // mIsLayoutDirty = false;
    // // Give a child focus if it needs it
    // if (mChildToScrollTo != null && isViewDescendantOf(mChildToScrollTo,
    // this)) {
    // scrollToChild(mChildToScrollTo);
    // }
    // mChildToScrollTo = null;
    //
    // // Calling this with the present values causes it to re-clam them
    // scrollTo(mScrollX, mScrollY);
    // }

    @Override
    protected void measureChildWithMargins(View child, int parentWidthMeasureSpec, int widthUsed,
            int parentHeightMeasureSpec, int heightUsed) {
        final MarginLayoutParams lp = (MarginLayoutParams) child.getLayoutParams();

        final int childWidthMeasureSpec = getChildMeasureSpec(parentWidthMeasureSpec, paddingLeft
                + paddingRight + lp.leftMargin + lp.rightMargin + widthUsed, lp.width);
        final int childHeightMeasureSpec = MeasureSpec.makeMeasureSpec(lp.topMargin
                + lp.bottomMargin, MeasureSpec.UNSPECIFIED);

        child.measure(childWidthMeasureSpec, childHeightMeasureSpec);
    }

}
