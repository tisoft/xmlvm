package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSNetServiceBrowser extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)init;
	 */
	public NSNetServiceBrowser() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (id <NSNetServiceBrowserDelegate>)delegate;
	 */
	public org.xmlvm.ios.NSNetServiceBrowserDelegate delegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDelegate:(id <NSNetServiceBrowserDelegate>)delegate;
	 */
	public void setDelegate(org.xmlvm.ios.NSNetServiceBrowserDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)scheduleInRunLoop:(NSRunLoop *)aRunLoop forMode:(NSString *)mode;
	 */
	public void scheduleInRunLoop(NSRunLoop aRunLoop, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeFromRunLoop:(NSRunLoop *)aRunLoop forMode:(NSString *)mode;
	 */
	public void removeFromRunLoop(NSRunLoop aRunLoop, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)searchForBrowsableDomains;
	 */
	public void searchForBrowsableDomains(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)searchForRegistrationDomains;
	 */
	public void searchForRegistrationDomains(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)searchForServicesOfType:(NSString *)type inDomain:(NSString *)domainString;
	 */
	public void searchForServicesOfType(String type, String domainString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stop;
	 */
	public void stop(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)searchForAllDomains ;
	 */
	public void searchForAllDomains(){
		throw new RuntimeException("Stub");
	}
}
