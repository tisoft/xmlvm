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

package android.webkit;

import org.xmlvm.iphone.NSURL;
import org.xmlvm.iphone.NSURLRequest;
import org.xmlvm.iphone.UIWebView;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import java.util.Set;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIView;

public class WebView extends ViewGroup {

    public WebView(Context c) {
        super(c);
    }

    public WebView(Context c, AttributeSet attrs) {
        super(c, attrs);
    }

    @Override
    protected UIView xmlvmNewUIView(AttributeSet attrs) {
        UIWebView view = new UIWebView() {

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
        view.setBackgroundColor(UIColor.whiteColor);
        return view;
    }

    public void loadUrl(String url) {
        NSURL nsurl = NSURL.URLWithString(url);
        NSURLRequest request = NSURLRequest.requestWithURL(nsurl);
        ((UIWebView) xmlvmGetViewHandler().getContentView()).loadRequest(request);
    }
}
