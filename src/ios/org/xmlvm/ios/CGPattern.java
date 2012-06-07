package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={CGPatternCallbacks.class})
public class CGPattern extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CGPatternGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CGPatternRef CGPatternCreate(void *info, CGRect bounds, CGAffineTransform matrix, CGFloat xStep, CGFloat yStep, CGPatternTiling tiling, bool isColored, const CGPatternCallbacks *callbacks) ;
	 */
	public CGPattern(byte[] info, CGRect bounds, CGAffineTransform matrix, float xStep, float yStep, int tiling, boolean isColored, Reference<CGPatternCallbacks> callbacks) {}

	/** Default constructor */
	public CGPattern() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGPatternRef CGPatternRetain(CGPatternRef pattern) ;
	 */
	public CGPattern retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPatternRelease(CGPatternRef pattern) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}
}
