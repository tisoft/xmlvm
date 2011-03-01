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
import org.xmlvm.iphone.internal.renderer.UIWebViewRenderer;

@XMLVMSkeletonOnly
public class UIWebView extends UIView {

    private NSURLRequest      request;
    private UIWebViewDelegate delegate          = null;
    private int               dataDetectorTypes = UIDataDetectorType.All;
    private boolean           scalesPageToFit   = false;


    public UIWebView() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UIWebView(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UIWebViewRenderer(this));
    }

    public void loadRequest(NSURLRequest request) {
        this.request = request;
    }

    public void loadHTMLString(String string, NSURL baseURL) {
        // TODO : Java implementation
    }

    public NSURLRequest xmlvmGetRequest() {
        return request;
    }

    public String stringByEvaluatingJavaScriptFromString(String script) {
        // TODO : Java implementation
        return null;
    }

    public UIWebViewDelegate getDelegate() {
        return delegate;
    }

    public void setDelegate(UIWebViewDelegate delegate) {
        this.delegate = delegate;
    }

    public void reload() {
    }

    public int getDataDetectorTypes() {
        return dataDetectorTypes;
    }

    public void setDataDetectorTypes(int dataDetectorTypes) {
        this.dataDetectorTypes = dataDetectorTypes;
    }

    public boolean isScalesPageToFit() {
        return scalesPageToFit;
    }

    public void setScalesPageToFit(boolean scalesPageToFit) {
        this.scalesPageToFit = scalesPageToFit;
    }    
}
