package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIWebView extends UIView {

	/*
	 * Constructors
	 */

	/** Default constructor */
	UIWebView() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<UIWebViewDelegate> delegate;
	 */
	public UIWebViewDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UIWebViewDelegate> delegate;
	 */
	public void setDelegate(UIWebViewDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) NSURLRequest *request;
	 */
	public NSURLRequest getRequest(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=canGoBack) BOOL canGoBack;
	 */
	public boolean canGoBack(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=canGoForward) BOOL canGoForward;
	 */
	public boolean canGoForward(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isLoading) BOOL loading;
	 */
	public boolean isLoading(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL scalesPageToFit;
	 */
	public boolean getScalesPageToFit(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL scalesPageToFit;
	 */
	public void setScalesPageToFit(boolean scalesPageToFit){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL detectsPhoneNumbers ;
	 */
	public boolean getDetectsPhoneNumbers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL detectsPhoneNumbers ;
	 */
	public void setDetectsPhoneNumbers(boolean detectsPhoneNumbers){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIDataDetectorTypes dataDetectorTypes ;
	 */
	public int getDataDetectorTypes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIDataDetectorTypes dataDetectorTypes ;
	 */
	public void setDataDetectorTypes(int dataDetectorTypes){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsInlineMediaPlayback ;
	 */
	public boolean getAllowsInlineMediaPlayback(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsInlineMediaPlayback ;
	 */
	public void setAllowsInlineMediaPlayback(boolean allowsInlineMediaPlayback){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL mediaPlaybackRequiresUserAction ;
	 */
	public boolean getMediaPlaybackRequiresUserAction(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL mediaPlaybackRequiresUserAction ;
	 */
	public void setMediaPlaybackRequiresUserAction(boolean mediaPlaybackRequiresUserAction){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)loadRequest:(NSURLRequest *)request;
	 */
	public void loadRequest(NSURLRequest request){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)loadHTMLString:(NSString *)string baseURL:(NSURL *)baseURL;
	 */
	public void loadHTMLString(String string, NSURL baseURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)loadData:(NSData *)data MIMEType:(NSString *)MIMEType textEncodingName:(NSString *)textEncodingName baseURL:(NSURL *)baseURL;
	 */
	public void loadData(NSData data, String MIMEType, String textEncodingName, NSURL baseURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)reload;
	 */
	public void reload(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopLoading;
	 */
	public void stopLoading(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)goBack;
	 */
	public void goBack(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)goForward;
	 */
	public void goForward(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByEvaluatingJavaScriptFromString:(NSString *)script;
	 */
	public String stringByEvaluatingJavaScriptFromString(String script){
		throw new RuntimeException("Stub");
	}
}
