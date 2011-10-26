package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGShading {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CGShadingGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGShadingRef CGShadingCreateAxial(CGColorSpaceRef space, CGPoint start, CGPoint end, CGFunctionRef function, bool extendStart, bool extendEnd) ;
	 */
	public static CGShading createAxial(CGColorSpace space, CGPoint start, CGPoint end, CGFunction function, boolean extendStart, boolean extendEnd){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGShadingRef CGShadingCreateRadial(CGColorSpaceRef space, CGPoint start, CGFloat startRadius, CGPoint end, CGFloat endRadius, CGFunctionRef function, bool extendStart, bool extendEnd) ;
	 */
	public static CGShading createRadial(CGColorSpace space, CGPoint start, float startRadius, CGPoint end, float endRadius, CGFunction function, boolean extendStart, boolean extendEnd){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CGShading() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGShadingRef CGShadingRetain(CGShadingRef shading) ;
	 */
	public CGShading retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGShadingRelease(CGShadingRef shading) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}
}
