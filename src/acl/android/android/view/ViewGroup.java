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

package android.view;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.internal.Assert;
import android.internal.Dimension;
import android.util.AttributeSet;
import android.util.DisplayMetrics;

/**
 * iPhone implementation of Android's ViewGroup class.
 * 
 * @see http://developer.android.com/reference/android/view/ViewGroup.html
 */
public class ViewGroup extends View implements ViewParent {

    private List<View>         subViews;
    private Map<Integer, View> xmlvmViewMap;


    public static class LayoutParams {
        public static final int FILL_PARENT  = -1;
        public static final int WRAP_CONTENT = -2;

        public int              width;
        public int              height;


        public LayoutParams() {
        }

        public LayoutParams(Context context, AttributeSet attrs) {
            width = sizeFromString(context, attrs.getAttributeValue(null, "layout_width"), 0);
            height = sizeFromString(context, attrs.getAttributeValue(null, "layout_height"), 0);
        }

        public LayoutParams(int width, int height) {
            this.width = width;
            this.height = height;
        }

        public LayoutParams(LayoutParams source) {
            this.width = source.width;
            this.height = source.height;
        }

        private int sizeFromString(Context context, String str, int defaultValue) {
            if (str == null || str.length() == 0) {
                return defaultValue;
            } else if (str.equalsIgnoreCase("wrap_content")) {
                return WRAP_CONTENT;
            } else if (str.equalsIgnoreCase("fill_parent")) {
                return FILL_PARENT;
            } else {
                DisplayMetrics metrics = new DisplayMetrics();
                metrics.setToDefaults();
                return (int) Dimension.resolveDimension(context, str, metrics);
            }
        }
    }


    public static class MarginLayoutParams extends LayoutParams {

        public int bottomMargin;
        public int leftMargin;
        public int rightMargin;
        public int topMargin;


        public MarginLayoutParams(Context context, AttributeSet attrs) {
            super(context, attrs);

            DisplayMetrics metrics = new DisplayMetrics();
            metrics.setToDefaults();
            int margin = (int) Dimension.resolveDimension(context, attrs.getAttributeValue(null,
                    "layout_margin"), metrics);
            margin = margin < 0 ? 0 : margin;
            setMargins(margin, margin, margin, margin);

            margin = (int) Dimension.resolveDimension(context, attrs.getAttributeValue(null,
                    "layout_marginBottom"), metrics);
            bottomMargin = margin > 0 ? margin : bottomMargin;

            margin = (int) Dimension.resolveDimension(context, attrs.getAttributeValue(null,
                    "layout_marginLeft"), metrics);
            leftMargin = margin > 0 ? margin : leftMargin;

            margin = (int) Dimension.resolveDimension(context, attrs.getAttributeValue(null,
                    "layout_marginRight"), metrics);
            rightMargin = margin > 0 ? margin : rightMargin;

            margin = (int) Dimension.resolveDimension(context, attrs.getAttributeValue(null,
                    "layout_marginTop"), metrics);
            topMargin = margin > 0 ? margin : topMargin;
        }

        public MarginLayoutParams(int width, int height) {
            super(width, height);
        }

        public MarginLayoutParams(LayoutParams source) {
            super(source);
        }

        public MarginLayoutParams(MarginLayoutParams source) {
            this.width = source.width;
            this.height = source.height;

            this.leftMargin = source.leftMargin;
            this.topMargin = source.topMargin;
            this.rightMargin = source.rightMargin;
            this.bottomMargin = source.bottomMargin;
        }

        public void setMargins(int leftMargin, int topMargin, int rightMargin, int bottomMargin) {
            this.leftMargin = leftMargin;
            this.topMargin = topMargin;
            this.rightMargin = rightMargin;
            this.bottomMargin = bottomMargin;
        }
    }


    public static final int PERSISTENT_ANIMATION_CACHE = 1;


    public ViewGroup(Context c) {
        super(c);
        initViewGroup(c, null);
    }

    public ViewGroup(Context c, AttributeSet attrs) {
        super(c, attrs);
        initViewGroup(c, attrs);
    }

    public ViewGroup(Context context, AttributeSet attrs, int defStyle) {
        this(context, attrs);
    }

