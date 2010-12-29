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

#import "org_xmlvm_iphone_UIWebViewDelegate.h"



@implementation org_xmlvm_iphone_UIWebViewDelegate

- (void) __init_org_xmlvm_iphone_UIWebViewDelegate__
{
}

- (void) didFailLoadWithError___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_UIWebView*)webView :(org_xmlvm_iphone_NSError*)error
{	
}

- (int) shouldStartLoadWithRequest___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSURLRequest_int :(org_xmlvm_iphone_UIWebView*)webView :(org_xmlvm_iphone_NSURLRequest*)request :(int)navigationType
{
	return YES;
}

- (void) webViewDidFinishLoad___org_xmlvm_iphone_UIWebView :(org_xmlvm_iphone_UIWebView*)webView
{
}

- (void) webViewDidStartLoad___org_xmlvm_iphone_UIWebView :(org_xmlvm_iphone_UIWebView*)webView
{
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
	[self didFailLoadWithError___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSError:webView :error];
}

- (int)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
	return [self shouldStartLoadWithRequest___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSURLRequest_int:webView :request :navigationType];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
	[self webViewDidFinishLoad___org_xmlvm_iphone_UIWebView:webView];
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
	[self webViewDidStartLoad___org_xmlvm_iphone_UIWebView:webView];
}

@end

