/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 *
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package android.internal;

import android.view.View;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIButton;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIControlState;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UIView;

/**
 * This object is the link between the native UI objects of iPhone and the View
 * objects of Android. It works as a safe proxy, to hide functionality from the
 * rest of the Android library. All UI objects are manipulated from within this
 * class and not directly, since there is a need for extra functionality, which
 * can not be found in original UI objects.
 * 
 * @author teras
 */
public class ViewHandler {

    /**
     * Reference of the core iPhone widget which implements this Android View.
     * In the case that this Android Widget is not actually a "View" object and
     * a background is requested, then this is a container, able to display the
     * background image, and which holds the specialized "layerFront" iPhone UI
     * object.
     * 
     * In all other cases, i.e. when this is a View or if no background is
     * required, then this holds a reference to the iPhone UI object (and
     * layerFront is null).
     */
    private UIView layerBack;
    /**
     * The extra object required to display this Android widget. Usually it is
     * null.
     * 
     * In the case the layerBack object is not an instance of UIImageView (i.e.
     * this View is not an "ImageView" object) or instance of UIButton (which
     * both of them support background images) and a background image is
     * requested, then this object holds the special UI object, while the
     * background image is stored in the layerBack object.
     */
    private UIView layerFront;

    /**
     * Create a new ViewHandler for a specified UIView
     * 
     * @param viewID
     *            the ID of the object to create, @see
     *            android.internal.UIViewFactory
     * @param aview
     *            reference to the actual Android View object
     */
    public ViewHandler(UIView uiitem) {
        layerBack = uiitem;
    }

    /**
     * Get the UI object which is responsible for this specific View widget
     * functionality.
     * 
     * @return the UI object
     */
    public UIView getContentView() {
        if (layerFront != null) {
            return layerFront;
        }
        return layerBack;
    }

    /**
     * Get the UI object which is responsible for this widget metrics and events
     * 
     * @return the UI object responsible for metrics
     */
    public UIView getMetricsView() {
        return layerBack;
    }

    /**
     * Set the size and location of the view objects
     * 
     * @param frame
     *            the CGRect defining the size and location
     */
    public final void setFrame(CGRect frame) {
        layerBack.setFrame(frame);
        if (layerFront != null) {
            CGRect bounds = new CGRect(0, 0, frame.size.width, frame.size.height);
            layerFront.setFrame(bounds);
        }
    }

    /**
     * Enable or disable user interactions with this object and it's children
     * 
     * @param status
     *            while user interactions are enabled or not
     */
    public void setUserInteractionEnabled(boolean status) {
        if (layerFront != null) {
            layerFront.setUserInteractionEnabled(status);
            layerBack.setUserInteractionEnabled(status);
        } else {
            layerBack.setUserInteractionEnabled(status);
        }
    }

    /**
     * Force UI objects to redisplay themselves
     */
    public void setNeedsDisplay() {
        layerBack.setNeedsDisplay();
        if (layerFront != null) {
            layerFront.setNeedsDisplay();
        }
    }

    /**
     * Set the content mode of the background UIView
     * 
     * @param mode
     *            the value of UIViewContentMode
     */
    public void setContentMode(int mode) {
        layerBack.setContentMode(mode);
    }

    /**
     * Set the background color of this View. If a background image is used,
     * this color should be set to null
     * 
     * @param bcolor
     *            the UIColor to use as background
     */
    public void setBackgroundColor(UIColor bcolor) {
        if (layerFront != null) {
            layerFront.setBackgroundColor(null);
            layerBack.setBackgroundColor(bcolor);
        } else {
            layerBack.setBackgroundColor(bcolor);
        }
    }

    /**
     * Under Android it is sufficient to hide the keyboard for the top-level
     * widget of a view hierarchy. iPhone requires that the specific widget that
     * caused the soft keyboard to open to resign as first responder. We
     * therefore have to recurse through the view hierarchy.
     * 
     * @param view
     *            UIView to resign as first responder.
     */
    public void resignFirstResponder() {
        UIView view = layerBack;
        while (view.getSuperview() != null) {
            view = view.getSuperview();
        }
        resignFirstResponderForViewHierarchy(layerBack);
    }

    private static void resignFirstResponderForViewHierarchy(UIView view) {
        view.resignFirstResponder();
        for (UIView subview : view.getSubviews()) {
            resignFirstResponderForViewHierarchy(subview);
        }
    }

    /**
     * Remove this combined UI object from its super view
     */
    public void removeFromSuperview() {
        layerBack.removeFromSuperview();
    }

    /**
     * Add a child view to this View object
     * 
     * @param child
     *            the child View object to add
     */
    public void addSubview(View child) {
        getContentView().addSubview(child.xmlvmGetViewHandler().getMetricsView());
    }

    /**
     * Add a child view to this View object at specific position
     * 
     * @param child
     *            the child View object to add
     * @param idx
     *            the index position
     */
    public void insertSubview(View child, int idx) {
        getContentView().insertSubview(child.xmlvmGetViewHandler().getMetricsView(), idx);
    }

