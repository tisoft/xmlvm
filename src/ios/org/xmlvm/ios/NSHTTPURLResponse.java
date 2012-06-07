package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSHTTPURLResponse extends NSURLResponse {

	/*
	 * Static methods
	 */

	/**
	 * + (NSString *)localizedStringForStatusCode:(NSInteger)statusCode;
	 */
	public static String localizedStringForStatusCode(int statusCode){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */
	public NSHTTPURLResponse(NSURL URL, String MIMEType, int length, String name) {
		super(URL, MIMEType, length, name);
	}

	/** Default constructor */
	public NSHTTPURLResponse() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)statusCode;
	 */
	public int statusCode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)allHeaderFields;
	 */
	public Map allHeaderFields(){
		throw new RuntimeException("Stub");
	}
}
