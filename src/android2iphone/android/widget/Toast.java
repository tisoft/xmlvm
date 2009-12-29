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

import android.app.Activity;
import android.content.Context;
import android.internal.ActivityManager;
import android.internal.Assert;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.ViewGroup.LayoutParams;

/**
 * @author arno
 * 
 */
public class Toast {

    public static final int LENGTH_LONG  = 1;
    public static final int LENGTH_SHORT = 0;

    private Activity        activity;
    private View            view;

    public Toast(Context context) {
        activity = ActivityManager.getTopActivity();
    }

    public static Toast makeText(Context context, int resId, int duration) {
        String str = context.getResources().getText(resId);
        return makeText(context, str, duration);
    }

    public static Toast makeText(Context context, CharSequence text, int duration) {
        Toast toast = new Toast(context);
        toast.setDuration(duration);
        TextView textView = new TextView(context);
        toast.setView(textView);
        toast.setText(text);
        return toast;
    }

    public void setText(CharSequence text) {
        ((TextView) view).setText(text);
    }

    public void setView(View view) {
        this.view = view;
    }

    public void setGravity(int gravity, int xOffset, int yOffset) {
        Log.w("xmlvm", "Toast.setGravity() not implemented");
    }

    public void setDuration(int lengthLong) {
        Log.w("xmlvm", "Toast.setDuration() not implemented");
    }

    public void show() {
        RelativeLayout l = new RelativeLayout(activity);
        RelativeLayout.LayoutParams p = new RelativeLayout.LayoutParams(LayoutParams.WRAP_CONTENT,
                LayoutParams.WRAP_CONTENT);
        p.addRule(RelativeLayout.CENTER_HORIZONTAL, RelativeLayout.TRUE);
        p.addRule(RelativeLayout.CENTER_VERTICAL, RelativeLayout.TRUE);
        l.addView(view, p);
        final Window window = activity.getWindow();
        window.xmlvmShowToast(l);
        Handler h = new Handler();
        Runnable r = new Runnable() {

            @Override
            public void run() {
                window.xmlvmRemoveToast();
            }
        };
        h.postDelayed(r, 3000);
    }

    public void cancel() {
        Assert.NOT_IMPLEMENTED();
    }

}
