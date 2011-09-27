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

package org.xmlvm.iphone;

import java.util.Set;

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.renderer.UISliderRenderer;

@XMLVMSkeletonOnly
public class UISlider extends UIControl {

    private float   minimumValue             = 0.0f;
    private float   maximumValue             = 1.0f;
    private float   value                    = 0.5f;
    private UIImage minimumValueImage        = null;
    private UIImage maximumValueImage        = null;
    private UIImage currentMinimumTrackImage = null;
    private UIImage currentMaximumTrackImage = null;
    private UIImage currentThumbImage        = null;


    public UISlider() {
        this(CGRect.Zero());
    }

    public UISlider(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UISliderRenderer(this));
    }

    public void setValue(float val) {
        setValue(val, false);
    }

    public void setValue(float val, boolean animated) {
        if (val < minimumValue) {
            val = minimumValue;
        }
        if (val > maximumValue) {
            val = maximumValue;
        }
        value = val;
        this.setNeedsDisplay();
    }

    public float getValue() {
        return value;
    }

    public void setMinimumValue(float min) {
        minimumValue = min;
        if (maximumValue < minimumValue)
            maximumValue = minimumValue;
        if (value < minimumValue)
            value = minimumValue;
        this.setNeedsDisplay();
    }

    public float getMinimumValue() {
        return minimumValue;
    }

    public void setMaximumValue(float max) {
        maximumValue = max;
        if (minimumValue > maximumValue)
            minimumValue = maximumValue;
        if (value > maximumValue)
            value = minimumValue;
        this.setNeedsDisplay();
    }

    public float getMaximumValue() {
        return maximumValue;
    }

    public UIImage getMaximumValueImage() {
        return maximumValueImage;
    }

    public void setMaximumValueImage(UIImage maximumValueImage) {
        this.maximumValueImage = maximumValueImage;
    }

    public UIImage getMinimumValueImage() {
        return minimumValueImage;
    }

    public void setMinimumValueImage(UIImage minimumValueImage) {
        this.minimumValueImage = minimumValueImage;
    }

    public UIImage getCurrentMinimumTrackImage() {
        return currentMinimumTrackImage;
    }

    public UIImage minimumTrackImageForState(int uiControlState) {
        // TODO : Java implementation
        return null;
    }

    public void setMinimumTrackImage(UIImage image, int uiControlState) {
        // TODO : Java implementation
    }

    public UIImage getCurrentMaximumTrackImage() {
        return currentMaximumTrackImage;
    }

    public UIImage maximumTrackImageForState(int uiControlState) {
        // TODO : Java implementation
        return null;
    }

    public void setMaximumTrackImage(UIImage image, int uiControlState) {
        // TODO : Java implementation
    }

    public UIImage getCurrentThumbImage() {
        return currentThumbImage;
    }

    public UIImage thumbImageForState(int uiControlState) {
        // TODO : Java implementation
        return null;
    }

    public void setThumbImage(UIImage image, int uiControlState) {
        // TODO : Java implementation
    }

    /* TODO: again here with event handling */
    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        UITouch t = touches.iterator().next();
        CGPoint p = t.locationInView(this);
        CGRect r = this.getBounds();

        if (p.x < 0 || p.y < 0 || p.x > r.size.width || p.y > r.size.height)
            return;
        raiseEvent(UIControlEvent.TouchUpInside);
        float newvalue = (float) p.x / r.size.width;
        newvalue = minimumValue + (maximumValue - minimumValue) * newvalue;
        if (this.value != newvalue) {
            setValue(newvalue);
            raiseEvent(UIControlEvent.ValueChanged);
        }
    }
}
