/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package android.view;

import java.util.HashMap;
import java.util.Set;

import org.xmlvm.iphone.CGPoint;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UIResponderDelegate;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.internal.Assert;
import android.internal.ResourceAttributes;
import android.util.AttributeSet;

/**
 * iPhone implementation of Android's View class.
 * 
 * @see http://developer.android.com/reference/android/view/View.html
 */

public class View {

    public static final int  NO_ID                  = 0xffffffff;
    public static final int  VISIBLE                = 0;
    public static final int  INVISIBLE              = 4;
    public static final int  GONE                   = 8;

    private static final int FORCE_LAYOUT           = 0x00001000;
    private static final int LAYOUT_REQUIRED        = 0x00002000;
    static final int         MEASURED_DIMENSION_SET = 0x00000800;

    private boolean          ignoreRequestLayout;
    private int              flags;
    protected int            widthMeasureSpec;
    protected int            heightMeasureSpec;

    /**
     * Copyright (C) 2006 The Android Open Source Project
     * 
     * A MeasureSpec encapsulates the layout requirements passed from parent to
     * child. Each MeasureSpec represents a requirement for either the width or
     * the height. A MeasureSpec is comprised of a size and a mode. There are
     * three possible modes:
     * <dl>
     * <dt>UNSPECIFIED</dt>
     * <dd>
     * The parent has not imposed any constraint on the child. It can be
     * whatever size it wants.</dd>
     * 
     * <dt>EXACTLY</dt>
     * <dd>
     * The parent has determined an exact size for the child. The child is going
     * to be given those bounds regardless of how big it wants to be.</dd>
     * 
     * <dt>AT_MOST</dt>
     * <dd>
     * The child can be as large as it wants up to the specified size.</dd>
     * </dl>
     * 
     * MeasureSpecs are implemented as ints to reduce object allocation. This
     * class is provided to pack and unpack the &lt;size, mode&gt; tuple into
     * the int.
     */
    public static class MeasureSpec {
        private static final int MODE_SHIFT  = 30;
        private static final int MODE_MASK   = 0x3 << MODE_SHIFT;

        /**
         * Measure specification mode: The parent has not imposed any constraint
         * on the child. It can be whatever size it wants.
         */
        public static final int  UNSPECIFIED = 0 << MODE_SHIFT;

        /**
         * Measure specification mode: The parent has determined an exact size
         * for the child. The child is going to be given those bounds regardless
         * of how big it wants to be.
         */
        public static final int  EXACTLY     = 1 << MODE_SHIFT;

        /**
         * Measure specification mode: The child can be as large as it wants up
         * to the specified size.
         */
        public static final int  AT_MOST     = 2 << MODE_SHIFT;

        /**
         * Creates a measure specification based on the supplied size and mode.
         * 
         * The mode must always be one of the following:
         * <ul>
         * <li>{@link android.view.View.MeasureSpec#UNSPECIFIED}</li>
         * <li>{@link android.view.View.MeasureSpec#EXACTLY}</li>
         * <li>{@link android.view.View.MeasureSpec#AT_MOST}</li>
         * </ul>
         * 
         * @param size
         *            the size of the measure specification
         * @param mode
         *            the mode of the measure specification
         * @return the measure specification based on size and mode
         */
        public static int makeMeasureSpec(int size, int mode) {
            return size + mode;
        }

        /**
         * Extracts the mode from the supplied measure specification.
         * 
         * @param measureSpec
         *            the measure specification to extract the mode from
         * @return {@link android.view.View.MeasureSpec#UNSPECIFIED},
         *         {@link android.view.View.MeasureSpec#AT_MOST} or
         *         {@link android.view.View.MeasureSpec#EXACTLY}
         */
        public static int getMode(int measureSpec) {
            return (measureSpec & MODE_MASK);
        }