    /**
     * Set the background image of this View. In the case the layerBack can not
     * support background images (i.e. not an instance of UIImageView or
     * UIButton) then the layerBack goes to foreground and a new layerBack as a
     * UIImageView will be created and properly put between the current parent
     * object and the actual UI object.
     * 
     * This method will not work properly, if a background color is used at the
     * same time.
     * 
     * @param img
     *            The background image to use. If this is null then the image
     *            will be removed. If an extra object was previously used to
     *            support this background image, this object will be removed.
     */
    public void setBackgroundImage(UIImage img) {
        // Check if we want to set or remove an image
        if (img != null) { // We want to set an image
            if (layerBack instanceof UIImageView) { // The back object *is* able
                                                    // to accomodate the
                                                    // background image, since
                                                    // it is a UIImageView
                ((UIImageView) layerBack).setImage(img);
            } else if (layerBack instanceof UIButton) { // The back object *is*
                                                        // able to accomodate
                                                        // the background image,
                                                        // since it is a
                                                        // UIButton
                ((UIButton) layerBack).setImage(img, UIControlState.Normal);
            } else { // The back button is NOT able to accomodate the background
                     // image, needs to be put higher in hierarchy
                if (layerFront != null) {
                    // Check for errors - should never come here
                    throw new RuntimeException("Double initialization of background image object");
                }
                int zorder = 0; // somewhere to store the Z-order of the widget
                CGRect frame = layerBack.getFrame(); // First remember the
                                                     // actual location of the
                                                     // widget
                UIView superview = layerBack.getSuperview(); // get the parent
                                                             // of the widget
                if (superview != null)
                    zorder = superview.getSubviews().indexOf(layerBack); // Get
                                                                         // the
                                                                         // Z-order
                                                                         // of
                                                                         // this
                                                                         // widget
                                                                         // (search
                                                                         // for
                                                                         // it's
                                                                         // index)
                layerBack.removeFromSuperview(); // remove the widget from the
                                                 // parent
                layerFront = layerBack; // the back layer will be put in front
                layerBack = new UIImageView(); // create a new UIImageView which
                                               // will be the container of the
                                               // old widget
                ((UIImageView) layerBack).setImage(img); // set the image of
                                                         // uiimageview
                layerBack.setUserInteractionEnabled(layerFront.isUserInteractionEnabled()); // Synchronize
                                                                                            // user
                                                                                            // interaction
                layerBack.addSubview(layerFront); // Add the old widget to the
                                                  // UIImageView container
                setFrame(frame); // Set the size of the widgets
                if (superview != null) // Only if parent exists
                    superview.insertSubview(layerBack, zorder); // Add the new
                                                                // widget to the
                                                                // parent
                layerBack.setOpaque(false); // remove opacity, so that the front
                                            // view will be visible
            }
        } else { // We want to remove the image
            if (layerFront == null) { // No layer front is present; no need to
                                      // remove anything
                if (layerBack instanceof UIImageView) { // The image can be
                                                        // deleted from a
                                                        // UIImageView object
                    ((UIImageView) layerBack).setImage(img);
                } else if (layerBack instanceof UIButton) { // The image can be
                                                            // deleted from a
                                                            // UIImageView
                                                            // object
                    ((UIButton) layerBack).setImage(img, UIControlState.Normal);
                }
            } else { // A layer "front" is present, so we have to remove the
                     // UIImageView (the current layer back)
                int zorder = 0; // somewhere to store the Z-order of the widget
                CGRect frame = layerBack.getFrame(); // Get the location of the
                                                     // widget
                UIView parent = layerBack.getSuperview(); // get the parent
                                                          // UIView
                if (parent != null)
                    zorder = parent.getSubviews().indexOf(layerBack); // Get the
                                                                      // Z-order
                                                                      // of this
                                                                      // widget
                                                                      // (search
                                                                      // for
                                                                      // it's
                                                                      // index)
                layerFront.removeFromSuperview(); // Remove front layer from
                                                  // parent
                layerBack.removeFromSuperview(); // Remove back layer from
                                                 // parent
                layerBack = layerFront; // Set the back layer to the actual
                                        // widget
                layerFront = null; // No front layer is required
                setFrame(frame); // Set the size of the widget
                if (parent != null) // Only if parent exists
                    parent.insertSubview(layerBack, zorder); // Add this widget
                                                             // to the parent
                                                             // object
            }
        }
    }

    /**
     * Retrieve the background image of this View object, if any
     * 
     * @return the background image
     */
    public UIImage getBackgroundImage() {
        if (layerBack instanceof UIButton)
            return ((UIButton) layerBack).getCurrentBackgroundImage();
        return (layerBack instanceof UIImageView) ? ((UIImageView) layerBack).getImage() : null;
    }
}
