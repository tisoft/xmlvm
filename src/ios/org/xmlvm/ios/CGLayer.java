package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGLayer {

	/*
	 * Static methods
	 */

	/**
	 * CGLayerRef CGLayerCreateWithContext(CGContextRef context, CGSize size, CFDictionaryRef auxiliaryInfo) ;
	 */
	public static CGLayer createWithContext(CGContext context, CGSize size, CFDictionary auxiliaryInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CGLayerGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CGLayer() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGLayerRef CGLayerRetain(CGLayerRef layer) ;
	 */
	public CGLayer retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGLayerRelease(CGLayerRef layer) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGSize CGLayerGetSize(CGLayerRef layer) ;
	 */
	public CGSize getSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGContextRef CGLayerGetContext(CGLayerRef layer) ;
	 */
	public CGContext getContext(){
		throw new RuntimeException("Stub");
	}
}
