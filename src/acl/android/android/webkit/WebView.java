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

import org.xmlvm.acl.common.adapter.WebViewAdapter;
import org.xmlvm.acl.common.objects.CommonView;

import android.content.Context;
import android.internal.CommonDeviceAPIFinder;
import android.util.AttributeSet;
import android.view.ViewGroup;

public class WebView extends ViewGroup {

    public static final String errorMessage = "<html><body style=\"height: 100%;\"><table style=\"width: 100%; height: 100%; text-align: center;\"><tr><td>"
                                                     + "Unable to load page!"
                                                     + "</td></tr></table></body></html>";
    private WebViewAdapter webViewAdapter;

    public WebView(Context c) {
        super(c);
    }

    public WebView(Context c, AttributeSet attrs) {
        super(c, attrs);
    }

    @Override
    protected CommonView xmlvmNewCommonDeviceView(AttributeSet attrs) {
        this.webViewAdapter = CommonDeviceAPIFinder.instance().getWidgetFactory().createWebView(this);
        return this.webViewAdapter;
    }

    public void loadUrl(String url) {
        this.webViewAdapter.loadUrl(url);
    }
}
