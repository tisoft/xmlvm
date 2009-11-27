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

    public static final int VISIBLE   = 0;
    public static final int INVISIBLE = 4;
    public static final int GONE      = 8;

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

    private ViewGroup.LayoutParams layoutParams;
    private Context                c;
    private UIView                 uiView;
    private ViewParent             parent;
    private OnTouchListener        listener;
    private UIResponderDelegate    responderDelegate;
    private int                    id;
    private int                    measuredWidth;
    private int                    measuredHeight;
    private int                    x;
    private int                    y;
    private int                    width;
    private int                    height;
    private int                    visibility;

    public View(Context c) {
        init(c, new ResourceAttributes(getContext(), "", new HashMap<String, String>()));
    }

    public View(Context c, AttributeSet attrs) {
        init(c, attrs);
        parseAttributes(attrs);
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
        id = attrs.getIdAttributeResourceValue(0);

        String str = attrs.getAttributeValue(null, "visibility");
        if ("gone".equals(str)) {
            visibility = GONE;
        } else if ("invisible".equals(str)) {
            visibility = INVISIBLE;
        } else {
            visibility = VISIBLE;
        }
        uiView.setHidden(visibility != VISIBLE);

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

    public View findViewById(int id) {
        return this.id == id ? this : null;
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
            uiView.setBackgroundColor(c);
        } else {
            Assert.NOT_IMPLEMENTED();
        }
    }

    public boolean postDelayed(Runnable runnable, long delay) {
        Assert.NOT_IMPLEMENTED();
        return true;
    }

    protected int getX() {
        return x;
    }

    protected int getY() {
        return y;
    }

    protected int getWidth() {
        return width;
    }

    protected int getHeight() {
        return height;
    }

    protected final void setMeasuredDimension(int measuredWidth, int measuredHeight) {
        this.measuredWidth = measuredWidth;
        this.measuredHeight = measuredHeight;
    }

    public int getMeasuredWidth() {
        return measuredWidth;
    }

    public int getMeasuredHeight() {
        return measuredHeight;
    }

    public final void measure(int widthMeasureSpec, int heightMeasureSpec) {
        onMeasure(widthMeasureSpec, heightMeasureSpec);
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
        onLayout(true, left, top, right, bottom);
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        x = left;
        y = top;
        width = right - left;
        height = bottom - top;
        uiView.setFrame(new CGRect(left, top, width, height));
    }

    public void requestLayout() {
        if (parent != null) {
            ((View) parent).requestLayout();
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

    protected void onDraw(Canvas canvas) {
        Assert.NOT_IMPLEMENTED();
    }

    public void setPressed(boolean pressed) {
        Assert.NOT_IMPLEMENTED();
    }
}
