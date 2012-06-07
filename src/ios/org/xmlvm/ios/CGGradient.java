package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGGradient extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CGGradientGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGGradientRef CGGradientCreateWithColorComponents(CGColorSpaceRef space, const CGFloat components[], const CGFloat locations[], size_t count) ;
	 */
	public static CGGradient createWithColorComponents(CGColorSpace space, float[] components, float[] locations, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGGradientRef CGGradientCreateWithColors(CGColorSpaceRef space, CFArrayRef colors, const CGFloat locations[]) ;
	 */
	public static CGGradient createWithColors(CGColorSpace space, CFArray colors, float[] locations){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CGGradient() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGGradientRef CGGradientRetain(CGGradientRef gradient) ;
	 */
	public CGGradient retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGGradientRelease(CGGradientRef gradient) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}
}