        /**
         * Extracts the size from the supplied measure specification.
         * 
         * @param measureSpec
         *            the measure specification to extract the size from
         * @return the size in pixels defined in the supplied measure
         *         specification
         */
        public static int getSize(int measureSpec) {
            return (measureSpec & ~MODE_MASK);
        }

        /**
         * Returns a String representation of the specified measure
         * specification.
         * 
         * @param measureSpec
         *            the measure specification to convert to a String
         * @return a String with the following format: "MeasureSpec: MODE SIZE"
         */
        public static String toString(int measureSpec) {
            int mode = getMode(measureSpec);
            int size = getSize(measureSpec);

            StringBuilder sb = new StringBuilder("MeasureSpec: ");

            if (mode == UNSPECIFIED)
                sb.append("UNSPECIFIED ");
            else if (mode == EXACTLY)
                sb.append("EXACTLY ");
            else if (mode == AT_MOST)
                sb.append("AT_MOST ");
            else
                sb.append(mode).append(" ");

            sb.append(size);
            return sb.toString();
        }
    }

    public static interface OnTouchListener {
        /**
         * Called when a touch event is dispatched to a view. This allows
         * listeners to get a chance to respond before the target view.
         * 
         * @param v
         *            The view the touch event has been dispatched to.
         * @param event
         *            he MotionEvent object containing full information about
         *            the event.
         * 
         * @return True if the listener has consumed the event, false otherwise.
         */
        public boolean onTouch(View v, MotionEvent event);
    }

    public static interface OnClickListener {
        public void onClick(View view);
    }

    protected ViewGroup.LayoutParams layoutParams;
    protected int                    paddingLeft;
    protected int                    paddingRight;
    protected int                    paddingTop;
    protected int                    paddingBottom;
    private Context                  c;
    private UIView                   uiView;
    private ViewParent               parent;
    private OnTouchListener          listener;
    private UIResponderDelegate      responderDelegate;
    private int                      id;
    private int                      measuredWidth;
    private int                      measuredHeight;
    private int                      left;
    private int                      top;
    private int                      width;
    private int                      height;
    private int                      minimumWidth;
    private int                      minimumHeight;
    private int                      visibility;
    private Drawable                 backgroundDrawable;

    public View(Context c) {
        init(c, new ResourceAttributes(getContext(), "", new HashMap<String, String>()));
    }

    public View(Context c, AttributeSet attrs) {
        init(c, attrs);

        setIgnoreRequestLayout(true);
        parseAttributes(attrs);
        setIgnoreRequestLayout(false);
    }

    private void init(Context c, AttributeSet attrs) {
        this.c = c;
        uiView = xmlvmCreateUIView(attrs);

        responderDelegate = new UIResponderDelegate() {

            @Override
            public void touchesBegan(Set<UITouch> touches, UIEvent event) {
                processTouchesEvent(MotionEvent.ACTION_DOWN, touches, event);
            }

            @Override
            public void touchesMoved(Set<UITouch> touches, UIEvent event) {
                processTouchesEvent(MotionEvent.ACTION_MOVE, touches, event);
            }

            @Override
            public void touchesCancelled(Set<UITouch> touches, UIEvent event) {
                processTouchesEvent(MotionEvent.ACTION_CANCEL, touches, event);
            }

            @Override
            public void touchesEnded(Set<UITouch> touches, UIEvent event) {
                processTouchesEvent(MotionEvent.ACTION_UP, touches, event);
            }

        };

        uiView.setDelegate(responderDelegate);
    }

    public ViewGroup.LayoutParams getLayoutParams() {
        return layoutParams;
    }

    public void invalidate() {
        uiView.setNeedsDisplay();
    }

    public void setLayoutParams(ViewGroup.LayoutParams l) {
        layoutParams = l;
    }

    public final Context getContext() {
        return c;
    }

    public void bringToFront() {
        Assert.NOT_IMPLEMENTED();
    }

    public ViewParent getParent() {
        return parent;
    }

