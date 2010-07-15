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

package android.widget;


import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.Set;
import org.xmlvm.iphone.UIActivityIndicatorView;
import org.xmlvm.iphone.UIActivityIndicatorViewStyle;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIView;

/* TODO: This implementation of ProgressBar is currently hard coded
 * for indeterminate mode.
 */
public class ProgressBar extends View {

    final private int SMALL_SPINNER_SIZE = 21;
    final private int LARGE_SPINNER_SIZE = 36;

    public ProgressBar(Context c) {
        super(c);
        initProgressBar(c, null);
    }

    public ProgressBar(Context c, AttributeSet attrs) {
        super(c, attrs);
        initProgressBar(c, attrs);
    }

    @Override
    protected UIView xmlvmNewUIView(AttributeSet attrs) {
        UIActivityIndicatorView activityIndicator = new UIActivityIndicatorView(
                UIActivityIndicatorViewStyle.WhiteLarge) {

            @Override
            public void touchesBegan(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_DOWN, touches, event);
            }

            @Override
            public void touchesMoved(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_MOVE, touches, event);
            }

            @Override
            public void touchesCancelled(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_CANCEL, touches, event);
            }

            @Override
            public void touchesEnded(Set<UITouch> touches, UIEvent event) {
                xmlvmTouchesEvent(MotionEvent.ACTION_UP, touches, event);
            }
        };
        activityIndicator.setHidesWhenStopped(false);
        activityIndicator.startAnimating();
        return activityIndicator;
    }

    private void initProgressBar(Context c, AttributeSet attrs) {
        if (attrs != null && attrs.getAttributeCount() > 0) {
            parseProgressBarAttributes(attrs);
        }
    }

    private void parseProgressBarAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);
        
        // Implementation of attribute parsing
        
        setIgnoreRequestLayout(false);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(LARGE_SPINNER_SIZE + paddingLeft + paddingRight, LARGE_SPINNER_SIZE
                + paddingTop + paddingBottom);
    }

}
