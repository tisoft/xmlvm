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

#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_UIWebView.h"
#import "org_xmlvm_iphone_NSError.h"
#import "org_xmlvm_iphone_NSURLRequest.h"

/** @author teras */

@interface org_xmlvm_iphone_UIWebViewDelegate : java_lang_Object<UIWebViewDelegate>

- (void) __init_org_xmlvm_iphone_UIWebViewDelegate__;

- (void) didFailLoadWithError___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_UIWebView*)webView :(org_xmlvm_iphone_NSError*)error;
- (int) shouldStartLoadWithRequest___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSURLRequest_int :(org_xmlvm_iphone_UIWebView*)webView :(org_xmlvm_iphone_NSURLRequest*)request :(int)navigationType;
- (void) webViewDidFinishLoad___org_xmlvm_iphone_UIWebView :(org_xmlvm_iphone_UIWebView*)webView;
- (void) webViewDidStartLoad___org_xmlvm_iphone_UIWebView :(org_xmlvm_iphone_UIWebView*)webView;

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;
- (int)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;
- (void)webViewDidFinishLoad:(UIWebView *)webView;
- (void)webViewDidStartLoad:(UIWebView *)webView;

@end

