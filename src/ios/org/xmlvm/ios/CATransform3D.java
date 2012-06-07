package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CATransform3D {

	/*
	 * Variables
	 */
	 public float m14;
	 public float m13;
	 public float m12;
	 public float m11;
	 public float m24;
	 public float m23;
	 public float m22;
	 public float m21;
	 public float m34;
	 public float m33;
	 public float m32;
	 public float m31;
	 public float m44;
	 public float m43;
	 public float m42;
	 public float m41;

	/*
	 * Static methods
	 */

	/**
	 * CATransform3D CATransform3DMakeTranslation (CGFloat tx, CGFloat ty, CGFloat tz) ;
	 */
	public static CATransform3D makeTranslation(float tx, float ty, float tz){
		throw new RuntimeException("Stub");
	}

	/**
	 * CATransform3D CATransform3DMakeScale (CGFloat sx, CGFloat sy, CGFloat sz) ;
	 */
	public static CATransform3D makeScale(float sx, float sy, float sz){
		throw new RuntimeException("Stub");
	}

	/**
	 * CATransform3D CATransform3DMakeRotation (CGFloat angle, CGFloat x, CGFloat y, CGFloat z) ;
	 */
	public static CATransform3D makeRotation(float angle, float x, float y, float z){
		throw new RuntimeException("Stub");
	}

	/**
	 * CATransform3D CATransform3DMakeAffineTransform (CGAffineTransform m) ;
	 */
	public static CATransform3D makeAffineTransform(CGAffineTransform m){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CATransform3D() {}

	/*
	 * Instance methods
	 */

	/**
	 * bool CATransform3DIsIdentity (CATransform3D t) ;
	 */
	public boolean isIdentity(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CATransform3DEqualToTransform (CATransform3D a, CATransform3D b) ;
	 */
	public boolean equalToTransform(CATransform3D b){
		throw new RuntimeException("Stub");
	}

	/**
	 * CATransform3D CATransform3DTranslate (CATransform3D t, CGFloat tx, CGFloat ty, CGFloat tz) ;
	 */
	public CATransform3D translate(float tx, float ty, float tz){
		throw new RuntimeException("Stub");
	}

	/**
	 * CATransform3D CATransform3DScale (CATransform3D t, CGFloat sx, CGFloat sy, CGFloat sz) ;
	 */
	public CATransform3D scale(float sx, float sy, float sz){
		throw new RuntimeException("Stub");
	}

	/**
	 * CATransform3D CATransform3DRotate (CATransform3D t, CGFloat angle, CGFloat x, CGFloat y, CGFloat z) ;
	 */
	public CATransform3D rotate(float angle, float x, float y, float z){
		throw new RuntimeException("Stub");
	}

	/**
	 * CATransform3D CATransform3DConcat (CATransform3D a, CATransform3D b) ;
	 */
	public CATransform3D concat(CATransform3D b){
		throw new RuntimeException("Stub");
	}

	/**
	 * CATransform3D CATransform3DInvert (CATransform3D t) ;
	 */
	public CATransform3D invert(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CATransform3DIsAffine (CATransform3D t) ;
	 */
	public boolean isAffine(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CATransform3DGetAffineTransform (CATransform3D t) ;
	 */
	public CGAffineTransform getAffineTransform(){
		throw new RuntimeException("Stub");
	}
}
