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

import java.util.Map;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public abstract class CAAnimation extends NSObject implements CAAction, CAMediaTiming {

    protected CAAnimationDelegate.Wrapper delegateWrapper;

    private boolean  removedOnCompletion;

    public static String defaultValueForKey(String key) {
        // TODO: Java implementation
        return null;
    }

    public CAAnimationDelegate getDelegate() {
        throw new RuntimeException("Stub");
    }

    public void setDelegate(CAAnimationDelegate delegate) {
        throw new RuntimeException("Stub");
    }

    public boolean isRemovedOnCompletion() {
        return removedOnCompletion;
    }

    public void setRemovedOnCompletion(boolean removedOnCompletion) {
        this.removedOnCompletion = removedOnCompletion;
    }

    @Override
    public double getDuration() {
        throw new RuntimeException("Stub");
    }

    @Override
    public void setDuration(double duration) {
        throw new RuntimeException("Stub");
    }

    @Override
    public void runAction(String key, NSObject object, Map arguments) {
        throw new RuntimeException("Stub");
    }

    @Override
    public boolean isAutoreverses() {
        throw new RuntimeException("Stub");
    }

    @Override
    public void setAutoreverses(boolean autoreverses) {
        throw new RuntimeException("Stub");
    }

    @Override
    public double getBeginTime() {
        throw new RuntimeException("Stub");
    }

    @Override
    public void setBeginTime(double beginTime) {
        throw new RuntimeException("Stub");
    }

    @Override
    public String getFillMode() {
        throw new RuntimeException("Stub");
    }

    @Override
    public void setFillMode(String fillMode) {
        throw new RuntimeException("Stub");
    }

    @Override
    public float getRepeatCount() {
        throw new RuntimeException("Stub");
    }

    @Override
    public void setRepeatCount(float repeatCount) {
        throw new RuntimeException("Stub");
    }

    @Override
    public double getRepeatDuration() {
        throw new RuntimeException("Stub");
    }

    @Override
    public void setRepeatDuration(double repeatDuration) {
        throw new RuntimeException("Stub");
    }

    @Override
    public float getSpeed() {
        throw new RuntimeException("Stub");
    }

    @Override
    public void setSpeed(float speed) {
        throw new RuntimeException("Stub");
    }

    @Override
    public double getTimeOffset() {
        throw new RuntimeException("Stub");
    }

    @Override
    public void setTimeOffset(double timeOffset) {
        throw new RuntimeException("Stub");
    }
}
