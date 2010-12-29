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

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.renderer.UISegmentedControlRenderer;

/**
 * @author teras
 */
@XMLVMSkeletonOnly
public class UISegmentedControl extends UIControl {

    // private static final float kSegmentedControlWidth = 207.0f;
    // private static final float kSegmentedControlHeightDefault = 43.0f;
    // private static final float kSegmentedControlHeightBar = 29.0f;
    /* */
    private int               selection = -1;
    private ArrayList<String> titles    = new ArrayList<String>();
    private int               style     = UISegmentedControlStyle.Plain;
    private UIColor           tintColor = null;
    private boolean           momentary = false;


    // :
    // implement
    // under
    // Java

    public UISegmentedControl() {
        this(CGRect.Zero());
    }

    public UISegmentedControl(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UISegmentedControlRenderer(this));
    }

    public UISegmentedControl(ArrayList items) {
        for (int i = 0; i < items.size(); i++)
            insertSegmentWithTitle((String) items.get(i), i, false);
        xmlvmSetRenderer(new UISegmentedControlRenderer(this));
    }

    public void setTitle(String title, int index) {
        titles.set(index, title);
        setNeedsDisplay();
    }

    public String getTitleForSegmentAtIndex(int index) {
        return titles.get(index);
    }

    public final void insertSegmentWithTitle(String title, int index, boolean animated) {
        titles.add(index, title);
        if (selection >= index) {
            selection++;
            fireEventValueChanged();
        }
        setNeedsDisplay();
    }

    public final void insertSegmentWithImage(UIImage img, int index, boolean animated) {
        insertSegmentWithTitle("IMG", index, animated);
    }

    public int numberOfSegments() {
        return titles.size();
    }

    public void removeAllSegments() {
        titles.clear();
        selection = -1;
        setNeedsDisplay();
    }

    public void removeSegmentAtIndex(int index, boolean animated) {
        titles.remove(index);
        if (selection > index || selection < 0) {
            selection--;
            fireEventValueChanged();
        } else if (selection == index) {
            selection = -1;
            fireEventValueChanged();
        }
        setNeedsDisplay();
    }

    public int getSelectedSegmentIndex() {
        return selection;
    }

    public void setSelectedSegmentIndex(int index) {
        if (index != selection) {
            selection = index;
            fireEventValueChanged();
            setNeedsDisplay();
        }
    }

    public int getSegmentedControlStyle() {
        return style;
    }

    public void setSegmentedControlStyle(int uiSegmentedControlStyle) {
        this.style = uiSegmentedControlStyle;
        // frame.size.height = (style ==
        // UISegmentedControlStyle.UISegmentedControlStyleBar) ?
        // kSegmentedControlHeightBar : kSegmentedControlHeightDefault;
        setNeedsDisplay();
    }

    public UIColor getTintColor() {
        return tintColor;
    }

    public void setTintColor(UIColor tintColor) {
        this.tintColor = tintColor;
    }

    public boolean isMomentary() {
        return momentary;
    }

    public void setMomentary(boolean momentary) {
        this.momentary = momentary;
    }

    /* TODO teras: again should remove this type of code */
    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        UITouch t = touches.iterator().next();
        CGPoint p = t.locationInView(this);
        CGRect r = this.getBounds();

        int newselection = (int) (p.x / r.size.width * (numberOfSegments()));
        if (newselection < 0 || newselection >= numberOfSegments())
            return;

        for (Iterator<Map.Entry<Integer, UIControlDelegate>> it = delegates.entrySet().iterator(); it
                .hasNext();) {
            Map.Entry<Integer, UIControlDelegate> e = it.next();
            if ((e.getKey().intValue() & TouchUpInside) > 0) {
                e.getValue().raiseEvent(this, UIControlEvent.TouchUpInside);
            }
        }
        if (newselection != selection) {
            setSelectedSegmentIndex(newselection);
        }
    }

    private void fireEventValueChanged() {
        for (Iterator<Map.Entry<Integer, UIControlDelegate>> it = delegates.entrySet().iterator(); it
                .hasNext();) {
            Map.Entry<Integer, UIControlDelegate> e = it.next();
            if ((e.getKey().intValue() & ValueChanged) > 0) {
                e.getValue().raiseEvent(this, UIControlEvent.ValueChanged);
            }
        }
    }
}
