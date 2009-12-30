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

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.iphone.CGAffineTransform;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIApplication;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIScreen;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWindow;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.internal.Assert;
import android.internal.LayoutManager;
import android.internal.XMLVMTheme;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;

/**
 * iPhone Implementation of Android's Window class.
 * 
 * @see http://developer.android.com/reference/android/view/Window.html
 */
public class Window {
    public static final int FEATURE_NO_TITLE = 1;
    private Activity        activity;
    private UIWindow        iWindow;
    private List<View>      contentViews;
    private View            toast;

    public Window(Activity parent) {
        this.activity = parent;
    }

    public void setContentView(View view) {
        xmlvmRemoveWindow();

        iWindow = new UIWindow();

        if (XMLVMTheme.getTheme() == XMLVMTheme.XMLVM_THEME_ANDROID) {
            iWindow.setBackgroundColor(UIColor.colorWithRGBA(0.0941f, 0.0941f, 0.0941f, 1.0f));
        }

        iWindow.addSubview(view.xmlvmGetUIView());
        contentViews.add(view);
        adjustFrameSize();
        xmlvmSetHidden(false);
    }

    public void setContentView(int id) {
        View v = LayoutManager.getLayout(activity, id, null);
        setContentView(v);
    }

    public void addContentView(View view, WindowManager.LayoutParams params) {
        // TODO what to do with params?
        iWindow.addSubview(view.xmlvmGetUIView());
        contentViews.add(view);
        layoutContentView(view);
    }

    public void setFlags(int flags, int mask) {
        int maskedFlags = (flags & mask);
        if ((maskedFlags & WindowManager.LayoutParams.FLAG_FULLSCREEN) != 0) {
            UIApplication.sharedApplication().setStatusBarHidden(true);
            adjustFrameSize();
        }
    }

    public void xmlvmShowToast(View toast) {
        Assert.CHECK(this.toast == null);
        this.toast = toast;
        layoutContentView(toast);
        UIView itoast = toast.xmlvmGetUIView();
        itoast.setUserInteractionEnabled(false);
        iWindow.addSubview(itoast);
    }

    public void xmlvmRemoveToast() {
        if (toast == null)
            return;
        UIView itoast = toast.xmlvmGetUIView();
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
        xmlvmSetHidden(true);
        if (contentViews != null) {
            for (View view : contentViews) {
                view.xmlvmGetUIView().removeFromSuperview();
                view.xmlvmSetParent(null);
            }
        }
        iWindow = null;
        contentViews = new ArrayList<View>();
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

        for (View view : contentViews) {
            layoutContentView(view);
        }
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

    public View xmlvmGetMainView() {
        return contentViews.get(0);
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
        return contentViews.get(0).findViewById(id);
    }

    public WindowManager.LayoutParams getAttributes() {
        // TODO return proper attributes
        return new WindowManager.LayoutParams();
    }

}
