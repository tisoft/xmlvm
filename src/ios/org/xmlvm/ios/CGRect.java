package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={CGPoint.class,CGSize.class})
public class CGRect {

	/*
	 * Variables
	 */
	 public CGPoint origin;
	 public CGSize size;

	/*
	 * Static methods
	 */

	/**
	 * bool CGRectMakeWithDictionaryRepresentation(CFDictionaryRef dict, CGRect *rect) ;
	 */
	public static boolean makeWithDictionaryRepresentation(CFDictionary dict, Reference<CGRect> rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGRectFromString(NSString *string);
	 */
	public static CGRect fromString(String string){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CGRect CGRectMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height);
	 */
	public CGRect(float x, float y, float width, float height) {}

	/** Default constructor */
	public CGRect() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform t) ;
	 */
	public CGRect applyAffineTransform(CGAffineTransform t){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CGRectGetMinX(CGRect rect) ;
	 */
	public float getMinX(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CGRectGetMidX(CGRect rect) ;
	 */
	public float getMidX(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CGRectGetMaxX(CGRect rect) ;
	 */
	public float getMaxX(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CGRectGetMinY(CGRect rect) ;
	 */
	public float getMinY(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CGRectGetMidY(CGRect rect) ;
	 */
	public float getMidY(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CGRectGetMaxY(CGRect rect) ;
	 */
	public float getMaxY(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CGRectGetWidth(CGRect rect) ;
	 */
	public float getWidth(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CGRectGetHeight(CGRect rect) ;
	 */
	public float getHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGRectEqualToRect(CGRect rect1, CGRect rect2) ;
	 */
	public boolean equalToRect(CGRect rect2){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGRectStandardize(CGRect rect) ;
	 */
	public CGRect standardize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGRectIsEmpty(CGRect rect) ;
	 */
	public boolean isEmpty(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGRectIsNull(CGRect rect) ;
	 */
	public boolean isNull(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGRectIsInfinite(CGRect rect) ;
	 */
	public boolean isInfinite(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy) ;
	 */
	public CGRect inset(float dx, float dy){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGRectIntegral(CGRect rect) ;
	 */
	public CGRect integral(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGRectUnion(CGRect r1, CGRect r2) ;
	 */
	public CGRect union(CGRect r2){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGRectIntersection(CGRect r1, CGRect r2) ;
	 */
	public CGRect intersection(CGRect r2){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy) ;
	 */
	public CGRect offset(float dx, float dy){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGRectDivide(CGRect rect, CGRect *slice, CGRect *remainder, CGFloat amount, CGRectEdge edge) ;
	 */
	public void divide(Reference<CGRect> slice, Reference<CGRect> remainder, float amount, int edge){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGRectContainsPoint(CGRect rect, CGPoint point) ;
	 */
	public boolean containsPoint(CGPoint point){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGRectContainsRect(CGRect rect1, CGRect rect2) ;
	 */
	public boolean containsRect(CGRect rect2){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGRectIntersectsRect(CGRect rect1, CGRect rect2) ;
	 */
	public boolean intersectsRect(CGRect rect2){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CGRectCreateDictionaryRepresentation(CGRect) ;
	 */
	public CFDictionary createDictionaryRepresentation(){
		throw new RuntimeException("Stub");
	}
}
