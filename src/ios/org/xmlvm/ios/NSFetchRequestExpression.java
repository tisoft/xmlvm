package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSFetchRequestExpression extends NSExpression {

	/*
	 * Static methods
	 */

	/**
	 * + (NSExpression*)expressionForFetch:(NSExpression*)fetch context:(NSExpression*)context countOnly:(BOOL)countFlag;
	 */
	public static NSExpression expressionForFetch(NSExpression fetch, NSExpression context, boolean countFlag){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSFetchRequestExpression() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSExpression *)requestExpression;
	 */
	public NSExpression requestExpression(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSExpression *)contextExpression;
	 */
	public NSExpression contextExpression(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isCountOnlyRequest;
	 */
	public boolean isCountOnlyRequest(){
		throw new RuntimeException("Stub");
	}
}
