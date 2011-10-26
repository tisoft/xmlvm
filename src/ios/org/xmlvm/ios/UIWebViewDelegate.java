package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIWebViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;
	 */
	public abstract boolean shouldStartLoadWithRequest(UIWebView webView, NSURLRequest request, int navigationType);

	/**
	 * - (void)webViewDidStartLoad:(UIWebView *)webView;
	 */
	public abstract void webViewDidStartLoad(UIWebView webView);

	/**
	 * - (void)webViewDidFinishLoad:(UIWebView *)webView;
	 */
	public abstract void webViewDidFinishLoad(UIWebView webView);

	/**
	 * - (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;
	 */
	public abstract void didFailLoadWithError(UIWebView webView, NSError error);
}
