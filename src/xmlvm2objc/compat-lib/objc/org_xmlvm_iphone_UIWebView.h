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

#import "xmlvm.h"
#import "org_xmlvm_iphone_NSURLRequest.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_NSURL.h"
@class org_xmlvm_iphone_UIWebViewDelegate;

// UIWebView
//----------------------------------------------------------------------------
typedef UIWebView org_xmlvm_iphone_UIWebView;
@interface UIWebView (cat_org_xmlvm_iphone_UIWebView)

- (void) __init_org_xmlvm_iphone_UIWebView__;
- (void) __init_org_xmlvm_iphone_UIWebView___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect;
- (void) loadHTMLString___java_lang_String_org_xmlvm_iphone_NSURL: (NSString*)string :(org_xmlvm_iphone_NSURL*)baseURL;
- (void) loadRequest___org_xmlvm_iphone_NSURLRequest: (org_xmlvm_iphone_NSURLRequest*) request;
- (java_lang_String*) stringByEvaluatingJavaScriptFromString___java_lang_String: (java_lang_String*)script;
- (void) setDelegate___org_xmlvm_iphone_UIWebViewDelegate:(org_xmlvm_iphone_UIWebViewDelegate*)newdelegate;
- (org_xmlvm_iphone_UIWebViewDelegate*) getWebViewDelegate__;
- (void) reload__;
- (void) setDataDetectorTypes___int:(int) types;
- (int) getDataDetectorTypes__;
@end
