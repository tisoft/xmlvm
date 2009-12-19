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

package android.widget;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UIView;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.internal.Assert;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout.LayoutParams;

public class ImageView extends View {

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

    public ImageView(Context c) {
        super(c);

        // ((Activity) c).getWindow().getCGRect());
    }

    public ImageView(Context c, AttributeSet attrs) {
        super(c, attrs);
    }

    public void setImageResource(int resId) {
        Drawable d = getContext().getResources().getDrawable(resId);
        setImageDrawable(d);
    }

    public void setImageDrawable(Drawable drawable) {
        this.drawable = drawable;
        if (drawable instanceof BitmapDrawable) {
            getUIImageView().setImage(((BitmapDrawable) drawable).xmlvmGetImage());
            float width = getUIImageView().getImage().getSize().width;
            float height = getUIImageView().getImage().getSize().height;
            getUIImageView().setFrame(new CGRect(0, 0, width, height));
        } else if (drawable instanceof StateListDrawable) {
            refreshImageStateDrawable();
        } else {
            Assert.NOT_IMPLEMENTED();
        }
    }

    public void setLayoutParams(ViewGroup.LayoutParams l) {
        layoutParams = l;
        int width = l.width;
        int height = l.height;

        if (width == LayoutParams.WRAP_CONTENT) {
            width = getUIImageView().getImage() != null ? (int) getUIImageView().getImage()
                    .getSize().width : 0;
        }
        if (height == LayoutParams.WRAP_CONTENT) {
            height = getUIImageView().getImage() != null ? (int) getUIImageView().getImage()
                    .getSize().height : 0;
        }

        int x = l instanceof AbsoluteLayout.LayoutParams ? ((AbsoluteLayout.LayoutParams) l).x : 0;
        int y = l instanceof AbsoluteLayout.LayoutParams ? ((AbsoluteLayout.LayoutParams) l).y : 0;

        getUIImageView().setFrame(new CGRect(x, y, width, height));
    }

    public void setScaleType(ScaleType type) {
        Assert.NOT_IMPLEMENTED();
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

        width = Math.max(getSuggestedMinimumWidth(), width);
        height = Math.max(getSuggestedMinimumHeight(), height);
        width += paddingLeft + paddingRight;
        height += paddingTop + paddingBottom;

        setMeasuredDimension(width, height);
    }

    @Override
    protected void parseAttributes(AttributeSet attrs) {
        super.parseAttributes(attrs);

        String str = attrs.getAttributeValue(null, "src");
        // Resolve drawable background
        if (str != null) {
            int srcId = attrs.getAttributeResourceValue(null, "src", -1);
            if (srcId != -1) {
                setImageResource(srcId);
            }
        }
    }

    @Override
    protected UIView xmlvmCreateUIView(AttributeSet attrs) {
        return new UIImageView(new CGRect(0, 0, 0, 0));
    }

    protected UIImageView getUIImageView() {
        return (UIImageView) xmlvmGetUIView();
    }

    protected void xmlvmSetDrawableState(int[] drawableState) {
        super.xmlvmSetDrawableState(drawableState);
        refreshImageStateDrawable();
    }

    private void refreshImageStateDrawable() {
        if (drawable instanceof StateListDrawable) {
            StateListDrawable d = (StateListDrawable) drawable;
            int i = d.getStateDrawableIndex(getDrawableState());
            d.selectDrawable(i);
            Drawable currentStateDrawable = d.getStateDrawable(i);
            UIImage newImg = ((BitmapDrawable) currentStateDrawable).xmlvmGetImage();
            UIImage currentImg = getUIImageView().getImage();
            if (currentImg != newImg) {
                boolean relayout = currentImg != null && newImg != null
                        && !currentImg.getSize().equals(newImg.getSize());
                getUIImageView().setImage(newImg);
                if (relayout) {
                    requestLayout();
                }
            }
        }
    }
}