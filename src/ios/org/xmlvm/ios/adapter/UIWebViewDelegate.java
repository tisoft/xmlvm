package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIWebViewDelegate implements org.xmlvm.ios.UIWebViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;
	 */
	public boolean shouldStartLoadWithRequest(UIWebView webView, NSURLRequest request, int navigationType){
		return false;
	}
	/**
	 * - (void)webViewDidStartLoad:(UIWebView *)webView;
	 */
	public void webViewDidStartLoad(UIWebView webView){};
	/**
	 * - (void)webViewDidFinishLoad:(UIWebView *)webView;
	 */
	public void webViewDidFinishLoad(UIWebView webView){};
	/**
	 * - (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;
	 */
	public void didFailLoadWithError(UIWebView webView, NSError error){};}
