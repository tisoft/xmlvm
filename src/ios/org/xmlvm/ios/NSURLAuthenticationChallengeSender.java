package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSURLAuthenticationChallengeSender")
public interface NSURLAuthenticationChallengeSender {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)useCredential:(NSURLCredential *)credential forAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "useCredential", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLCredential"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLAuthenticationChallenge", name = "forAuthenticationChallenge")
	})
	public abstract void useCredential(NSURLCredential credential, NSURLAuthenticationChallenge challenge);

	/**
	 * - (void)continueWithoutCredentialForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "continueWithoutCredentialForAuthenticationChallenge", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLAuthenticationChallenge")
	})
	public abstract void continueWithoutCredentialForAuthenticationChallenge(NSURLAuthenticationChallenge challenge);

	/**
	 * - (void)cancelAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "cancelAuthenticationChallenge", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURLAuthenticationChallenge")
	})
	public abstract void cancelAuthenticationChallenge(NSURLAuthenticationChallenge challenge);
}
