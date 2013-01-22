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

#import "org_xmlvm_iphone_UIWebView.h"


// UIWebView
//----------------------------------------------------------------------------
@implementation UIWebView (cat_org_xmlvm_iphone_UIWebView);

- (void) __init_org_xmlvm_iphone_UIWebView__
{
}

- (void) __init_org_xmlvm_iphone_UIWebView___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect
{
	[self setFrame:[rect getCGRect]];
}


- (void) loadRequest___org_xmlvm_iphone_NSURLRequest: (org_xmlvm_iphone_NSURLRequest*) request
{
	[self loadRequest:request];
}

- (void) loadHTMLString___java_lang_String_org_xmlvm_iphone_NSURL: (NSString*)string :(org_xmlvm_iphone_NSURL*)baseURL
{
	[self loadHTMLString:string baseURL:XMLVM_NULL2NIL(baseURL)];
}

- (java_lang_String*) stringByEvaluatingJavaScriptFromString___java_lang_String: (java_lang_String*)script
{
	return_XMLVM(stringByEvaluatingJavaScriptFromString:script)
}

- (void) setDelegate___org_xmlvm_iphone_UIWebViewDelegate:(org_xmlvm_iphone_UIWebViewDelegate*)newdelegate
{
	XMLVM_PROPERTY(delegate,newdelegate)
}

- (org_xmlvm_iphone_UIWebViewDelegate*) getWebViewDelegate__
{
	return_XMLVM(delegate)
}

- (org_xmlvm_iphone_UIScrollView*) getScrollView__
{
    return_XMLVM(scrollView)
}

- (void) reload__
{
	[self reload];
}

- (void) setDataDetectorTypes___int:(int) types
{
	[self setDataDetectorTypes:types];
}

- (int) getDataDetectorTypes__
{
	return [self dataDetectorTypes];
}

- (void) setScalesPageToFit___boolean:(int)pageToFit
{
	[self setScalesPageToFit:pageToFit];
}

- (int) isScalesPageToFit__
{
	return [self scalesPageToFit];
}

- (void) goBack__
{
    [self goBack];
}

- (void) goForward__
{
    [self goForward];
}

@end