    private void initViewGroup(Context c, AttributeSet attrs) {
        this.subViews = new ArrayList<View>();

        if (c instanceof Activity) {
            RectF rect = ((Activity) c).getWindow().xmlvmGetRect();
            this.xmlvmGetViewHandler().setFrame(rect);
        }

        if (attrs != null && attrs.getAttributeCount() > 0) {
            parseViewGroupAttributes(attrs);
        }
    }

    public void addView(View child) {
        subViews.add(child);
        child.xmlvmSetParent(this);
        xmlvmGetViewHandler().addSubview(child);
    }

    public void addView(View child, LayoutParams p) {
        this.addView(child);
        child.setLayoutParams(p);
    }

    public void addView(View child, int idx) {
        subViews.add(idx, child);
        child.xmlvmSetParent(this);
        xmlvmGetViewHandler().insertSubview(child, idx);
    }

    public void removeView(View child) {
        subViews.remove(child);
        child.xmlvmSetParent(null);
        child.xmlvmGetViewHandler().removeFromSuperview();
    }

    public void removeAllViews() {
        while (subViews.size() > 0) {
            View view = subViews.get(0);
            removeView(view);
        }
    }

    public int getChildCount() {
        return subViews.size();
    }

    public View getChildAt(int index) {
        return subViews.get(index);
    }

