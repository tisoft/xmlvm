package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CAMediaTimingFunction extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)functionWithName:(NSString *)name;
	 */
	public static Object functionWithName(String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)functionWithControlPoints:(float)c1x :(float)c1y :(float)c2x :(float)c2y;
	 */
	public static Object functionWithControlPoints(float c1x, float c1y, float c2x, float c2y){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithControlPoints:(float)c1x :(float)c1y :(float)c2x :(float)c2y;
	 */
	public CAMediaTimingFunction(float c1x, float c1y, float c2x, float c2y) {}

	/** Default constructor */
	public CAMediaTimingFunction() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)getControlPointAtIndex:(size_t)idx values:(float[2])ptr;
	 */
	public void getControlPointAtIndex(int idx, float[] ptr){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
