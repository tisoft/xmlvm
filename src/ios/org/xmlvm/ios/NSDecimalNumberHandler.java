package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSDecimalNumberHandler extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)defaultDecimalNumberHandler;
	 */
	public static Object defaultDecimalNumberHandler(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode scale:(short)scale raiseOnExactness:(BOOL)exact raiseOnOverflow:(BOOL)overflow raiseOnUnderflow:(BOOL)underflow raiseOnDivideByZero:(BOOL)divideByZero;
	 */
	public static NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode(int roundingMode, short scale, boolean exact, boolean overflow, boolean underflow, boolean divideByZero){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithRoundingMode:(NSRoundingMode)roundingMode scale:(short)scale raiseOnExactness:(BOOL)exact raiseOnOverflow:(BOOL)overflow raiseOnUnderflow:(BOOL)underflow raiseOnDivideByZero:(BOOL)divideByZero;
	 */
	public NSDecimalNumberHandler(int roundingMode, short scale, boolean exact, boolean overflow, boolean underflow, boolean divideByZero) {}

	/** Default constructor */
	NSDecimalNumberHandler() {}
}
