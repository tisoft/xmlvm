package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSMutableURLRequest extends NSURLRequest {

	/*
	 * Constructors
	 */
	public NSMutableURLRequest(NSURL URL) {
		super(URL);
	}
	public NSMutableURLRequest(NSURL URL, int cachePolicy, double timeoutInterval) {
		super(URL, cachePolicy, timeoutInterval);
	}

	/** Default constructor */
	public NSMutableURLRequest() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setURL:(NSURL *)URL;
	 */
	public void setURL(NSURL URL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCachePolicy:(NSURLRequestCachePolicy)policy;
	 */
	public void setCachePolicy(int policy){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTimeoutInterval:(NSTimeInterval)seconds;
	 */
	public void setTimeoutInterval(double seconds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMainDocumentURL:(NSURL *)URL;
	 */
	public void setMainDocumentURL(NSURL URL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNetworkServiceType:(NSURLRequestNetworkServiceType)networkServiceType ;
	 */
	public void setNetworkServiceType(int networkServiceType){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setHTTPMethod:(NSString *)method;
	 */
	public void setHTTPMethod(String method){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setAllHTTPHeaderFields:(NSDictionary *)headerFields;
	 */
	public void setAllHTTPHeaderFields(Map headerFields){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setValue:(NSString *)value forHTTPHeaderField:(NSString *)field;
	 */
	public void setValue(String value, String field){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addValue:(NSString *)value forHTTPHeaderField:(NSString *)field;
	 */
	public void addValue(String value, String field){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setHTTPBody:(NSData *)data;
	 */
	public void setHTTPBody(NSData data){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setHTTPBodyStream:(NSInputStream *)inputStream;
	 */
	public void setHTTPBodyStream(NSInputStream inputStream){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setHTTPShouldHandleCookies:(BOOL)should;
	 */
	public void setHTTPShouldHandleCookies(boolean should){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setHTTPShouldUsePipelining:(BOOL)shouldUsePipelining ;
	 */
	public void setHTTPShouldUsePipelining(boolean shouldUsePipelining){
		throw new RuntimeException("Stub");
	}
}
