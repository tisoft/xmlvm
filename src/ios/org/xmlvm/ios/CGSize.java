package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGSize {

	/*
	 * Variables
	 */
	 public float width;
	 public float height;

	/*
	 * Static methods
	 */

	/**
	 * bool CGSizeMakeWithDictionaryRepresentation(CFDictionaryRef dict, CGSize *size) ;
	 */
	public static boolean makeWithDictionaryRepresentation(CFDictionary dict, Reference<CGSize> size){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGSize CGSizeFromString(NSString *string);
	 */
	public static CGSize fromString(String string){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CGSize CGSizeMake(CGFloat width, CGFloat height);
	 */
	public CGSize(float width, float height) {}

	/** Default constructor */
	CGSize() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform t) ;
	 */
	public CGSize applyAffineTransform(CGAffineTransform t){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGSizeEqualToSize(CGSize size1, CGSize size2) ;
	 */
	public boolean equalToSize(CGSize size2){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CGSizeCreateDictionaryRepresentation(CGSize size) ;
	 */
	public CFDictionary createDictionaryRepresentation(){
		throw new RuntimeException("Stub");
	}
}
