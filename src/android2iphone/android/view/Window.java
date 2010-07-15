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

import org.xmlvm.iphone.CGAffineTransform;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWindow;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.graphics.drawable.Drawable;
import android.internal.Assert;
import android.internal.DecorView;
import android.internal.LayoutManager;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;

/**
 * iPhone Implementation of Android's Window class.
 * 
 * @see http://developer.android.com/reference/android/view/Window.html
 */
public class Window {
    public static final int FEATURE_NO_TITLE = 1;
    private Activity        activity;
    private UIWindow        iWindow;
    private View            toast;
    private FrameLayout     internalView;
    private DecorView       decorView;
    private FrameLayout     contentParent;
    private boolean         floating         = false;

    public Window(Activity parent) {
        this.activity = parent;
    }

    public void setContentView(View view) {
        xmlvmRemoveWindow();

        // Set default FrameLayout.LayoutParams if view does not have layout
        // params
        if (view.getLayoutParams() == null) {
            view.setLayoutParams(new FrameLayout.LayoutParams(LayoutParams.FILL_PARENT,
                    LayoutParams.FILL_PARENT));
        }

        // Create UIWindow and transparent internal FrameLayout used to layout
        // the content views.
        iWindow = new UIWindow();
        internalView = new FrameLayout(activity);
        internalView.setLayoutParams(new ViewGroup.LayoutParams(LayoutParams.FILL_PARENT,
                LayoutParams.FILL_PARENT));
        internalView.setBackgroundColor(0x80000000);
        iWindow.addSubview(internalView.xmlvmGetViewHandler().getMetricsView());

        // Create DecorView used as the window for all content views
        int gravity = ((FrameLayout.LayoutParams) view.getLayoutParams()).gravity;
        decorView = new DecorView(activity);
        // TODO: Set DecorView's LayoutParams based on Window.isFloating()
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                isFloating() ? LayoutParams.WRAP_CONTENT : LayoutParams.FILL_PARENT,
                isFloating() ? LayoutParams.WRAP_CONTENT : LayoutParams.FILL_PARENT, gravity);
        decorView.setLayoutParams(lp);
        internalView.addView(decorView);

        // Wrap the provided view with a FrameLayout as Android it does. Android
        // uses this to layout the window's decoration. We do it the same way to
        // support all FrameLayout.LayoutParams imposed on the content view.
        contentParent = new FrameLayout(activity);
        contentParent.setLayoutParams(new FrameLayout.LayoutParams(LayoutParams.FILL_PARENT,
                LayoutParams.FILL_PARENT));
        contentParent.setBackgroundColor(0x00000000);
        contentParent.addView(view);
        decorView.addView(contentParent);

