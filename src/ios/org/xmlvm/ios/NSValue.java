package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSValue extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSValue *)valueWithCMTime:(CMTime)time ;
	 */
	public static NSValue valueWithCMTime(CMTime time){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValue *)valueWithCMTimeRange:(CMTimeRange)timeRange ;
	 */
	public static NSValue valueWithCMTimeRange(CMTimeRange timeRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValue *)valueWithCMTimeMapping:(CMTimeMapping)timeMapping ;
	 */
	public static NSValue valueWithCMTimeMapping(CMTimeMapping timeMapping){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValue *)valueWithRange:(NSRange)range;
	 */
	public static NSValue valueWithRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValue *)valueWithBytes:(const void *)value objCType:(const char *)type;
	 */
	public static NSValue valueWithBytes(byte[] value, byte[] type){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValue *)value:(const void *)value withObjCType:(const char *)type;
	 */
	public static NSValue value(byte[] value, byte[] type){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValue *)valueWithNonretainedObject:(id)anObject;
	 */
	public static NSValue valueWithNonretainedObject(Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValue *)valueWithPointer:(const void *)pointer;
	 */
	public static NSValue valueWithPointer(byte[] pointer){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValue *)valueWithCATransform3D:(CATransform3D)t;
	 */
	public static NSValue valueWithCATransform3D(CATransform3D t){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValue *)valueWithCGPoint:(CGPoint)point;
	 */
	public static NSValue valueWithCGPoint(CGPoint point){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValue *)valueWithCGSize:(CGSize)size;
	 */
	public static NSValue valueWithCGSize(CGSize size){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValue *)valueWithCGRect:(CGRect)rect;
	 */
	public static NSValue valueWithCGRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValue *)valueWithCGAffineTransform:(CGAffineTransform)transform;
	 */
	public static NSValue valueWithCGAffineTransform(CGAffineTransform transform){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValue *)valueWithUIEdgeInsets:(UIEdgeInsets)insets;
	 */
	public static NSValue valueWithUIEdgeInsets(UIEdgeInsets insets){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithBytes:(const void *)value objCType:(const char *)type;
	 */
	public NSValue(byte[] value, byte[] type) {}

	/** Default constructor */
	NSValue() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (CMTime)CMTimeValue ;
	 */
	public CMTime CMTimeValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CMTimeRange)CMTimeRangeValue ;
	 */
	public CMTimeRange CMTimeRangeValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CMTimeMapping)CMTimeMappingValue ;
	 */
	public CMTimeMapping CMTimeMappingValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)rangeValue;
	 */
	public NSRange rangeValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getValue:(void *)value;
	 */
	public void getValue(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (const char *)objCType;
	 */
	public byte[] objCType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)nonretainedObjectValue;
	 */
	public Object nonretainedObjectValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void *)pointerValue;
	 */
	public byte[] pointerValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isEqualToValue:(NSValue *)value;
	 */
	public boolean isEqualToValue(NSValue value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CATransform3D)CATransform3DValue;
	 */
	public CATransform3D CATransform3DValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGPoint)CGPointValue;
	 */
	public CGPoint CGPointValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)CGSizeValue;
	 */
	public CGSize CGSizeValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)CGRectValue;
	 */
	public CGRect CGRectValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGAffineTransform)CGAffineTransformValue;
	 */
	public CGAffineTransform CGAffineTransformValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIEdgeInsets)UIEdgeInsetsValue;
	 */
	public UIEdgeInsets UIEdgeInsetsValue(){
		throw new RuntimeException("Stub");
	}
}
