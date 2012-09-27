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

package org.xmlvm.acl.ios.objects;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.xmlvm.acl.common.objects.CommonView;
import org.xmlvm.acl.ios.adapter.IPhoneBitmapDrawableAdapter;
import org.xmlvm.iphone.CGPoint;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIViewContentMode;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.internal.Assert;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

public class IPhoneView implements CommonView {

    private UIView           layerFront;
    private UIImageView      layerBack;
    private View             androidView;

    private List<CommonView> subViews = new ArrayList<CommonView>();
    private CommonView       superView;
    private Drawable         drawable;


    public IPhoneView(View view) {
        this.androidView = view;
        this.layerFront = new UIView() {

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

            @Override
            public void drawRect(CGRect rect) {
                androidView.draw(new Canvas(new IPhoneContext()));
            }
        };
    }

    /**
     * This constructor is only used by derived classes. The dummy argument is
     * used to differentiate it from the other constructor. This constructor
     * does not define the native iOS view (which is created in the respective
     * derived class).
     */
    protected IPhoneView(View view, int dummy) {
        this.androidView = view;
    }

    /**
     * @return the view
     */
    public UIView getView() {
        return layerFront;
    }

    /**
     * @param view
     *            the view to set
     */
    public void setView(UIView view) {
        // Assert.CHECK(layerFront == null);
        this.layerFront = view;
    }

    @Override
    public void setFrame(RectF frame) {
        CGRect r = IPhoneView.toCGRect(frame);
        if (layerBack == null) {
            this.layerFront.setFrame(r);
        } else {
            this.layerBack.setFrame(r);
            r.origin.x = 0;
            r.origin.y = 0;
            this.layerFront.setFrame(r);
        }
    }

    @Override
    public void setHidden(boolean b) {
        this.layerFront.setHidden(b);
        if (this.layerBack != null) {
            this.layerBack.setHidden(b);
        }
    }

    @Override
    public void setNeedsDisplay() {
        if (this.layerBack != null) {
            this.layerBack.setNeedsDisplay();
        } else {
            this.layerFront.setNeedsDisplay();
        }
    }

    @Override
    public void addSubview(CommonView view) {
        ((IPhoneView) view).addToParent(this.layerFront);
        this.subViews.add(view);
        ((IPhoneView) view).setSuperView(this);
    }

    private void addToParent(UIView parent) {
        parent.addSubview(layerBack != null ? layerBack : layerFront);
    }

    private void insertToParent(UIView parent, int idx) {
        parent.insertSubview(layerBack != null ? layerBack : layerFront, idx);
    }

    @Override
    public void setSuperView(CommonView superView) {
        this.superView = superView;
    }

    @Override
    public void insertSubview(CommonView view, int idx) {
        ((IPhoneView) view).insertToParent(this.layerFront, idx);
        this.subViews.add(idx, view);
        ((IPhoneView) view).setSuperView(this);
    }

    @Override
    public void removeFromSuperview() {
        if (this.layerBack != null) {
            this.layerBack.removeFromSuperview();
        } else {
            this.layerFront.removeFromSuperview();
        }
        if (this.getSuperview() != null) {
            ((IPhoneView) this.getSuperview()).subViews.remove(this);
            setSuperView(null);
        }
    }

    @Override
    public void setContentMode(int mode) {
        switch (mode) {
        case CommonView.SCALE_TO_FILL:
            this.layerFront.setContentMode(UIViewContentMode.ScaleToFill);
            break;
        case CommonView.SCALE_ASPECT_FIT:
            this.layerFront.setContentMode(UIViewContentMode.ScaleAspectFit);
            break;
        case CommonView.SCALE_ASPECT_FILL:
            this.layerFront.setContentMode(UIViewContentMode.ScaleAspectFill);
            break;
        case CommonView.CENTER:
            this.layerFront.setContentMode(UIViewContentMode.Center);
            break;
        default:
            Assert.NOT_IMPLEMENTED();
            break;
        }
    }

    @Override
    public RectF getFrame() {
        return IPhoneView.toRectFangle(this.layerBack != null ? this.layerBack.getFrame()
                : this.layerFront.getFrame());
    }

    public boolean xmlvmTouchesEvent(int action, Set<UITouch> touches, UIEvent event) {
        if (action == MotionEvent.ACTION_UP && androidView.getOnClickListener() != null) {
            androidView.getOnClickListener().onClick(androidView);
        }

        UITouch firstTouch = touches.iterator().next();
        CGPoint point = firstTouch.locationInView(((IPhoneView) androidView.getCommonView())
                .getView());
        MotionEvent motionEvent = new MotionEvent(action, (int) point.x, (int) point.y);
        if (androidView.onTouchEvent(motionEvent)) {
            return true;
        }
        if (androidView.getOnTouchListener() != null
                && androidView.getOnTouchListener().onTouch(androidView, motionEvent)) {
            return true;
        }
        if (androidView.getParent() != null && (androidView.getParent() instanceof View)) {
            return ((IPhoneView) ((View) androidView.getParent()).getCommonView())
                    .xmlvmTouchesEvent(action, touches, event);
        }
        return false;
    }

    public View getAndroidView() {
        return androidView;
    }

    public void setAndroidView(View androidView) {
        this.androidView = androidView;
    }

    @Override
    public void setUserInteractionEnabled(boolean status) {
        if (this.layerBack != null) {
            this.layerBack.setUserInteractionEnabled(status);
        }
        this.layerFront.setUserInteractionEnabled(status);
    }

