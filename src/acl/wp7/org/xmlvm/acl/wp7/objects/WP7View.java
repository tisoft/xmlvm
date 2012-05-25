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

import java.util.List;

import org.xmlvm.acl.common.objects.CommonView;

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
import Compatlib.System.Windows.Media.Stretch;
import android.graphics.RectF;
import android.internal.Assert;
import android.view.MotionEvent;
import android.view.View;

/**
 *
 */
public class WP7View extends Object implements CommonView {

    private UIElement element;
    private View androidView;
    
    public WP7View(View view) {
        this.androidView = view;
        setElement(new Panel());
    }
    
    public UIElement getElement() {
        return element;
    }

    public void setElement(UIElement element) {
        this.element = element;
        this.element.ManipulationStarted.__add(new RoutedEventHandler(this, new String("OnManipulationStarted")));
        this.element.ManipulationDelta.__add(new RoutedEventHandler(this, new String("OnManipulationDelta")));
        this.element.ManipulationCompleted.__add(new RoutedEventHandler(this, new String("OnManipulationCompleted")));
    }

    @Override
    public RectF getFrame() {
        return WP7View.toRectFangle(element.getDesiredSize());
    }

    @Override
    public void setFrame(RectF frame) {
        element.Measure(WP7View.toSize(frame));
        element.xmlvmSetXY((int) frame.top, (int) frame.left);
    }

    @Override
    public void setHidden(boolean b) {
        // TODO Auto-generated method stub
    }

    @Override
    public void setNeedsDisplay() {
        // TODO Auto-generated method stub
        element.InvalidateArrange();
    }

    @Override
    public void addSubview(CommonView metricsView) {
        if(element instanceof Panel) {
            ((Panel) element).getChildren().Add(((WP7View)metricsView).getElement());
        } else {
            Assert.NOT_IMPLEMENTED();
        }
    }

    @Override
    public void insertSubview(CommonView metricsView, int idx) {
        if(element instanceof Panel) {
            ((Panel) element).getChildren().Insert(idx, ((WP7View)metricsView).getElement());
        } else {
            Assert.NOT_IMPLEMENTED();
        }        
    }

    @Override
    public void removeFromSuperview() {
        if(element.getVisualParent() instanceof Panel) {
            ((Panel) element.getVisualParent()).getChildren().Remove(element);
        } else {
            Assert.NOT_IMPLEMENTED();
        }
    }

    @Override
    public void setContentMode(int mode) {
        if(element instanceof Image) {
            switch(mode) {
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
        boolean event = xmlvmTouchesEvent(MotionEvent.ACTION_DOWN, (int) args.getManipulationOrigin().getX(), (int) args.getManipulationOrigin().getY());
        args.setHandled(event);
    }
    
    public void OnManipulationDelta(Object sender, ManipulationDeltaEventArgs args) {
        int x = (int) (args.getDeltaManipulation().getTranslation().getX() + args.getManipulationOrigin().getX());
        int y = (int) (args.getDeltaManipulation().getTranslation().getY() + args.getManipulationOrigin().getY());
        boolean event = xmlvmTouchesEvent(MotionEvent.ACTION_MOVE, x, y);
        args.setHandled(event);
    }
    
    public void OnManipulationCompleted(Object sender, ManipulationCompletedEventArgs args) {
        boolean event = xmlvmTouchesEvent(MotionEvent.ACTION_UP, (int) args.getManipulationOrigin().getX(), (int) args.getManipulationOrigin().getY());
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
        if (androidView.getOnTouchListener() != null && androidView.getOnTouchListener().onTouch(androidView, motionEvent)) {
            return true;
        }
        if(element instanceof ButtonBase) {
            return false;
        }
        if (androidView.getParent() != null && (androidView.getParent() instanceof View)) {
            return ((WP7View)((View) androidView.getParent()).xmlvmGetViewHandler().getContentView()).xmlvmTouchesEvent(action, x, y);
        }
        return false;
    }    
    
    public static RectF toRectFangle(Size desiredSize) {
        return new RectF(0, 0, (int) desiredSize.getWidth(), (int) desiredSize.getHeight());
    }
    
    public static Size toSize(RectF frame) {
        return new Size(frame.right - frame.left, frame.bottom - frame.top);
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#setBackgroundColor(java.lang.Integer)
     */
    @Override
    public void setBackgroundColor(Integer bcolor) {
        Assert.NOT_IMPLEMENTED();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#isUserInteractionEnabled()
     */
    @Override
    public boolean isUserInteractionEnabled() {
        Assert.NOT_IMPLEMENTED();
        return true;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#setUserInteractionEnabled(boolean)
     */
    @Override
    public void setUserInteractionEnabled(boolean status) {
        Assert.NOT_IMPLEMENTED();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#resignFirstResponder()
     */
    @Override
    public void resignFirstResponder() {
        Assert.NOT_IMPLEMENTED();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#setOpaque(boolean)
     */
    @Override
    public void setOpaque(boolean b) {
        Assert.NOT_IMPLEMENTED();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#getBackgroundColor()
     */
    @Override
    public Integer getBackgroundColor() {
        Assert.NOT_IMPLEMENTED();
        return 0;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#bringSubviewToFront(org.xmlvm.common.objects.CommonDeviceView)
     */
    @Override
    public void bringSubviewToFront(CommonView view) {
        Assert.NOT_IMPLEMENTED();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#getSuperview()
     */
    @Override
    public CommonView getSuperview() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#setTopLevelViewController()
     */
    @Override
    public void setTopLevelViewController() {
        Assert.NOT_IMPLEMENTED();
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#getSubviews()
     */
    @Override
    public List<CommonView> getSubviews() {
        Assert.NOT_IMPLEMENTED();
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonView#getViewFromController()
     */
    @Override
    public void loadViewInController() {
        Assert.NOT_IMPLEMENTED();
    }

}
