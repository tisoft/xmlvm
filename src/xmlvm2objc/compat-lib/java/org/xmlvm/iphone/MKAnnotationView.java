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

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class MKAnnotationView extends UIView {

    private boolean      enabled;
    private UIImage      image;
    private boolean      highlighted;
    private MKAnnotation annotation;
    private CGPoint      centerOffset;
    private CGPoint      calloutOffset;
    private String       reuseIdentifier;
    private boolean      selected;
    private boolean      canShowCallout;
    private UIView       leftCalloutAccessoryView;
    private UIView       rightCalloutAccessoryView;
    private boolean      draggable;
    private int          dragState;


    public MKAnnotationView(MKAnnotation annotation, String reuseIdentifier) {
        this.annotation = annotation;
        this.reuseIdentifier = reuseIdentifier;
    }

    public void prepareForReuse() {
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public MKAnnotation getAnnotation() {
        return annotation;
    }

    public void setAnnotation(MKAnnotation annotation) {
        this.annotation = annotation;
    }

    public CGPoint getCalloutOffset() {
        return calloutOffset;
    }

    public void setCalloutOffset(CGPoint calloutOffset) {
        this.calloutOffset = calloutOffset;
    }

    public CGPoint getCenterOffset() {
        return centerOffset;
    }

    public void setCenterOffset(CGPoint centerOffset) {
        this.centerOffset = centerOffset;
    }

    public boolean isHighlighted() {
        return highlighted;
    }

    public void setHighlighted(boolean highlighted) {
        this.highlighted = highlighted;
    }

    public UIImage getImage() {
        return image;
    }

    public void setImage(UIImage image) {
        this.image = image;
    }

    public String getReuseIdentifier() {
        return reuseIdentifier;
    }

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        setSelected(selected, false);
    }

    public void setSelected(boolean selected, boolean animated) {
        this.selected = selected;
    }

    public boolean isCanShowCallout() {
        return canShowCallout;
    }

    public void setCanShowCallout(boolean canShowCallout) {
        this.canShowCallout = canShowCallout;
    }

    public UIView getLeftCalloutAccessoryView() {
        return leftCalloutAccessoryView;
    }

    public void setLeftCalloutAccessoryView(UIView leftCalloutAccessoryView) {
        this.leftCalloutAccessoryView = leftCalloutAccessoryView;
    }

    public UIView getRightCalloutAccessoryView() {
        return rightCalloutAccessoryView;
    }

    public void setRightCalloutAccessoryView(UIView rightCalloutAccessoryView) {
        this.rightCalloutAccessoryView = rightCalloutAccessoryView;
    }

    public int getDragState() {
        return dragState;
    }

    public void setDragState(int mkAnnotationViewDragState) {
        setDragState(dragState, false);
    }

    public void setDragState(int mkAnnotationViewDragState, boolean animated) {
        this.dragState = mkAnnotationViewDragState;
    }

    public boolean isDraggable() {
        return draggable;
    }

    public void setDraggable(boolean draggable) {
        this.draggable = draggable;
    }
}
