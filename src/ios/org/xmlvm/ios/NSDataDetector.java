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
	public NSDataDetector(String pattern, int options, Reference<NSError> error) {
		super(pattern, options, error);
	}

	/**
	 * - (id)initWithTypes:(NSTextCheckingTypes)checkingTypes error:(NSError **)error;
	 */
	public NSDataDetector(long checkingTypes, Reference<NSError> error) {}

	/** Default constructor */
	public NSDataDetector() {
		super();
	}

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
