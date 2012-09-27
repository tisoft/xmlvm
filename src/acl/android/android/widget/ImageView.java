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

import java.util.HashMap;
import java.util.Map;

import org.xmlvm.acl.common.adapter.BitmapDrawableAdapter;
import org.xmlvm.acl.common.adapter.ImageViewAdapter;
import org.xmlvm.acl.common.objects.CommonView;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.internal.Assert;
import android.internal.CommonDeviceAPIFinder;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout.LayoutParams;

public class ImageView extends View {

    private static Map<String, ScaleType> scaleTypes = new HashMap<String, ImageView.ScaleType>();

    static {
        scaleTypes.put("matrix", ScaleType.MATRIX);
        scaleTypes.put("fitXY", ScaleType.FIT_XY);
        scaleTypes.put("fitStart", ScaleType.FIT_START);
        scaleTypes.put("fitCenter", ScaleType.FIT_CENTER);
        scaleTypes.put("fitEnd", ScaleType.FIT_END);
        scaleTypes.put("center", ScaleType.CENTER);
        scaleTypes.put("centerCrop", ScaleType.CENTER_CROP);
        scaleTypes.put("centerInside", ScaleType.CENTER_INSIDE);
    }


    /**
     * Options for scaling the bounds of an image to the bounds of this view.
     * <p>
     * <i>(This enum is taken from Android's source code.)</i>
     */
    public enum ScaleType {

        /**
         * Scale using the image matrix when drawing. The image matrix can be
         * set using {@link ImageView#setImageMatrix(Matrix)}. From XML, use
         * this syntax: <code>android:scaleType="matrix"</code>.
         */
        MATRIX(0),
        /**
         * Scale the image using {@link Matrix.ScaleToFit#FILL}. From XML, use
         * this syntax: <code>android:scaleType="fitXY"</code>.
         */
        FIT_XY(1),
        /**
         * Scale the image using {@link Matrix.ScaleToFit#START}. From XML, use
         * this syntax: <code>android:scaleType="fitStart"</code>.
         */
        FIT_START(2),
        /**
         * Scale the image using {@link Matrix.ScaleToFit#CENTER}. From XML, use
         * this syntax: <code>android:scaleType="fitCenter"</code>.
         */
        FIT_CENTER(3),
        /**
         * Scale the image using {@link Matrix.ScaleToFit#END}. From XML, use
         * this syntax: <code>android:scaleType="fitEnd"</code>.
         */
        FIT_END(4),
        /**
         * Center the image in the view, but perform no scaling. From XML, use
         * this syntax: <code>android:scaleType="center"</code>.
         */
        CENTER(5),
        /**
         * Scale the image uniformly (maintain the image's aspect ratio) so that
         * both dimensions (width and height) of the image will be equal to or
         * larger than the corresponding dimension of the view (minus padding).
         * The image is then centered in the view. From XML, use this syntax:
         * <code>android:scaleType="centerCrop"</code>.
         */
        CENTER_CROP(6),
        /**
         * Scale the image uniformly (maintain the image's aspect ratio) so that
         * both dimensions (width and height) of the image will be equal to or
         * less than the corresponding dimension of the view (minus padding).
         * The image is then centered in the view. From XML, use this syntax:
         * <code>android:scaleType="centerInside"</code>.
         */
        CENTER_INSIDE(7);

        ScaleType(int ni) {
            nativeInt = ni;
        }


        final int nativeInt;

    }


    protected Drawable drawable;
    private int        type;


    public ImageView(Context c) {
        super(c);
        initImageView(c, null);
    }

    public ImageView(Context c, AttributeSet attrs) {
        super(c, attrs);
        initImageView(c, attrs);
    }

    public ImageView(Context c, AttributeSet attrs, int defStyle) {
        super(c, attrs, defStyle);
        Assert.NOT_IMPLEMENTED();
    }

    private void initImageView(Context c, AttributeSet attrs) {
        setScaleType(ScaleType.FIT_CENTER);

        if (attrs != null && attrs.getAttributeCount() > 0) {
            parseImageViewAttributes(attrs);
        }
    }

    public void setImageResource(int resId) {
        Drawable d = getContext().getResources().getDrawable(resId);
        setImageDrawable(d);
    }

    public void setImageDrawable(Drawable drawable) {
        this.drawable = drawable;
        if (drawable instanceof BitmapDrawable) {
            ((ImageViewAdapter) getCommonView()).setImage(((BitmapDrawable) drawable)
                    .xmlvmGetImage());
            getCommonView().setContentMode(this.type);

            refreshBackground();
        } else if (drawable instanceof StateListDrawable) {
            refreshImageStateDrawable();
        } else if (drawable == null) {
            ((ImageViewAdapter) getCommonView()).setImage(null);
        } else {
            Assert.NOT_IMPLEMENTED();
        }

        requestLayout();
    }

