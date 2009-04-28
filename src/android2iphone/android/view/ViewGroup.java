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

package android.view;

import java.util.Set;

import org.xmlvm.iphone.CGPoint;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIView;

import android.content.Context;

/**
 * iPhone implementation of Android's ViewGroup class.
 * 
 * @see http://developer.android.com/reference/android/view/ViewGroup.html
 */
public class ViewGroup extends View {

    private OnTouchListener listener;

    public static class LayoutParams {
        public static final int WRAP_CONTENT = -1;
    }

    public ViewGroup(Context c) {
        super(c);
        this.listener = null;
    }

    public void addView(View child) {
        this.addSubview(child);
    }

    public void removeView(View child) {
        child.removeFromSuperview();
    }

    public void addView(View child, int idx) {
        this.insertSubview(child, idx);
    }

    public void removeAllViews() {
        for (UIView view : this.getSubviews()) {
            view.removeFromSuperview();
        }
    }

    public void setOnTouchListener(OnTouchListener listener) {
        this.listener = listener;
    }

    @Override
    public void touchesBegan(Set<UITouch> touches, UIEvent event) {
        processTouchesEvent(MotionEvent.ACTION_DOWN, touches, event);
    }

    @Override
    public void touchesMoved(Set<UITouch> touches, UIEvent event) {
        processTouchesEvent(MotionEvent.ACTION_MOVE, touches, event);
    }

    @Override
    public void touchesCancelled(Set<UITouch> touches, UIEvent event) {
        processTouchesEvent(MotionEvent.ACTION_CANCEL, touches, event);
    }

    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        processTouchesEvent(MotionEvent.ACTION_UP, touches, event);
    }

    private void processTouchesEvent(int action, Set<UITouch> touches, UIEvent event) {
        if (this.listener == null) {
            return;
        }
        UITouch firstTouch = touches.iterator().next();
        CGPoint point = firstTouch.locationInView(this);
        MotionEvent motionEvent = new MotionEvent(action, (int) point.x, (int) point.y);
        this.listener.onTouch(this, motionEvent);
    }
}
