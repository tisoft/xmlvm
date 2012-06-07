package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIWebViewDelegate")
public interface UIWebViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "webView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIWebView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLRequest", name = "shouldStartLoadWithRequest"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "navigationType")
	})
	public abstract boolean shouldStartLoadWithRequest(UIWebView webView, NSURLRequest request, int navigationType);

	/**
	 * - (void)webViewDidStartLoad:(UIWebView *)webView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "webViewDidStartLoad", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIWebView")
	})
	public abstract void webViewDidStartLoad(UIWebView webView);

	/**
	 * - (void)webViewDidFinishLoad:(UIWebView *)webView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "webViewDidFinishLoad", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIWebView")
	})
	public abstract void webViewDidFinishLoad(UIWebView webView);

	/**
	 * - (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "webView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIWebView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "didFailLoadWithError")
	})
	public abstract void didFailLoadWithError(UIWebView webView, NSError error);
}
