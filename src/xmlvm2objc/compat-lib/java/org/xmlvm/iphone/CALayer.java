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

import java.util.ArrayList;
import java.util.HashMap;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class CALayer extends NSObject {

    private HashMap<String, CAAnimation> animation;
    private UIView                       delegate;
    private CGPoint                      anchorPoint;


    public static CALayer layer() {
        return new CALayer();
    }

    public CALayer() {
        animation = new HashMap<String, CAAnimation>();
        anchorPoint = new CGPoint(0.5f, 0.5f);
    }

    public void addAnimation(CAAnimation animation, String key) {
        this.animation.put(key, animation);
    }

    public CAAnimation animationForKey(String key) {
        return animation.get(key);
    }

    public void removeAllAnimations() {
        animation.clear();
    }

    public void removeAnimationForKey(String key) {
        animation.remove(key);
    }

    public ArrayList<String> animationKeys() {
        return new ArrayList<String>(animation.keySet());
    }

    public void renderInContext(CGContext context) {
        // TODO: Not implemented under Java
    }

    public UIView getDelegate() {
        return delegate;
    }

    public void setDelegate(UIView delegate) {
        this.delegate = delegate;
    }

    public CGPoint getAnchorPoint() {
        return anchorPoint;
    }

    public void setAnchorPoint(CGPoint anchorPoint) {
        this.anchorPoint = anchorPoint;
    }
}
