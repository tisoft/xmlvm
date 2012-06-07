package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSURLResponse extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithURL:(NSURL *)URL MIMEType:(NSString *)MIMEType expectedContentLength:(NSInteger)length textEncodingName:(NSString *)name;
	 */
	public NSURLResponse(NSURL URL, String MIMEType, int length, String name) {}

	/** Default constructor */
	public NSURLResponse() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSURL *)URL;
	 */
	public NSURL URL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)MIMEType;
	 */
	public String MIMEType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (long long)expectedContentLength;
	 */
	public long expectedContentLength(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)textEncodingName;
	 */
	public String textEncodingName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)suggestedFilename;
	 */
	public String suggestedFilename(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
