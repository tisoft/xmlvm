package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSURLAuthenticationChallengeSender {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)useCredential:(NSURLCredential *)credential forAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	public abstract void useCredential(NSURLCredential credential, NSURLAuthenticationChallenge challenge);

	/**
	 * - (void)continueWithoutCredentialForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	public abstract void continueWithoutCredentialForAuthenticationChallenge(NSURLAuthenticationChallenge challenge);

	/**
	 * - (void)cancelAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	public abstract void cancelAuthenticationChallenge(NSURLAuthenticationChallenge challenge);
}
