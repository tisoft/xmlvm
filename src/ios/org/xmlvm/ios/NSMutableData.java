package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSMutableData extends NSData {

	/*
	 * Initialization enumerations
	 */

	public static enum Data {
		Capacity, Length;
	}

	/*
	 * Static methods
	 */

	/**
	 * + (id)dataWithCapacity:(NSUInteger)aNumItems;
	 */
	public static NSMutableData dataWithCapacity(int aNumItems){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dataWithLength:(NSUInteger)length;
	 */
	public static NSMutableData dataWithLength(int length){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithCapacity:(NSUInteger)capacity;
	 * - (id)initWithLength:(NSUInteger)length;
	 */
	public NSMutableData(int capacity, NSMutableData.Data data) {}

	/** Default constructor */
	NSMutableData() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (void *)mutableBytes;
	 */
	public byte[] mutableBytes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setLength:(NSUInteger)length;
	 */
	public void setLength(int length){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)appendBytes:(const void *)bytes length:(NSUInteger)length;
	 */
	public void appendBytes(byte[] bytes, int length){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)appendData:(NSData *)other;
	 */
	public void appendData(NSData other){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)increaseLengthBy:(NSUInteger)extraLength;
	 */
	public void increaseLengthBy(int extraLength){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)replaceBytesInRange:(NSRange)range withBytes:(const void *)bytes;
	 */
	public void replaceBytesInRange(NSRange range, byte[] bytes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)resetBytesInRange:(NSRange)range;
	 */
	public void resetBytesInRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setData:(NSData *)data;
	 */
	public void setData(NSData data){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)replaceBytesInRange:(NSRange)range withBytes:(const void *)replacementBytes length:(NSUInteger)replacementLength;
	 */
	public void replaceBytesInRange(NSRange range, byte[] replacementBytes, int replacementLength){
		throw new RuntimeException("Stub");
	}
}
