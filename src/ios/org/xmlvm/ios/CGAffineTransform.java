package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGAffineTransform {

	/*
	 * Variables
	 */
	 public float d;
	 public float c;
	 public float b;
	 public float a;
	 public float ty;
	 public float tx;

	/*
	 * Static methods
	 */

	/**
	 * CGAffineTransform CGAffineTransformMakeTranslation(CGFloat tx, CGFloat ty) ;
	 */
	public static CGAffineTransform makeTranslation(float tx, float ty){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CGAffineTransformMakeScale(CGFloat sx, CGFloat sy) ;
	 */
	public static CGAffineTransform makeScale(float sx, float sy){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CGAffineTransformMakeRotation(CGFloat angle) ;
	 */
	public static CGAffineTransform makeRotation(float angle){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CGAffineTransformFromString(NSString *string);
	 */
	public static CGAffineTransform fromString(String string){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CGAffineTransform CGAffineTransformMake(CGFloat a, CGFloat b, CGFloat c, CGFloat d, CGFloat tx, CGFloat ty) ;
	 */
	public CGAffineTransform(float a, float b, float c, float d, float tx, float ty) {}

	/** Default constructor */
	public CGAffineTransform() {}

	/*
	 * Instance methods
	 */

	/**
	 * bool CGAffineTransformIsIdentity(CGAffineTransform t) ;
	 */
	public boolean isIdentity(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CGAffineTransformTranslate(CGAffineTransform t, CGFloat tx, CGFloat ty) ;
	 */
	public CGAffineTransform translate(float tx, float ty){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CGAffineTransformScale(CGAffineTransform t, CGFloat sx, CGFloat sy) ;
	 */
	public CGAffineTransform scale(float sx, float sy){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CGAffineTransformRotate(CGAffineTransform t, CGFloat angle) ;
	 */
	public CGAffineTransform rotate(float angle){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CGAffineTransformInvert(CGAffineTransform t) ;
	 */
	public CGAffineTransform invert(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CGAffineTransformConcat(CGAffineTransform t1, CGAffineTransform t2) ;
	 */
	public CGAffineTransform concat(CGAffineTransform t2){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGAffineTransformEqualToTransform(CGAffineTransform t1, CGAffineTransform t2) ;
	 */
	public boolean equalToTransform(CGAffineTransform t2){
		throw new RuntimeException("Stub");
	}
}
