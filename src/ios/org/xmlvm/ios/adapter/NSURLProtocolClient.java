package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class NSURLProtocolClient implements org.xmlvm.ios.NSURLProtocolClient {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol wasRedirectedToRequest:(NSURLRequest *)request redirectResponse:(NSURLResponse *)redirectResponse;
	 */
	public void wasRedirectedToRequest(NSURLProtocol protocol, NSURLRequest request, NSURLResponse redirectResponse){};
	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol cachedResponseIsValid:(NSCachedURLResponse *)cachedResponse;
	 */
	public void cachedResponseIsValid(NSURLProtocol protocol, NSCachedURLResponse cachedResponse){};
	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didReceiveResponse:(NSURLResponse *)response cacheStoragePolicy:(NSURLCacheStoragePolicy)policy;
	 */
	public void didReceiveResponse(NSURLProtocol protocol, NSURLResponse response, int policy){};
	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didLoadData:(NSData *)data;
	 */
	public void didLoadData(NSURLProtocol protocol, NSData data){};
	/**
	 * - (void)URLProtocolDidFinishLoading:(NSURLProtocol *)protocol;
	 */
	public void URLProtocolDidFinishLoading(NSURLProtocol protocol){};
	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didFailWithError:(NSError *)error;
	 */
	public void didFailWithError(NSURLProtocol protocol, NSError error){};
	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	public void didReceiveAuthenticationChallenge(NSURLProtocol protocol, NSURLAuthenticationChallenge challenge){};
	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didCancelAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	public void didCancelAuthenticationChallenge(NSURLProtocol protocol, NSURLAuthenticationChallenge challenge){};}
