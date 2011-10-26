package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSMutableString extends NSString {

	/*
	 * Static methods
	 */

	/**
	 * + (id)stringWithCapacity:(NSUInteger)capacity;
	 */
	public static NSMutableString stringWithCapacity(int capacity){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithCapacity:(NSUInteger)capacity;
	 */
	public NSMutableString(int capacity) {}

	/** Default constructor */
	NSMutableString() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)replaceCharactersInRange:(NSRange)range withString:(NSString *)aString;
	 */
	public void replaceCharactersInRange(NSRange range, String aString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertString:(NSString *)aString atIndex:(NSUInteger)loc;
	 */
	public void insertString(String aString, int loc){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)deleteCharactersInRange:(NSRange)range;
	 */
	public void deleteCharactersInRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)appendString:(NSString *)aString;
	 */
	public void appendString(String aString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)appendFormat:(NSString *)format, ... ;
	 */
	public void appendFormat(String... format){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setString:(NSString *)aString;
	 */
	public void setString(String aString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)replaceOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange;
	 */
	public int replaceOccurrencesOfString(String target, String replacement, int options, NSRange searchRange){
		throw new RuntimeException("Stub");
	}
}
