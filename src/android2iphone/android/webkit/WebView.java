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

package android.webkit;

import org.xmlvm.iphone.NSURL;
import org.xmlvm.iphone.NSURLRequest;
import org.xmlvm.iphone.UIWebView;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import java.util.Set;

import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.NSError;
import org.xmlvm.iphone.UIActivityIndicatorView;
import org.xmlvm.iphone.UIActivityIndicatorViewStyle;
import org.xmlvm.iphone.UIColor;
import org.xmlvm.iphone.UIEvent;
import org.xmlvm.iphone.UITouch;
import org.xmlvm.iphone.UIView;
import org.xmlvm.iphone.UIWebViewDelegate;

public class WebView extends ViewGroup {

    private static final String errorMessage = "<html><body style=\"height: 100%;\"><table style=\"width: 100%; height: 100%; text-align: center;\"><tr><td>"
                                                     + "Unable to load page!"
                                                     + "</td></tr></table></body></html>";

    private UIWebViewDelegate   delegate;


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
        delegate = new UIWebViewDelegate() {

            private UIActivityIndicatorView spinner;


            @Override
            public void didFailLoadWithError(UIWebView webView, NSError error) {
                removeSpinner();
                webView.loadHTMLString(errorMessage, null);
            }

            @Override
            public void webViewDidFinishLoad(UIWebView webView) {
                removeSpinner();
            }

            @Override
            public void webViewDidStartLoad(UIWebView webView) {
                spinner = new UIActivityIndicatorView();
                spinner.setActivityIndicatorViewStyle(UIActivityIndicatorViewStyle.Gray);
                CGRect webViewRect = webView.getBounds();
                CGRect spinnerRect = spinner.getBounds();
                spinnerRect.origin.x = (webViewRect.size.width - spinnerRect.size.width) / 2;
                spinnerRect.origin.y = (webViewRect.size.height - spinnerRect.size.height) / 2;
                spinner.setFrame(spinnerRect);
                webView.addSubview(spinner);
                spinner.startAnimating();
            }

            private void removeSpinner() {
                if (spinner != null) {
                    spinner.stopAnimating();
                    spinner.removeFromSuperview();
                    spinner = null;
                }
            }
        };
        view.setBackgroundColor(UIColor.whiteColor);
        view.setDelegate(delegate);
        return view;
    }

    public void loadUrl(String url) {
        NSURL nsurl = NSURL.URLWithString(url);
        NSURLRequest request = NSURLRequest.requestWithURL(nsurl);
        ((UIWebView) xmlvmGetViewHandler().getContentView()).loadRequest(request);
    }
}
