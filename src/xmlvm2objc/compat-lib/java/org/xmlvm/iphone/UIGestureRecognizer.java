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

public class UIGestureRecognizer extends NSObject {

    /*
     * Constructors
     */
    /**
     * - (id)initWithTarget:(id)target action:(SEL)action;
     */
    public UIGestureRecognizer(NSSelector<UIGestureRecognizer> target) {
    }

    /*
     * Properties
     */
    /**
     * @property(nonatomic,readonly) UIGestureRecognizerState state;
     */
    public int getState() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic,assign) id <UIGestureRecognizerDelegate> delegate;
     */
    public UIGestureRecognizerDelegate getDelegate() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic,assign) id <UIGestureRecognizerDelegate> delegate;
     */
    public void setDelegate(UIGestureRecognizerDelegate delegate) {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic, getter=isEnabled) BOOL enabled;
     */
    public boolean isEnabled() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic, getter=isEnabled) BOOL enabled;
     */
    public void setEnabled(boolean enabled) {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic,readonly) UIView *view;
     */
    public UIView getView() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic) BOOL cancelsTouchesInView;
     */
    public boolean isCancelsTouchesInView() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic) BOOL cancelsTouchesInView;
     */
    public void setCancelsTouchesInView(boolean cancelsTouchesInView) {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic) BOOL delaysTouchesBegan;
     */
    public boolean isDelaysTouchesBegan() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic) BOOL delaysTouchesBegan;
     */
    public void setDelaysTouchesBegan(boolean delaysTouchesBegan) {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic) BOOL delaysTouchesEnded;
     */
    public boolean isDelaysTouchesEnded() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic) BOOL delaysTouchesEnded;
     */
    public void setDelaysTouchesEnded(boolean delaysTouchesEnded) {
        throw new RuntimeException("Stub");
    }

    /*
     * Instance methods
     */
    /**
     * - (void)addTarget:(id)target action:(SEL)action;
     */
    public void addTarget(NSSelector<UIGestureRecognizer> target) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)removeTarget:(id)target action:(SEL)action;
     */
    public void removeTarget(NSSelector<UIGestureRecognizer> target) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)requireGestureRecognizerToFail:(UIGestureRecognizer
     * *)otherGestureRecognizer;
     */
    public void requireGestureRecognizerToFail(UIGestureRecognizer otherGestureRecognizer) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (CGPoint)locationInView:(UIView*)view;
     */
    public CGPoint locationInView(UIView view) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (NSUInteger)numberOfTouches;
     */
    public int numberOfTouches() {
        throw new RuntimeException("Stub");
    }

    /**
     * - (CGPoint)locationOfTouch:(NSUInteger)touchIndex inView:(UIView*)view;
     */
    public CGPoint locationOfTouch(int touchIndex, UIView view) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)ignoreTouch:(UITouch*)touch forEvent:(UIEvent*)event;
     */
    protected void ignoreTouch(UITouch touch, UIEvent event) {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic,readwrite) UIGestureRecognizerState state;
     */
    protected void setState(int state) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)reset;
     */
    protected void reset() {
        throw new RuntimeException("Stub");
    }

    /**
     * - (BOOL)canPreventGestureRecognizer:(UIGestureRecognizer
     * *)preventedGestureRecognizer;
     */
    protected boolean canPreventGestureRecognizer(UIGestureRecognizer preventedGestureRecognizer) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (BOOL)canBePreventedByGestureRecognizer:(UIGestureRecognizer
     * *)preventingGestureRecognizer;
     */
    protected boolean canBePreventedByGestureRecognizer(UIGestureRecognizer preventingGestureRecognizer) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
     */
    protected void touchesBegan(Set touches, UIEvent event) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
     */
    protected void touchesMoved(Set touches, UIEvent event) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
     */
    protected void touchesEnded(Set touches, UIEvent event) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;
     */
    protected void touchesCancelled(Set touches, UIEvent event) {
        throw new RuntimeException("Stub");
    }
}
