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

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UIControl extends UIView {

    protected Map<Integer, UIControlDelegate> delegates;
    private boolean                           enabled;
    private boolean                           selected;
    private boolean                           highlighted;
    private int                               contentHorizontalAlignment;
    private int                               contentVerticalAlignment;


    public UIControl() {
        this(CGRect.Zero());
    }

    public UIControl(CGRect rect) {
        super(rect);
        delegates = new HashMap<Integer, UIControlDelegate>();
        contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left;
        contentVerticalAlignment = UIControlContentVerticalAlignment.Top;
    }

    public void addTarget(UIControlDelegate delegate, int uiControlEvent) {
        // @TODO: Support multiple delegates for a particular controlEvent
        delegates.put(uiControlEvent, delegate);
    }

    public Set<UIControlDelegate> getAllTargets() {
        return new HashSet<UIControlDelegate>(delegates.values());
    }

    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        if (xmlvmTouchedInsideView(touches)) {
            for (Iterator<Map.Entry<Integer, UIControlDelegate>> it = delegates.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<Integer, UIControlDelegate> e = it.next();
                if ((e.getKey().intValue() & TouchUpInside) > 0)
                    e.getValue().raiseEvent(this, UIControlEvent.TouchUpInside);
            }
        }
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    public boolean isHighlighted() {
        return highlighted;
    }

    public void setHighlighted(boolean highlighted) {
        this.highlighted = highlighted;
    }
    
    public int getState() {
        int state = 0;
        state |= selected ? UIControlState.Selected : 0;
        state |= enabled ? 0 : UIControlState.Disabled;
        state |= highlighted ? UIControlState.Highlighted : 0;
        return state;
    }

    public int getContentHorizontalAlignment() {
        return contentHorizontalAlignment;
    }

    public void setContentHorizontalAlignment(int uiControlContentHorizontalAlignment) {
        this.contentHorizontalAlignment = uiControlContentHorizontalAlignment;
    }

    public int getContentVerticalAlignment() {
        return contentVerticalAlignment;
    }

    public void setContentVerticalAlignment(int uiControlContentVerticalAlignment) {
        this.contentVerticalAlignment = uiControlContentVerticalAlignment;
    }
}