    public static RectF toRectFangle(CGRect frame) {
        return new RectF((int) frame.origin.x, (int) frame.origin.y, (int) frame.origin.x
                + (int) frame.size.width, (int) frame.origin.y + (int) frame.size.height);
    }

    public static RectF toRectangle(CGSize frame) {
        return new RectF(0, 0, (int) frame.width, (int) frame.height);
    }

    public static CGRect toCGRect(RectF frame) {
        return new CGRect(frame.left, frame.top, frame.width(), frame.height());
    }

    public static CGRect toCGRect(Rect frame) {
        return new CGRect(frame.left, frame.top, frame.width(), frame.height());
    }

    public static CGSize toCGSize(RectF frame) {
        return new CGSize(frame.width(), frame.height());
    }

    public static CGPoint toCGPoint(RectF frame) {
        return new CGPoint(frame.left, frame.top);
    }

    public static UIColor toUIColor(Integer color) {
        if (color != null) {
            float alpha = (float) (((color >> 24) & 0xff) / 255.0f);
            float red = (float) (((color >> 16) & 0xff) / 255.0f);
            float green = (float) (((color >> 8) & 0xff) / 255.0f);
            float blue = (float) ((color & 0xff) / 255.0f);
            return UIColor.colorWithRGBA(red, green, blue, alpha);
        } else {
            return UIColor.colorWithRGBA(0, 0, 0, 0);
        }
    }

    @Override
    public void resignFirstResponder() {
        resignFirstResponderForViewHierarchy(this.layerFront);
    }

    private static void resignFirstResponderForViewHierarchy(UIView view) {
        view.resignFirstResponder();
        for (UIView subview : view.getSubviews()) {
            resignFirstResponderForViewHierarchy(subview);
        }
    }

    @Override
    public void setOpaque(boolean b) {
        if (this.layerBack != null) {
            this.layerBack.setOpaque(b);
        }
        this.layerFront.setOpaque(b);
    }

    @Override
    public void bringSubviewToFront(CommonView view) {
        IPhoneView iv = (IPhoneView) view;
        UIView v = iv.layerBack != null ? iv.layerBack : iv.layerFront;
        this.layerFront.bringSubviewToFront(v);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.common.objects.CommonDeviceView#getSuperview()
     */
    @Override
    public CommonView getSuperview() {
        return this.superView;
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.common.objects.CommonDeviceView#getSubviews()
     */
    @Override
    public List<CommonView> getSubviews() {
        return subViews;
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.common.objects.CommonDeviceView#isUserInteractionEnabled()
     */
    @Override
    public boolean isUserInteractionEnabled() {
        return this.layerFront.isUserInteractionEnabled();
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * org.xmlvm.acl.common.objects.CommonView#setBackgroundDrawable(android
     * .graphics.drawable.Drawable)
     */
    @Override
    public void setBackgroundDrawable(Drawable d) {
        drawable = d;

        if (d != null) {
            if (d.getClass() == ColorDrawable.class) {
                removeLayerBack();

                ColorDrawable cd = (ColorDrawable) d;
                UIColor color = UIColor.colorWithRGBA(cd.xmlvmGetRed() / 255.0f,
                        cd.xmlvmGetGreen() / 255.0f, cd.xmlvmGetBlue() / 255.0f,
                        cd.xmlvmGetAlpha() / 255.0f);
                layerFront.setBackgroundColor(color);
            } else if (d.getClass() == BitmapDrawable.class) {
                this.layerFront.setBackgroundColor(UIColor.clearColor);
                UIImage img = ((IPhoneBitmapDrawableAdapter) ((BitmapDrawable) d).xmlvmGetImage())
                        .getImage();

                if (this.layerBack == null) {
                    UIImageView imageView = new UIImageView();
                    addLayerBack(imageView);
                }

                this.layerBack.setImage(img);
            } else {
                this.layerFront.setBackgroundColor(UIColor.clearColor);
                removeLayerBack();
                Log.w("XMLVM", "Drawable not supported: " + d.getClass().getName());
            }

            // TODO: Handle other Drawable types
        } else {
            // Clear existing background
            this.layerFront.setBackgroundColor(UIColor.clearColor);
            removeLayerBack();
        }
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xmlvm.acl.common.objects.CommonView#getBackgroundDrawable()
     */
    @Override
    public Drawable getBackgroundDrawable() {
        return drawable;
    }

    private void addLayerBack(UIImageView v) {
        this.layerBack = v;
        this.layerBack.setUserInteractionEnabled(this.layerFront.isUserInteractionEnabled());

        int zOrder = 0;
        CGRect frame = this.layerFront.getFrame();

        UIView parent = this.layerFront.getSuperview();
        if (parent != null) {
            zOrder = parent.getSubviews().indexOf(this.layerFront);
            this.layerFront.removeFromSuperview();
        }

        v.addSubview(this.layerFront);
        if (parent != null) {
            parent.insertSubview(v, zOrder);
        }

        this.layerBack.setFrame(frame);
        frame.origin.x = 0;
        frame.origin.y = 0;
        this.layerFront.setFrame(frame);
    }

    private void removeLayerBack() {
        if (this.layerBack == null) {
            return;
        }

        CGRect frame = this.layerBack.getFrame();
        int zOrder = 0;

        UIView parent = this.layerBack.getSuperview();
        if (parent != null) {
            zOrder = parent.getSubviews().indexOf(this.layerBack);
            this.layerBack.removeFromSuperview();
        }

        this.layerFront.removeFromSuperview();
        if (parent != null) {
            parent.insertSubview(this.layerFront, zOrder);
        }

        this.layerFront.setFrame(frame);
        this.layerBack = null;
    }
}
