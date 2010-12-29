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
public abstract class CAAnimation extends NSObject implements CAAction, CAMediaTiming {

    private boolean  removedOnCompletion;
    private NSObject delegate;


    public static String defaultValueForKey(String key) {
        // TODO: Java implementation
        return null;
    }

    public NSObject getDelegate() {
        return delegate;
    }

    public void setDelegate(NSObject delegate) {
        this.delegate = delegate;
    }

    public boolean isRemovedOnCompletion() {
        return removedOnCompletion;
    }

    public void setRemovedOnCompletion(boolean removedOnCompletion) {
        this.removedOnCompletion = removedOnCompletion;
    }

    public abstract void animationDidStart(CAAnimation animation);

    public abstract void animationDidStop(CAAnimation animation);
}
