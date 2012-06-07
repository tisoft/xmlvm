package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class NSURLAuthenticationChallengeSender implements org.xmlvm.ios.NSURLAuthenticationChallengeSender {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)useCredential:(NSURLCredential *)credential forAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	public void useCredential(NSURLCredential credential, NSURLAuthenticationChallenge challenge){};
	/**
	 * - (void)continueWithoutCredentialForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	public void continueWithoutCredentialForAuthenticationChallenge(NSURLAuthenticationChallenge challenge){};
	/**
	 * - (void)cancelAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	public void cancelAuthenticationChallenge(NSURLAuthenticationChallenge challenge){};}
