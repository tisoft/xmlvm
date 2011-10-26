package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGFunction {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CGFunctionGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CGFunctionRef CGFunctionCreate(void *info, size_t domainDimension, const CGFloat *domain, size_t rangeDimension, const CGFloat *range, const CGFunctionCallbacks *callbacks) ;
	 */
	public CGFunction(byte[] info, int domainDimension, float[] domain, int rangeDimension, float[] range, Reference<CGFunctionCallbacks> callbacks) {}

	/** Default constructor */
	CGFunction() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGFunctionRef CGFunctionRetain(CGFunctionRef function) ;
	 */
	public CGFunction retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGFunctionRelease(CGFunctionRef function) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}
}
