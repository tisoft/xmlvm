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

package org.xmlvm.acl.wp7.objects;

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.acl.common.objects.CommonView;
import org.xmlvm.acl.common.subsystems.CommonWindow;

import Compatlib.System.Object;
import Compatlib.System.String;
import Compatlib.System.Windows.RoutedEventHandler;
import Compatlib.System.Windows.Size;
import Compatlib.System.Windows.UIElement;
import Compatlib.System.Windows.Controls.Image;
import Compatlib.System.Windows.Controls.Panel;
import Compatlib.System.Windows.Controls.Primitives.ButtonBase;
import Compatlib.System.Windows.Input.ManipulationCompletedEventArgs;
import Compatlib.System.Windows.Input.ManipulationDeltaEventArgs;
import Compatlib.System.Windows.Input.ManipulationStartedEventArgs;
import Compatlib.System.Windows.Media.Color;
import Compatlib.System.Windows.Media.SolidColorBrush;
import Compatlib.System.Windows.Media.Stretch;
import android.graphics.RectF;
import android.internal.Assert;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

public class WP7View extends Object implements CommonView {

    private UIElement        element;
    private View             androidView;
    private List<CommonView> subViews = new ArrayList<CommonView>();
    private CommonView       superView;


    public WP7View(View view) {
        this.androidView = view;
        setElement(new Panel());
    }

    /**
     * This constructor is only used by derived classes. The dummy argument is
     * used to differentiate it from the other constructor. This constructor
     * does not define the native WP7 element (which is created in the respective
     * derived class).
     */
    protected WP7View(View view, int dummy) {
        this.androidView = view;
    }

    public UIElement getElement() {
        return element;
    }

    public void setElement(UIElement element) {
        this.element = element;
        this.element.ManipulationStarted.__add(new RoutedEventHandler(this, new String(
                "OnManipulationStarted")));
        this.element.ManipulationDelta.__add(new RoutedEventHandler(this, new String(
                "OnManipulationDelta")));
        this.element.ManipulationCompleted.__add(new RoutedEventHandler(this, new String(
                "OnManipulationCompleted")));
    }

    @Override
    public RectF getFrame() {
        return WP7View.toRectangle(element.getDesiredSize());
    }

    @Override
    public void setFrame(RectF frame) {
        element.Measure(WP7View.toSize(frame));
        element.xmlvmSetXY((int) frame.top, (int) frame.left);
        if (this.getSuperview() != null) {
            UIElement element = ((WP7View) this.getSuperview()).getElement();
            if (element != null) {
                element.InvalidateArrange();
            }
        }
    }

    @Override
    public void setHidden(boolean b) {
        // TODO Auto-generated method stub
    }

    @Override
    public void setNeedsDisplay() {
        element.InvalidateArrange();
    }

    @Override
    public void addSubview(CommonView metricsView) {
        if (element instanceof Panel) {
            ((Panel) element).getChildren().Add(((WP7View) metricsView).getElement());
            this.subViews.add((WP7View) metricsView);
            metricsView.setSuperView(this);
        } else {
            Assert.NOT_IMPLEMENTED();
        }
    }

    @Override
    public void insertSubview(CommonView metricsView, int idx) {
        if (element instanceof Panel) {
            ((Panel) element).getChildren().Insert(idx, ((WP7View) metricsView).getElement());
            this.subViews.add(idx, (WP7View) metricsView);
            metricsView.setSuperView(this);
        } else {
            Assert.NOT_IMPLEMENTED();
        }
    }

    @Override
    public void removeFromSuperview() {
        if (element.getVisualParent() instanceof Panel) {
            ((Panel) element.getVisualParent()).getChildren().Remove(element);
            if (this.getSuperview() != null) {
                this.getSuperview().getSubviews().remove(this);
            }
        } else {
            Assert.NOT_IMPLEMENTED();
        }
    }

    @Override
    public void setContentMode(int mode) {
        if (element instanceof Image) {
            switch (mode) {
            case CommonView.CENTER:
                break;
            case CommonView.SCALE_ASPECT_FILL:
            case CommonView.SCALE_ASPECT_FIT:
                ((Image) element).setStretch(Stretch.Uniform);
                break;
            case CommonView.SCALE_TO_FILL:
                ((Image) element).setStretch(Stretch.Fill);
                break;
            }
        } else {
            Assert.NOT_IMPLEMENTED();
        }
    }

