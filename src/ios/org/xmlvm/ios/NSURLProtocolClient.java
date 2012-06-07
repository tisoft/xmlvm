package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSURLProtocolClient")
public interface NSURLProtocolClient {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol wasRedirectedToRequest:(NSURLRequest *)request redirectResponse:(NSURLResponse *)redirectResponse;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "URLProtocol", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLProtocol"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLRequest", name = "wasRedirectedToRequest"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLResponse", name = "redirectResponse")
	})
	public abstract void wasRedirectedToRequest(NSURLProtocol protocol, NSURLRequest request, NSURLResponse redirectResponse);

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol cachedResponseIsValid:(NSCachedURLResponse *)cachedResponse;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "URLProtocol", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLProtocol"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSCachedURLResponse", name = "cachedResponseIsValid")
	})
	public abstract void cachedResponseIsValid(NSURLProtocol protocol, NSCachedURLResponse cachedResponse);

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didReceiveResponse:(NSURLResponse *)response cacheStoragePolicy:(NSURLCacheStoragePolicy)policy;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "URLProtocol", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLProtocol"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLResponse", name = "didReceiveResponse"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "cacheStoragePolicy")
	})
	public abstract void didReceiveResponse(NSURLProtocol protocol, NSURLResponse response, int policy);

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didLoadData:(NSData *)data;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "URLProtocol", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLProtocol"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSData", name = "didLoadData")
	})
	public abstract void didLoadData(NSURLProtocol protocol, NSData data);

	/**
	 * - (void)URLProtocolDidFinishLoading:(NSURLProtocol *)protocol;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "URLProtocolDidFinishLoading", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLProtocol")
	})
	public abstract void URLProtocolDidFinishLoading(NSURLProtocol protocol);

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didFailWithError:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "URLProtocol", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLProtocol"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "didFailWithError")
	})
	public abstract void didFailWithError(NSURLProtocol protocol, NSError error);

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "URLProtocol", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLProtocol"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLAuthenticationChallenge", name = "didReceiveAuthenticationChallenge")
	})
	public abstract void didReceiveAuthenticationChallenge(NSURLProtocol protocol, NSURLAuthenticationChallenge challenge);

	/**
	 * - (void)URLProtocol:(NSURLProtocol *)protocol didCancelAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "URLProtocol", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLProtocol"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLAuthenticationChallenge", name = "didCancelAuthenticationChallenge")
	})
	public abstract void didCancelAuthenticationChallenge(NSURLProtocol protocol, NSURLAuthenticationChallenge challenge);
}
