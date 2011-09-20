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

import android.content.Context;
import android.graphics.Typeface;
import android.internal.TopActivity;
import android.internal.XMLVMTheme;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.LinkedList;
import org.xmlvm.iphone.NSObject;
import org.xmlvm.iphone.NSSelector;
import org.xmlvm.iphone.NSTimer;
import org.xmlvm.iphone.NSTimerDelegate;

public class Toast {

    public static final int LENGTH_LONG = 1;
    public static final int LENGTH_SHORT = 0;
    private int duration;
    private View view;
    private RelativeLayout metricsview;
    private final Context context;
    //
    // Toast display manager lock
    private static final Toast NO_TOAST;
    private static Toast lasttoast;
    private static final LinkedList<Toast> registry;
    private static final RelativeLayout.LayoutParams layoutParams;

    static {
        registry = new LinkedList<Toast>();
        layoutParams = new RelativeLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        layoutParams.addRule(RelativeLayout.CENTER_HORIZONTAL, RelativeLayout.TRUE);
        layoutParams.addRule(RelativeLayout.CENTER_VERTICAL, RelativeLayout.TRUE);
        NO_TOAST = new Toast(null);
        lasttoast = NO_TOAST;
    }

    public Toast(Context context) {
        this.context = context;
        duration = LENGTH_SHORT;
    }

    public static Toast makeText(Context context, int resId, int duration) {
        return makeText(context, context.getResources().getText(resId), duration);
    }

    public static Toast makeText(Context context, CharSequence text, int duration) {
        TextView textView = new TextView(context);
        textView.setBackgroundColor(XMLVMTheme.TOAST_COLOR);
        textView.setTextSize(16);
        textView.setTypeface(null, Typeface.BOLD);
        textView.setGravity(Gravity.CENTER);

        Toast toast = new Toast(context);
        toast.setView(textView);
        toast.setDuration(duration);
        toast.setText(text);
        return toast;
    }

    public void setText(CharSequence text) {
        if (view instanceof TextView) {
            ((TextView) view).setText(text);
        } else {
            throw new RuntimeException("This Toast was not created with Toast.makeText()");
        }
    }

    public void setView(View view) {
        this.view = view;
    }

    public void setGravity(int gravity, int xOffset, int yOffset) {
        if (view instanceof TextView) {
            ((TextView) view).setGravity(gravity);
        }
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public void show() {
        NSObject.performSelectorOnMainThread(new NSSelector() {

            public void invokeWithArgument(Object arg) {
                updateVisuals(arg);
            }
        }, Boolean.TRUE, true);
    }

    public void cancel() {
        NSObject.performSelectorOnMainThread(new NSSelector() {

            public void invokeWithArgument(Object arg) {
                updateVisuals(arg);
            }
        }, Boolean.FALSE, true);
    }

    private void updateVisuals(Object setVisible) {
        synchronized (lasttoast) {
            if (((Boolean) setVisible).booleanValue()) {
                if (lasttoast == NO_TOAST) {
                    showToastVisuals();
                }
                registry.offer(this);
            } else {
                registry.remove(this);
                if (lasttoast == this) {
                    if (metricsview != null) {
                        metricsview.xmlvmGetViewHandler().getMetricsView().removeFromSuperview();
                    }
                    if (registry.size() > 0) {
                        registry.peek().showToastVisuals();
                    } else {
                        lasttoast = NO_TOAST;
                    }
                }
            }
        }
    }

    private void showToastVisuals() {
        NSTimer.scheduledTimerWithTimeInterval(duration == LENGTH_SHORT ? 2 : 4, new NSTimerDelegate() {

            public void timerEvent(NSTimer timer) {
                cancel();
            }
        }, null, false);
        lasttoast = this;
        metricsview = new RelativeLayout(context);
        metricsview.addView(view, layoutParams);
        TopActivity.get().getWindow().xmlvmShowToast(metricsview);
    }
}