    public void OnManipulationStarted(Object sender, ManipulationStartedEventArgs args) {
        boolean event = xmlvmTouchesEvent(MotionEvent.ACTION_DOWN, (int) args
                .getManipulationOrigin().getX(), (int) args.getManipulationOrigin().getY());
        args.setHandled(event);
    }

    public void OnManipulationDelta(Object sender, ManipulationDeltaEventArgs args) {
        int x = (int) (args.getDeltaManipulation().getTranslation().getX() + args
                .getManipulationOrigin().getX());
        int y = (int) (args.getDeltaManipulation().getTranslation().getY() + args
                .getManipulationOrigin().getY());
        boolean event = xmlvmTouchesEvent(MotionEvent.ACTION_MOVE, x, y);
        args.setHandled(event);
    }

    public void OnManipulationCompleted(Object sender, ManipulationCompletedEventArgs args) {
        boolean event = xmlvmTouchesEvent(MotionEvent.ACTION_UP, (int) args.getManipulationOrigin()
                .getX(), (int) args.getManipulationOrigin().getY());
        args.setHandled(event);
    }

    public boolean xmlvmTouchesEvent(int action, int x, int y) {
        if (action == MotionEvent.ACTION_UP && androidView.getOnClickListener() != null) {
            androidView.getOnClickListener().onClick(androidView);
        }

        MotionEvent motionEvent = new MotionEvent(action, x, y);
        if (androidView.onTouchEvent(motionEvent)) {
            return true;
        }
        if (androidView.getOnTouchListener() != null
                && androidView.getOnTouchListener().onTouch(androidView, motionEvent)) {
            return true;
        }
        if (element instanceof ButtonBase) {
            return false;
        }
        if (androidView.getParent() != null && (androidView.getParent() instanceof View)) {
            return ((WP7View) ((View) androidView.getParent()).xmlvmGetViewHandler()
                    .getContentView()).xmlvmTouchesEvent(action, x + element.getX(),
                    y + element.getY());
        }
        return false;
    }

    public static RectF toRectangle(Size desiredSize) {
        return new RectF(0, 0, (int) desiredSize.getWidth(), (int) desiredSize.getHeight());
    }

    public static Size toSize(RectF frame) {
        return new Size(frame.right - frame.left, frame.bottom - frame.top);
    }

    @Override
    public void setBackgroundColor(Integer bcolor) {
        Log.w("ACL", "setBackgroundColor is not implemented: " + bcolor);
        Color c = toColor(bcolor);
        SolidColorBrush b = new SolidColorBrush(c);
        ((Panel) element).setBackground(b);
    }

    @Override
    public boolean isUserInteractionEnabled() {
        Log.w("ACL", "isUserInteractionEnabled is not implemented");
        return true;
    }

    @Override
    public void setUserInteractionEnabled(boolean status) {
        Log.w("ACL", "setUserInteractionEnabled is not implemented");
    }

    @Override
    public void resignFirstResponder() {
        Log.w("ACL", "resignFirstResponder is not implemented");
    }

    @Override
    public void setOpaque(boolean b) {
        Log.w("ACL", "setOpaque is not implemented");
    }

    @Override
    public Integer getBackgroundColor() {
        Log.w("ACL", "getBackgroundColor is not implemented");
        return 0;
    }

    @Override
    public void bringSubviewToFront(CommonView view) {
        Log.w("ACL", "bringSubviewToFront is not implemented");
    }

    @Override
    public CommonView getSuperview() {
        return this.superView;
    }

    @Override
    public List<CommonView> getSubviews() {
        return this.subViews;
    }

    @Override
    public void setSuperView(CommonView superView) {
        this.superView = superView;
    }

    public static Color toColor(Integer color) {
        if(color != null) {
            int alpha = ((color >> 24) & 0xff);
            int red = ((color >> 16) & 0xff);
            int green = ((color >> 8) & 0xff);
            int blue = color & 0xff;
            return Color.FromArgb(alpha, red, green, blue);
        } else {
            return Color.FromArgb(0, 0, 0, 0);
        }
    }

}
