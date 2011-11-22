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

import java.util.*;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UIPopoverController extends NSObject {

    /*
     * Constructors
     */
    /**
     * - (id)initWithContentViewController:(UIViewController *)viewController;
     */
    public UIPopoverController(UIViewController viewController) {
    }

    /*
     * Properties
     */
    /**
     * @property(nonatomic, assign) id <UIPopoverControllerDelegate> delegate;
     */
    public UIPopoverControllerDelegate getDelegate() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic, assign) id <UIPopoverControllerDelegate> delegate;
     */
    public void setDelegate(UIPopoverControllerDelegate delegate) {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic, retain) UIViewController *contentViewController;
     */
    public UIViewController getContentViewController() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic, retain) UIViewController *contentViewController;
     */
    public void setContentViewController(UIViewController contentViewController) {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic) CGSize popoverContentSize;
     */
    public CGSize getPopoverContentSize() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic) CGSize popoverContentSize;
     */
    public void setPopoverContentSize(CGSize popoverContentSize) {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic, readonly, getter=isPopoverVisible) BOOL popoverVisible;
     */
    public boolean isPopoverVisible() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic, readonly) UIPopoverArrowDirection popoverArrowDirection;
     */
    public int getPopoverArrowDirection() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic, copy) NSArray *passthroughViews;
     */
    public List<UIView> getPassthroughViews() {
        throw new RuntimeException("Stub");
    }

    /**
     * @property(nonatomic, copy) NSArray *passthroughViews;
     */
    public void setPassthroughViews(List<UIView> passthroughViews) {
        throw new RuntimeException("Stub");
    }

    /*
     * Instance methods
     */
    /**
     * - (void)setContentViewController:(UIViewController *)viewController animated:(BOOL)animated;
     */
    public void setContentViewController(UIViewController viewController, boolean animated) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)setPopoverContentSize:(CGSize)size animated:(BOOL)animated;
     */
    public void setPopoverContentSize(CGSize size, boolean animated) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)presentPopoverFromRect:(CGRect)rect inView:(UIView *)view permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections animated:(BOOL)animated;
     */
    public void presentPopoverFromRect(CGRect rect, UIView view, int arrowDirections, boolean animated) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)presentPopoverFromBarButtonItem:(UIBarButtonItem *)item permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections animated:(BOOL)animated;
     */
    public void presentPopoverFromBarButtonItem(UIBarButtonItem item, int arrowDirections, boolean animated) {
        throw new RuntimeException("Stub");
    }

    /**
     * - (void)dismissPopoverAnimated:(BOOL)animated;
     */
    public void dismissPopoverAnimated(boolean animated) {
        throw new RuntimeException("Stub");
    }
}
