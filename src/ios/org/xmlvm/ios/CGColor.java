package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGColor {

	/*
	 * Static methods
	 */

	/**
	 * CGColorRef CGColorCreateGenericGray(CGFloat gray, CGFloat alpha) ;
	 */
	public static CGColor createGenericGray(float gray, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorRef CGColorCreateGenericRGB(CGFloat red, CGFloat green, CGFloat blue, CGFloat alpha) ;
	 */
	public static CGColor createGenericRGB(float red, float green, float blue, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorRef CGColorCreateGenericCMYK(CGFloat cyan, CGFloat magenta, CGFloat yellow, CGFloat black, CGFloat alpha) ;
	 */
	public static CGColor createGenericCMYK(float cyan, float magenta, float yellow, float black, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorRef CGColorGetConstantColor(CFStringRef colorName) ;
	 */
	public static CGColor getConstantColor(String colorName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorRef CGColorCreateWithPattern(CGColorSpaceRef space, CGPatternRef pattern, const CGFloat components[]) ;
	 */
	public static CGColor createWithPattern(CGColorSpace space, CGPattern pattern, float[] components){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CGColorGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CGColorRef CGColorCreate(CGColorSpaceRef space, const CGFloat components[]) ;
	 */
	public CGColor(CGColorSpace space, float[] components) {}

	/** Default constructor */
	CGColor() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGColorRef CGColorCreateCopy(CGColorRef color) ;
	 */
	public CGColor createCopy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorRef CGColorCreateCopyWithAlpha(CGColorRef color, CGFloat alpha) ;
	 */
	public CGColor createCopyWithAlpha(float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorRef CGColorRetain(CGColorRef color) ;
	 */
	public CGColor retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGColorRelease(CGColorRef color) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGColorEqualToColor(CGColorRef color1, CGColorRef color2) ;
	 */
	public boolean equalToColor(CGColor color2){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGColorGetNumberOfComponents(CGColorRef color) ;
	 */
	public int getNumberOfComponents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * const CGFloat *CGColorGetComponents(CGColorRef color) ;
	 */
	public float[] getComponents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CGColorGetAlpha(CGColorRef color) ;
	 */
	public float getAlpha(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGColorGetColorSpace(CGColorRef color) ;
	 */
	public CGColorSpace getColorSpace(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPatternRef CGColorGetPattern(CGColorRef color) ;
	 */
	public CGPattern getPattern(){
		throw new RuntimeException("Stub");
	}
}