    protected boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        return p != null;
    }

    /**
     * Returns a set of default layout parameters. These parameters are
     * requested when the View passed to {@link #addView(View)} has no layout
     * parameters already set. If null is returned, an exception is thrown from
     * addView.
     * 
     * @return a set of default layout parameters or null
     */
    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
    }

    /**
     * Returns a safe set of layout parameters based on the supplied layout
     * params. When a ViewGroup is passed a View whose layout params do not pass
     * the test of
     * {@link #checkLayoutParams(android.view.ViewGroup.LayoutParams)}, this
     * method is invoked. This method should return a new set of layout params
     * suitable for this ViewGroup, possibly by copying the appropriate
     * attributes from the specified set of layout params.
     * 
     * @param p
     *            The layout parameters to convert into a suitable set of layout
     *            parameters for this ViewGroup.
     * 
     * @return an instance of {@link android.view.ViewGroup.LayoutParams} or one
     *         of its descendants
     */
    protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams p) {
        return p;
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    private void parseViewGroupAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);

        // Implementation of attribute parsing

        setIgnoreRequestLayout(false);
    }

    // public View findViewById(int id) {
    // return xmlvmViewMap.get(new Integer(id));
    // }

    @Override
    protected View findViewTraversal(int id) {
        if (id == getId()) {
            return this;
        }

        for (View v : subViews) {
            v = v.findViewById(id);
            if (v != null) {
                return v;
            }
        }

        return null;
    }

    public Map<Integer, View> getXmlvmViewMap() {
        return xmlvmViewMap;
    }

    public void setXmlvmViewMap(Map<Integer, View> xmlvmViewMap) {
        this.xmlvmViewMap = xmlvmViewMap;
    }

    /**
     * Ask one of the children of this view to measure itself, taking into
     * account both the MeasureSpec requirements for this view and its padding
     * and margins. The child must have MarginLayoutParams The heavy lifting is
     * done in getChildMeasureSpec.
     * 
     * @param child
     *            The child to measure
     * @param parentWidthMeasureSpec
     *            The width requirements for this view
     * @param widthUsed
     *            Extra space that has been used up by the parent horizontally
     *            (possibly by other children of the parent)
     * @param parentHeightMeasureSpec
     *            The height requirements for this view
     * @param heightUsed
     *            Extra space that has been used up by the parent vertically
     *            (possibly by other children of the parent)
     */
    protected void measureChildWithMargins(View child, int parentWidthMeasureSpec, int widthUsed,
            int parentHeightMeasureSpec, int heightUsed) {
        final MarginLayoutParams lp = (MarginLayoutParams) child.getLayoutParams();

        final int childWidthMeasureSpec = getChildMeasureSpec(parentWidthMeasureSpec,
                getPaddingLeft() + getPaddingRight() + lp.leftMargin + lp.rightMargin + widthUsed,
                lp.width);
        final int childHeightMeasureSpec = getChildMeasureSpec(parentHeightMeasureSpec,
                getPaddingTop() + getPaddingBottom() + lp.topMargin + lp.bottomMargin + heightUsed,
                lp.height);

        child.measure(childWidthMeasureSpec, childHeightMeasureSpec);
    }

    /**
     * Does the hard part of measureChildren: figuring out the MeasureSpec to
     * pass to a particular child. This method figures out the right MeasureSpec
     * for one dimension (height or width) of one child view.
     * 
     * The goal is to combine information from our MeasureSpec with the
     * LayoutParams of the child to get the best possible results. For example,
     * if the this view knows its size (because its MeasureSpec has a mode of
     * EXACTLY), and the child has indicated in its LayoutParams that it wants
     * to be the same size as the parent, the parent should ask the child to
     * layout given an exact size.
     * 
     * @param spec
     *            The requirements for this view
     * @param padding
     *            The padding of this view for the current dimension and
     *            margins, if applicable
     * @param childDimension
     *            How big the child wants to be in the current dimension
     * @return a MeasureSpec integer for the child
     */
    public static int getChildMeasureSpec(int spec, int padding, int childDimension) {
        int specMode = MeasureSpec.getMode(spec);
        int specSize = MeasureSpec.getSize(spec);

        int size = Math.max(0, specSize - padding);

        int resultSize = 0;
        int resultMode = 0;

        switch (specMode) {
        // Parent has imposed an exact size on us
        case MeasureSpec.EXACTLY:
            if (childDimension >= 0) {
                resultSize = childDimension;
                resultMode = MeasureSpec.EXACTLY;
            } else if (childDimension == LayoutParams.FILL_PARENT) {
                // Child wants to be our size. So be it.
                resultSize = size;
                resultMode = MeasureSpec.EXACTLY;
            } else if (childDimension == LayoutParams.WRAP_CONTENT) {
                // Child wants to determine its own size. It can't be
                // bigger than us.
                resultSize = size;
                resultMode = MeasureSpec.AT_MOST;
            }
            break;

        // Parent has imposed a maximum size on us
        case MeasureSpec.AT_MOST:
            if (childDimension >= 0) {
                // Child wants a specific size... so be it
                resultSize = childDimension;
                resultMode = MeasureSpec.EXACTLY;
            } else if (childDimension == LayoutParams.FILL_PARENT) {
                // Child wants to be our size, but our size is not fixed.
                // Constrain child to not be bigger than us.
                resultSize = size;
                resultMode = MeasureSpec.AT_MOST;
            } else if (childDimension == LayoutParams.WRAP_CONTENT) {
                // Child wants to determine its own size. It can't be
                // bigger than us.
                resultSize = size;
                resultMode = MeasureSpec.AT_MOST;
            }
            break;

        // Parent asked to see how big we want to be
        case MeasureSpec.UNSPECIFIED:
            if (childDimension >= 0) {
                // Child wants a specific size... let him have it
                resultSize = childDimension;
                resultMode = MeasureSpec.EXACTLY;
            } else if (childDimension == LayoutParams.FILL_PARENT) {
                // Child wants to be our size... find out how big it should
                // be
                resultSize = 0;
                resultMode = MeasureSpec.UNSPECIFIED;
            } else if (childDimension == LayoutParams.WRAP_CONTENT) {
                // Child wants to determine its own size.... find out how
                // big it should be
                resultSize = 0;
                resultMode = MeasureSpec.UNSPECIFIED;
            }
            break;
        }
        return MeasureSpec.makeMeasureSpec(resultSize, resultMode);
    }

    protected int makeMeasureSpec(int layoutSize, int sizeConstraint) {
        int mode = layoutSize == LayoutParams.WRAP_CONTENT ? MeasureSpec.AT_MOST
                : MeasureSpec.EXACTLY;

        int size;
        if (mode == MeasureSpec.AT_MOST) {
            size = sizeConstraint;
        } else {
            size = layoutSize > 0 ? Math.min(layoutSize, sizeConstraint) : sizeConstraint;
        }

        return MeasureSpec.makeMeasureSpec(size, mode);
    }

    public void setPersistentDrawingCache(int drawingCacheToKeep) {
        Assert.NOT_IMPLEMENTED();
    }
}