    public void setOnTouchListener(OnTouchListener listener) {
        this.listener = listener;
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        Assert.NOT_IMPLEMENTED();
    }

    private boolean processTouchesEvent(int action, Set<UITouch> touches, UIEvent event) {
        if (this.listener == null) {
            return false;
        }
        UITouch firstTouch = touches.iterator().next();
        CGPoint point = firstTouch.locationInView(uiView);
        MotionEvent motionEvent = new MotionEvent(action, (int) point.x, (int) point.y);
        return this.listener.onTouch(this, motionEvent);
    }

    protected UIView xmlvmCreateUIView(AttributeSet attrs) {
        UIView v = new UIView();
        return v;
    }

    public UIView xmlvmGetUIView() {
        return uiView;
    }

    public void xmlvmSetParent(ViewParent parent) {
        this.parent = parent;
    }

    protected void finalize() {
        uiView.setDelegate(null);
    }

    protected void parseAttributes(AttributeSet attrs) {
        setId(attrs.getIdAttributeResourceValue(0));

        String str = attrs.getAttributeValue(null, "visibility");
        if ("gone".equals(str)) {
            setVisibility(GONE);
        } else if ("invisible".equals(str)) {
            setVisibility(INVISIBLE);
        } else {
            setVisibility(VISIBLE);
        }

        str = attrs.getAttributeValue(null, "background");
        // Resolve drawable background
        if (str != null && str.startsWith("@drawable/")) {
            int backgroundId = attrs.getAttributeResourceValue(null, "background", -1);
            if (backgroundId != -1) {
                setBackgroundResource(backgroundId);
            }
        }
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return this.id;
    }

