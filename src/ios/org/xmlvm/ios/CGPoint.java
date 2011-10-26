package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGPoint {

	/*
	 * Variables
	 */
	 public float x;
	 public float y;

	/*
	 * Static methods
	 */

	/**
	 * bool CGPointMakeWithDictionaryRepresentation(CFDictionaryRef dict, CGPoint *point) ;
	 */
	public static boolean makeWithDictionaryRepresentation(CFDictionary dict, Reference<CGPoint> point){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPoint CGPointFromString(NSString *string);
	 */
	public static CGPoint fromString(String string){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CGPoint CGPointMake(CGFloat x, CGFloat y);
	 */
	public CGPoint(float x, float y) {}

	/** Default constructor */
	CGPoint() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform t) ;
	 */
	public CGPoint applyAffineTransform(CGAffineTransform t){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPointEqualToPoint(CGPoint point1, CGPoint point2) ;
	 */
	public boolean equalToPoint(CGPoint point2){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CGPointCreateDictionaryRepresentation(CGPoint point) ;
	 */
	public CFDictionary createDictionaryRepresentation(){
		throw new RuntimeException("Stub");
	}
}