        adjustFrameSize();
        xmlvmSetHidden(false);
    }

    public void setContentView(int id) {
        View v = LayoutManager.getLayout(activity, id, null);
        setContentView(v);
    }

    public void addContentView(View view, ViewGroup.LayoutParams params) {
        contentParent.addView(view, params);
        layoutContentView(view);
    }

    public void setFlags(int flags, int mask) {
        int maskedFlags = (flags & mask);
        if ((maskedFlags & WindowManager.LayoutParams.FLAG_FULLSCREEN) != 0) {
            UIApplication.sharedApplication().setStatusBarHidden(true);
            adjustFrameSize();
        }
    }

    public void setBackgroundDrawableResource(int resId) {
        if (decorView != null) {
            decorView.setBackgroundResource(resId);
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (decorView != null) {
            decorView.setBackgroundDrawable(drawable);
        }
    }

    public void xmlvmShowToast(View toast) {
        Assert.CHECK(this.toast == null);
        this.toast = toast;
        layoutContentView(toast);
        UIView itoast = toast.xmlvmGetViewHandler().getMetricsView();
        itoast.setUserInteractionEnabled(false);
        iWindow.addSubview(itoast);
    }

    public void xmlvmRemoveToast() {
        if (toast == null)
            return;
        UIView itoast = toast.xmlvmGetViewHandler().getMetricsView();
        itoast.removeFromSuperview();
        toast = null;
    }

    public void xmlvmSetHidden(boolean flag) {
        if (iWindow != null) {
            if (flag) {
                iWindow.setHidden(true);
            } else {
                iWindow.makeKeyAndVisible();
                iWindow.setHidden(false);
            }
        }
    }

    public void xmlvmRemoveWindow() {
        if (iWindow != null) {
            xmlvmSetHidden(true);
            iWindow = null;
            internalView.removeAllViews();
            internalView = null;
            decorView.removeAllViews();
            decorView = null;
            contentParent.removeAllViews();
            contentParent = null;
        }
    }

    /**
     * Internal. Not part of Android API. Called whenever the size or
     * orientation of the top-level window has changed (e.g., when the status
     * bar is made invisible).
     */
    private void adjustFrameSize() {
        if (iWindow == null)
            return;
        iWindow.setTransform(null);
        CGRect rect = getCGRect();
        iWindow.setFrame(rect);
        if (activity.getRequestedOrientation() == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE) {
            CGAffineTransform rotation = CGAffineTransform
                    .makeRotation((float) ((Math.PI / 180) * 90));
            // TODO Translate should be 90, 90 for visible status bar (i.e.,
            // non-fullscreen)
            CGAffineTransform translation = CGAffineTransform.translate(rotation, 80, 80);
            iWindow.setTransform(translation);
        }

        layoutContentView(internalView);
    }

    private void layoutContentView(View view) {
        if (view.getLayoutParams() == null) {
            view.setLayoutParams(new ViewGroup.LayoutParams(LayoutParams.FILL_PARENT,
                    LayoutParams.FILL_PARENT));
        }
        int widthMeasureSpec;
        int heightMeasureSpec;
        CGRect rect = getCGRect();
        LayoutParams lp = view.getLayoutParams();

        if (lp == null || lp.width == LayoutParams.FILL_PARENT) {
            widthMeasureSpec = MeasureSpec.makeMeasureSpec((int) rect.size.width,
                    MeasureSpec.EXACTLY);
        } else if (lp.width == LayoutParams.WRAP_CONTENT) {
            widthMeasureSpec = MeasureSpec.makeMeasureSpec((int) rect.size.width,
                    MeasureSpec.AT_MOST);
        } else {
            widthMeasureSpec = MeasureSpec.makeMeasureSpec(lp.width, MeasureSpec.EXACTLY);
        }

        if (lp == null || lp.height == LayoutParams.FILL_PARENT) {
            heightMeasureSpec = MeasureSpec.makeMeasureSpec((int) rect.size.height,
                    MeasureSpec.EXACTLY);
        } else if (lp.height == LayoutParams.WRAP_CONTENT) {
            heightMeasureSpec = MeasureSpec.makeMeasureSpec((int) rect.size.height,
                    MeasureSpec.AT_MOST);
        } else {
            heightMeasureSpec = MeasureSpec.makeMeasureSpec(lp.height, MeasureSpec.EXACTLY);
        }

        view.xmlvmSetMeasureSpec(widthMeasureSpec, heightMeasureSpec);
        view.requestLayout();
    }

    /**
     * Internal. Not part of Android API.
     */
    public CGRect getCGRect() {
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.getApplicationFrame();
        if (activity.getRequestedOrientation() == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE) {
            float t = rect.size.height;
            rect.size.height = rect.size.width;
            rect.size.width = t;
        }
        return rect;
    }

    /**
     * @param id
     * @return
     */
    public View findViewById(int id) {
        return internalView.findViewById(id);
    }

    public WindowManager.LayoutParams getAttributes() {
        // TODO return proper attributes
        return new WindowManager.LayoutParams();
    }

    public boolean isFloating() {
        return floating;
    }
}
