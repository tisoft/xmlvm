package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSAssertionHandler extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSAssertionHandler *)currentHandler;
	 */
	public static NSAssertionHandler currentHandler(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSAssertionHandler() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)handleFailureInMethod:(SEL)selector object:(id)object file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format,...;
	 */
	public void handleFailureInMethod(SEL selector, Object object, String fileName, int line, String... format){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)handleFailureInFunction:(NSString *)functionName file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format,...;
	 */
	public void handleFailureInFunction(String functionName, String fileName, int line, String... format){
		throw new RuntimeException("Stub");
	}
}
