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

import static org.xmlvm.iphone.UIControlEvent.TouchUpInside;
import static org.xmlvm.iphone.UIControlEvent.ValueChanged;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.renderer.UISliderRenderer;

/**
 * @author teras
 */
@XMLVMSkeletonOnly
public class UISlider extends UIControl {

    private float minimum = 0.0f;
    private float maximum = 1.0f;
    private float value   = 0.5f;


    public UISlider() {
        this(CGRect.Zero());
    }

    public UISlider(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UISliderRenderer(this));
    }

    public void setValue(float val) {
        if (val < minimum)
            val = minimum;
        if (val > maximum)
            val = maximum;
        value = val;
        this.setNeedsDisplay();
    }

    public float getValue() {
        return value;
    }

    public void setMinimumValue(float min) {
        minimum = min;
        if (maximum < minimum)
            maximum = minimum;
        if (value < minimum)
            value = minimum;
        this.setNeedsDisplay();
    }

    public float getMinimumValue() {
        return minimum;
    }

    public void setMaximumValue(float max) {
        maximum = max;
        if (minimum > maximum)
            minimum = maximum;
        if (value > maximum)
            value = minimum;
        this.setNeedsDisplay();
    }

    public float getMaximumValue() {
        return maximum;
    }

    /* TODO: again here with event handling */
    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        UITouch t = touches.iterator().next();
        CGPoint p = t.locationInView(this);
        CGRect r = this.getBounds();

        if (p.x < 0 || p.y < 0 || p.x > r.size.width || p.y > r.size.height)
            return;
        for (Iterator<Map.Entry<Integer, UIControlDelegate>> it = delegates.entrySet().iterator(); it
                .hasNext();) {
            Map.Entry<Integer, UIControlDelegate> e = it.next();
            if ((e.getKey().intValue() & TouchUpInside) > 0)
                e.getValue().raiseEvent(this, UIControlEvent.TouchUpInside);
        }
        float newvalue = (float) p.x / r.size.width;
        newvalue = minimum + (maximum - minimum) * newvalue;
        if (this.value != newvalue) {
            setValue(newvalue);
            for (Iterator<Map.Entry<Integer, UIControlDelegate>> it = delegates.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<Integer, UIControlDelegate> e = it.next();
                if ((e.getKey().intValue() & ValueChanged) > 0)
                    e.getValue().raiseEvent(this, UIControlEvent.ValueChanged);
            }
        }
    }
}