    public Resources getResources() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    public void setBackgroundResource(int resourceId) {
        Drawable d = getContext().getResources().getDrawable(resourceId);
        setBackgroundDrawable(d);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            UIColor c = UIColor.colorWithPatternImage(((BitmapDrawable) drawable).xmlvmGetImage());
            backgroundDrawable = drawable;
            uiView.setBackgroundColor(c);

        } else {
            Assert.NOT_IMPLEMENTED();
        }
    }

    public boolean postDelayed(Runnable runnable, long delay) {
        Assert.NOT_IMPLEMENTED();
        return true;
    }

    public int getLeft() {
        return left;
    }

    public int getTop() {
        return top;
    }

    public int getWidth() {
        return width;
    }

    public int getHeight() {
        return height;
    }

    public final int getRight() {
        return getLeft() + getWidth();
    }

    public final int getBottom() {
        return getTop() + getHeight();
    }

    protected final void setMeasuredDimension(int measuredWidth, int measuredHeight) {
        this.measuredWidth = measuredWidth;
        this.measuredHeight = measuredHeight;
        flags |= MEASURED_DIMENSION_SET;
    }

    public int getMeasuredWidth() {
        return measuredWidth;
    }

    public int getMeasuredHeight() {
        return measuredHeight;
    }

    public final void measure(int widthMeasureSpec, int heightMeasureSpec) {
        if ((flags & FORCE_LAYOUT) == FORCE_LAYOUT || widthMeasureSpec != this.widthMeasureSpec
                || heightMeasureSpec != this.heightMeasureSpec) {

            // first clears the measured dimension flag
            flags &= ~MEASURED_DIMENSION_SET;

            // measure ourselves, this should set the measured dimension flag
            // back
            onMeasure(widthMeasureSpec, heightMeasureSpec);

            // flag not set, setMeasuredDimension() was not invoked, we raise
            // an exception to warn the developer
            if ((flags & MEASURED_DIMENSION_SET) != MEASURED_DIMENSION_SET) {
                throw new IllegalStateException("onMeasure() did not set the"
                        + " measured dimension by calling" + " setMeasuredDimension()");
            }

            flags |= LAYOUT_REQUIRED;
        }

        this.widthMeasureSpec = widthMeasureSpec;
        this.heightMeasureSpec = heightMeasureSpec;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        // TODO: If background is set use the background's dimension instead of
        // null
        int backgroundWidth = 0;
        int backgroundHeight = 0;

        int widthSpec = MeasureSpec.getSize(widthMeasureSpec);
        int heightSpec = MeasureSpec.getSize(heightMeasureSpec);
        int width = MeasureSpec.getMode(widthMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                .getSize(widthMeasureSpec) : Math.min(backgroundWidth, widthSpec);
        int height = MeasureSpec.getMode(heightMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                .getSize(heightMeasureSpec) : Math.min(backgroundHeight, heightSpec);
        setMeasuredDimension(width, height);
    }

    public final void layout(int left, int top, int right, int bottom) {
        boolean changed = setFrame(left, top, right, bottom);
        if (changed || (flags & LAYOUT_REQUIRED) == LAYOUT_REQUIRED) {
            onLayout(changed, left, top, right, bottom);
            flags &= ~LAYOUT_REQUIRED;
        }

        flags &= ~FORCE_LAYOUT;
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
    }

    public boolean isLayoutRequested() {
        return (flags & FORCE_LAYOUT) == FORCE_LAYOUT;
    }

    public void requestLayout() {
        if (!getIgnoreRequestLayout()) {
            flags |= FORCE_LAYOUT;
            if (parent != null && !parent.isLayoutRequested()) {
                parent.requestLayout();
            }
        }
    }

    public int getVisibility() {
        return visibility;
    }

    public void setVisibility(int visibility) {
        this.visibility = visibility;
        uiView.setHidden(visibility != VISIBLE);
        requestLayout();
    }

    public void scrollTo(int x, int y) {
        Assert.NOT_IMPLEMENTED();
    }

    public int getBaseline() {
        return -1;
    }

    protected void onDraw(Canvas canvas) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setPressed(boolean pressed) {
        Assert.NOT_IMPLEMENTED();
    }

    public int getPaddingLeft() {
        return paddingLeft;
    }

    public int getPaddingRight() {
        return paddingRight;
    }

    public int getPaddingTop() {
        return paddingTop;
    }

    public int getPaddingBottom() {
        return paddingBottom;
    }

    public void setPadding(int paddingLeft, int paddingTop, int paddingRight, int paddingBottom) {
        this.paddingLeft = paddingLeft;
        this.paddingTop = paddingTop;
        this.paddingRight = paddingRight;
        this.paddingBottom = paddingBottom;
    }

    public int getMinimumWidth() {
        return minimumWidth;
    }

    public void setMinimumWidth(int minimumWidth) {
        this.minimumWidth = minimumWidth;
    }

    public int getMinimumHeight() {
        return minimumHeight;
    }

    public void setMinimumHeight(int minimumHeight) {
        this.minimumHeight = minimumHeight;
    }

    /**
     * Utility to reconcile a desired size with constraints imposed by a
     * MeasureSpec. Will take the desired size, unless a different size is
     * imposed by the constraints.
     * 
     * @param size
     *            How big the view wants to be
     * @param measureSpec
     *            Constraints imposed by the parent
     * @return The size this view should be.
     */
    public static int resolveSize(int size, int measureSpec) {
        int result = size;
        int specMode = MeasureSpec.getMode(measureSpec);
        int specSize = MeasureSpec.getSize(measureSpec);
        switch (specMode) {
        case MeasureSpec.UNSPECIFIED:
            result = size;
            break;
        case MeasureSpec.AT_MOST:
            result = Math.min(size, specSize);
            break;
        case MeasureSpec.EXACTLY:
            result = specSize;
            break;
        }
        return result;
    }

    /**
     * Returns the suggested minimum height that the view should use. This
     * returns the maximum of the view's minimum height and the background's
     * minimum height (
     * {@link android.graphics.drawable.Drawable#getMinimumHeight()}).
     * <p>
     * When being used in {@link #onMeasure(int, int)}, the caller should still
     * ensure the returned height is within the requirements of the parent.
     * 
     * @return The suggested minimum height of the view.
     */
    protected int getSuggestedMinimumHeight() {
        int suggestedMinHeight = minimumHeight;

        if (backgroundDrawable != null) {
            final int bgMinHeight = backgroundDrawable.getMinimumHeight();
            if (suggestedMinHeight < bgMinHeight) {
                suggestedMinHeight = bgMinHeight;
            }
        }

        return suggestedMinHeight;
    }

    /**
     * Returns the suggested minimum width that the view should use. This
     * returns the maximum of the view's minimum width) and the background's
     * minimum width (
     * {@link android.graphics.drawable.Drawable#getMinimumWidth()}).
     * <p>
     * When being used in {@link #onMeasure(int, int)}, the caller should still
     * ensure the returned width is within the requirements of the parent.
     * 
     * @return The suggested minimum width of the view.
     */
    protected int getSuggestedMinimumWidth() {
        int suggestedMinWidth = minimumWidth;

        if (backgroundDrawable != null) {
            final int bgMinWidth = backgroundDrawable.getMinimumWidth();
            if (suggestedMinWidth < bgMinWidth) {
                suggestedMinWidth = bgMinWidth;
            }
        }

        return suggestedMinWidth;
    }

    /**
     * Assign a size and position to this view.
     * 
     * This is called from layout.
     * 
     * @param left
     *            Left position, relative to parent
     * @param top
     *            Top position, relative to parent
     * @param right
     *            Right position, relative to parent
     * @param bottom
     *            Bottom position, relative to parent
     * @return true if the new size and position are different than the previous
     *         ones {@hide}
     */
    protected boolean setFrame(int left, int top, int right, int bottom) {
        boolean changed = false;

        if (this.left != left || getRight() != right || this.top != top || getBottom() != bottom) {
            changed = true;

            // Remember our drawn bit
            // int drawn = mPrivateFlags & DRAWN;

            // Invalidate our old position
            invalidate();

            int oldWidth = width;
            int oldHeight = height;

            this.left = left;
            this.top = top;
            this.width = right - left;
            this.height = bottom - top;
            uiView.setFrame(new CGRect(left, top, width, height));

            // mPrivateFlags |= HAS_BOUNDS;

            int newWidth = right - left;
            int newHeight = bottom - top;

            // if (newWidth != oldWidth || newHeight != oldHeight) {
            // onSizeChanged(newWidth, newHeight, oldWidth, oldHeight);
            // }

            if (visibility == VISIBLE) {
                // If we are visible, force the DRAWN bit to on so that
                // this invalidate will go through (at least to our parent).
                // This is because someone may have invalidated this view
                // before this call to setFrame came in, therby clearing
                // the DRAWN bit.
                // mPrivateFlags |= DRAWN;
                invalidate();
            }

            // Reset drawn bit to original value (invalidate turns it off)
            // mPrivateFlags |= drawn;
            //
            // mBackgroundSizeChanged = true;
        }
        return changed;
    }

    /**
     * Look for a child view with the given id. If this view has the given id,
     * return this view.
     * 
     * @param id
     *            The id to search for.
     * @return The view that has the given id in the hierarchy or null
     */
    public final View findViewById(int id) {
        if (id < 0) {
            return null;
        }

        return findViewTraversal(id);
    }

    /**
     * {@hide}
     * 
     * @param id
     *            the id of the view to be found
     * @return the view of the specified id, null if cannot be found
     */
    protected View findViewTraversal(int id) {
        if (id == this.id) {
            return this;
        }

        return null;
    }

    protected boolean getIgnoreRequestLayout() {
        return ignoreRequestLayout;
    }

    protected void setIgnoreRequestLayout(boolean ignoreRequestLayout) {
        this.ignoreRequestLayout = ignoreRequestLayout;
    }
}
