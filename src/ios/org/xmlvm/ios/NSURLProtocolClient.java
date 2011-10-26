package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSURLProtocolClient {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol wasRedirectedToRequest:(NSURLRequest *)request redirectResponse:(NSURLResponse *)redirectResponse;
	 */
	public abstract void wasRedirectedToRequest(NSURLProtocol protocol, NSURLRequest request, NSURLResponse redirectResponse);

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol cachedResponseIsValid:(NSCachedURLResponse *)cachedResponse;
	 */
	public abstract void cachedResponseIsValid(NSURLProtocol protocol, NSCachedURLResponse cachedResponse);

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didReceiveResponse:(NSURLResponse *)response cacheStoragePolicy:(NSURLCacheStoragePolicy)policy;
	 */
	public abstract void didReceiveResponse(NSURLProtocol protocol, NSURLResponse response, int policy);

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didLoadData:(NSData *)data;
	 */
	public abstract void didLoadData(NSURLProtocol protocol, NSData data);

	/**
	 * - (void)URLProtocolDidFinishLoading:(NSURLProtocol *)protocol;
	 */
	public abstract void URLProtocolDidFinishLoading(NSURLProtocol protocol);

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didFailWithError:(NSError *)error;
	 */
	public abstract void didFailWithError(NSURLProtocol protocol, NSError error);

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	public abstract void didReceiveAuthenticationChallenge(NSURLProtocol protocol, NSURLAuthenticationChallenge challenge);

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didCancelAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	public abstract void didCancelAuthenticationChallenge(NSURLProtocol protocol, NSURLAuthenticationChallenge challenge);
}
