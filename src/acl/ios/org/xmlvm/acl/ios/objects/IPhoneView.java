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
import org.xmlvm.iphone.CGPoint;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIViewContentMode;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.internal.Assert;
import android.view.MotionEvent;
import android.view.View;

public class IPhoneView implements CommonView {

    private UIView           view;
    private View             androidView;

    private List<CommonView> subViews = new ArrayList<CommonView>();
    private CommonView       superView;

    private Integer          bcolor;


    public IPhoneView(View view) {
        this.androidView = view;
        this.view = new UIView() {

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
        return view;
    }

    /**
     * @param view
     *            the view to set
     */
    public void setView(UIView view) {
        this.view = view;
    }

    @Override
    public void setFrame(RectF frame) {
        this.view.setFrame(IPhoneView.toCGRect(frame));
    }

    @Override
    public void setHidden(boolean b) {
        this.view.setHidden(b);
    }

    @Override
    public void setNeedsDisplay() {
        this.view.setNeedsDisplay();
    }

    @Override
    public void setBackgroundColor(Integer bcolor) {
        this.bcolor = bcolor;
        this.view.setBackgroundColor(IPhoneView.toUIColor(bcolor));
    }

    @Override
    public void addSubview(CommonView view) {
        this.view.addSubview(((IPhoneView) view).getView());
        this.subViews.add(view);
        ((IPhoneView) view).setSuperView(this);
    }

    @Override
    public void setSuperView(CommonView superView) {
        this.superView = superView;
    }

    @Override
    public void insertSubview(CommonView view, int idx) {
        this.view.insertSubview(((IPhoneView) view).getView(), idx);
        this.subViews.add(idx, view);
        ((IPhoneView) view).setSuperView(this);
    }

    @Override
    public void removeFromSuperview() {
        this.view.removeFromSuperview();
        if (this.getSuperview() != null) {
            ((IPhoneView) this.getSuperview()).subViews.remove(this);
            setSuperView(null);
        }
    }

    @Override
    public void setContentMode(int mode) {
        switch (mode) {
        case CommonView.SCALE_TO_FILL:
            this.view.setContentMode(UIViewContentMode.ScaleToFill);
            break;
        case CommonView.SCALE_ASPECT_FIT:
            this.view.setContentMode(UIViewContentMode.ScaleAspectFit);
            break;
        case CommonView.SCALE_ASPECT_FILL:
            this.view.setContentMode(UIViewContentMode.ScaleAspectFill);
            break;
        case CommonView.CENTER:
            this.view.setContentMode(UIViewContentMode.Center);
            break;
        default:
            Assert.NOT_IMPLEMENTED();
            break;
        }
    }

    @Override
    public RectF getFrame() {
        return IPhoneView.toRectFangle(this.view.getFrame());
    }

    public boolean xmlvmTouchesEvent(int action, Set<UITouch> touches, UIEvent event) {
        if (action == MotionEvent.ACTION_UP && androidView.getOnClickListener() != null) {
            androidView.getOnClickListener().onClick(androidView);
        }

        UITouch firstTouch = touches.iterator().next();
        CGPoint point = firstTouch.locationInView(((IPhoneView) androidView.xmlvmGetViewHandler()
                .getMetricsView()).getView());
        MotionEvent motionEvent = new MotionEvent(action, (int) point.x, (int) point.y);
        if (androidView.onTouchEvent(motionEvent)) {
            return true;
        }
        if (androidView.getOnTouchListener() != null
                && androidView.getOnTouchListener().onTouch(androidView, motionEvent)) {
            return true;
        }
        if (androidView.getParent() != null && (androidView.getParent() instanceof View)) {
            return ((IPhoneView) ((View) androidView.getParent()).xmlvmGetViewHandler()
                    .getContentView()).xmlvmTouchesEvent(action, touches, event);
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
        this.view.setUserInteractionEnabled(status);
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
        this.view.resignFirstResponder();
    }

    @Override
    public void setOpaque(boolean b) {
        this.view.setOpaque(b);
    }

    @Override
    public Integer getBackgroundColor() {
        return this.bcolor;
    }

    @Override
    public void bringSubviewToFront(CommonView view) {
        this.view.bringSubviewToFront(((IPhoneView) view).getView());
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
        return view.isUserInteractionEnabled();
    }
}
