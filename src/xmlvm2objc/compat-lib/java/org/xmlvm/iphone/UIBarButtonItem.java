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

import java.util.HashSet;
import java.util.Set;

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.UIBarButtonItemView;
import org.xmlvm.iphone.internal.renderer.UIBarButtonItemRenderer;
import org.xmlvm.iphone.internal.renderer.UIButtonRenderer;

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public class UIBarButtonItem extends UIBarItem {
    /* SEL action : replaced solely by UIBarButtonItemTarget */
    /* */

    private UIView                  customView;
    private Set<String>             possibleTitles;
    private UIBarButtonItemDelegate target;
    private int                     style;
    private float                   width;


    public UIBarButtonItem(int uiBarButtonSystemItem, final UIBarButtonItemDelegate action) {
    }

    public UIBarButtonItem(UIView customview) {
    }

    public UIBarButtonItem(UIImage image, int uiBarButtonItemStyle,
            final UIBarButtonItemDelegate action) {
    }

    public UIBarButtonItem(String title, int uiBarButtonItemStyle,
            final UIBarButtonItemDelegate action) {
        possibleTitles = new HashSet<String>();
        possibleTitles.add(title);
        style = uiBarButtonItemStyle;
        this.width = 50;

        UIBarButtonItemView b = new UIBarButtonItemView(this, false);
        b.addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControl sender, int eventType) {
                if (action != null)
                    action.clicked();
            }
        }, UIControlEvent.TouchUpInside);
        b.setFont(UIBarButtonItemRenderer.BAR_BUTTON_FONT);
        customView = b;
        setTitle(title);
    }

    @Override
    public void setTitle(String title) {
        super.setTitle(title);
        if (customView instanceof UIBarButtonItemView)
            ((UIBarButtonItemView) customView).setTitle(title, 0);
        UIButtonRenderer.Metrics m = UIButtonRenderer.getMetrics(UIGraphics.getCurrentContext()
                .xmlvmGetGraphics2D(), title, UIBarButtonItemRenderer.BAR_BUTTON_FONT
                .xmlvmGetFont());
        float cutoff = ((UIBarButtonItemRenderer) getCustomView().xmlvmGetRenderer()).isBack() ? UIBarButtonItemRenderer.CUTOFF
                : 0;
        setWidth(m.width + UIBarButtonItemRenderer.TEXT_INSET * 2 + cutoff);
        updateViews();
    }

    public UIView getCustomView() {
        return customView;
    }

    public void setCustomView(UIView customView) {
        this.customView = customView;
        updateViews();
    }

    public Set<String> getPossibleTitles() {
        return possibleTitles;
    }

    public void setPossibleTitles(Set<String> possibleTitles) {
        this.possibleTitles = possibleTitles;
    }

    public int getStyle() {
        return style;
    }

    public void setStyle(int style) {
        this.style = style;
        updateViews();
    }

    public UIBarButtonItemDelegate getTarget() {
        return target;
    }

    public void setTarget(UIBarButtonItemDelegate target) {
        this.target = target;
    }

    public float getWidth() {
        return width;
    }

    public void setWidth(float width) {
        this.width = width;
        updateViews();
    }
}