    @Override
    protected boolean setFrame(int left, int top, int right, int bottom) {
        return super.setFrame(left + paddingLeft, top + paddingTop, right - paddingRight, bottom
                - paddingBottom);
    }

    @Override
    public void setLayoutParams(ViewGroup.LayoutParams l) {
        layoutParams = l;
        int width = l.width;
        int height = l.height;
        BitmapDrawableAdapter img = ((ImageViewAdapter) getCommonView()).getImage();

        if (width == LayoutParams.WRAP_CONTENT) {
            width = img != null ? (int) img.getWidth() : 0;
        }
        if (height == LayoutParams.WRAP_CONTENT) {
            height = img != null ? (int) img.getHeight() : 0;
        }

        int x = l instanceof AbsoluteLayout.LayoutParams ? ((AbsoluteLayout.LayoutParams) l).x : 0;
        int y = l instanceof AbsoluteLayout.LayoutParams ? ((AbsoluteLayout.LayoutParams) l).y : 0;

        getCommonView().setFrame(new RectF(x, y, x + width, y + height));
    }

    public void setScaleType(ScaleType type) {
        CommonView view = getCommonView();
        switch (type) {
        case CENTER:
            view.setContentMode(CommonView.CENTER);
            this.type = CommonView.CENTER;
            break;
        case CENTER_CROP:
            view.setContentMode(CommonView.SCALE_ASPECT_FILL);
            this.type = CommonView.SCALE_ASPECT_FILL;
            break;
        case CENTER_INSIDE:
            view.setContentMode(CommonView.SCALE_ASPECT_FIT);
            this.type = CommonView.SCALE_ASPECT_FIT;
            break;
        case FIT_CENTER:
            view.setContentMode(CommonView.SCALE_ASPECT_FIT);
            this.type = CommonView.SCALE_ASPECT_FIT;
            break;
        case FIT_END:
            Assert.NOT_IMPLEMENTED();
            break;
        case FIT_START:
            Assert.NOT_IMPLEMENTED();
            break;
        case FIT_XY:
            view.setContentMode(CommonView.SCALE_TO_FILL);
            this.type = CommonView.SCALE_TO_FILL;
            break;
        case MATRIX:
            Assert.NOT_IMPLEMENTED();
            break;
        }
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int width = 0;
        int height = 0;

        if (drawable != null) {
            Rect r = drawable.getBounds();
            width = r.width();
            height = r.height();
        }

        width = Math.max(getSuggestedMinimumWidth(), width + paddingLeft + paddingRight);
        height = Math.max(getSuggestedMinimumHeight(), height + paddingTop + paddingBottom);

        int w = resolveSize(width, widthMeasureSpec);
        int h = resolveSize(height, heightMeasureSpec);
        setMeasuredDimension(w, h);
    }

    private void parseImageViewAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);

        // Resolve drawable background
        String str = attrs.getAttributeValue(null, "src");
        if (str != null) {
            int srcId = attrs.getAttributeResourceValue(null, "src", -1);
            if (srcId != -1) {
                setImageResource(srcId);
            }
        }

        // Resolve scale type
        str = attrs.getAttributeValue(null, "scaleType");
        if (str != null) {
            setScaleType(resolveScaleType(str));
        }
        setIgnoreRequestLayout(false);
    }

    private ScaleType resolveScaleType(String str) {
        return scaleTypes.get(str);
    }

    @Override
    protected CommonView xmlvmNewCommonDeviceView(AttributeSet attrs) {
        return CommonDeviceAPIFinder.instance().getWidgetFactory().createImageView(this);
    }

    @Override
    public void xmlvmSetDrawableState(int[] drawableState) {
        super.xmlvmSetDrawableState(drawableState);
        refreshImageStateDrawable();
    }

    private void refreshImageStateDrawable() {
        if (drawable instanceof StateListDrawable) {
            StateListDrawable d = (StateListDrawable) drawable;
            int i = d.getStateDrawableIndex(getDrawableState());
            d.selectDrawable(i);
            Drawable currentStateDrawable = d.getStateDrawable(i);
            BitmapDrawableAdapter newImg = ((BitmapDrawable) currentStateDrawable).xmlvmGetImage();
            BitmapDrawableAdapter currentImg = ((ImageViewAdapter) getCommonView()).getImage();
            if (currentImg != newImg) {
                boolean relayout = currentImg != null && newImg != null
                        && !currentImg.getSize().equals(newImg.getSize());
                ((ImageViewAdapter) getCommonView()).setImage(newImg);
                if (relayout) {
                    requestLayout();
                }
            }
        }
    }
}