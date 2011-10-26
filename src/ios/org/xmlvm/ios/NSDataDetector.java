package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSDataDetector extends NSRegularExpression {

	/*
	 * Static methods
	 */

	/**
	 * + (NSDataDetector *)dataDetectorWithTypes:(NSTextCheckingTypes)checkingTypes error:(NSError **)error;
	 */
	public static NSDataDetector dataDetectorWithTypes(long checkingTypes, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithTypes:(NSTextCheckingTypes)checkingTypes error:(NSError **)error;
	 */
	public NSDataDetector(long checkingTypes, Reference<NSError> error) {}

	/** Default constructor */
	NSDataDetector() {}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly) NSTextCheckingTypes checkingTypes;
	 */
	public long getCheckingTypes(){
		throw new RuntimeException("Stub");
	}
}
