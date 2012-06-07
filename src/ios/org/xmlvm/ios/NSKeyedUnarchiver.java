package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSKeyedUnarchiver extends NSCoder {

	/*
	 * Static methods
	 */

	/**
	 * + (id)unarchiveObjectWithData:(NSData *)data;
	 */
	public static Object unarchiveObjectWithData(NSData data){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)unarchiveObjectWithFile:(NSString *)path;
	 */
	public static Object unarchiveObjectWithFile(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setClass:(Class)cls forClassName:(NSString *)codedName;
	 */
	public static void setClassForClassNameStatic(Class cls, String codedName){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (Class)classForClassName:(NSString *)codedName;
	 */
	public static Class classForClassNameStatic(String codedName){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initForReadingWithData:(NSData *)data;
	 */
	public NSKeyedUnarchiver(NSData data) {}

	/** Default constructor */
	public NSKeyedUnarchiver() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setDelegate:(id <NSKeyedUnarchiverDelegate>)delegate;
	 */
	public void setDelegate(org.xmlvm.ios.NSKeyedUnarchiverDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id <NSKeyedUnarchiverDelegate>)delegate;
	 */
	public org.xmlvm.ios.NSKeyedUnarchiverDelegate delegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)finishDecoding;
	 */
	public void finishDecoding(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setClass:(Class)cls forClassName:(NSString *)codedName;
	 */
	public void setClassForClassName(Class cls, String codedName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (Class)classForClassName:(NSString *)codedName;
	 */
	public Class classForClassName(String codedName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)containsValueForKey:(NSString *)key;
	 */
	public boolean containsValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)decodeObjectForKey:(NSString *)key;
	 */
	public Object decodeObjectForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)decodeBoolForKey:(NSString *)key;
	 */
	public boolean decodeBoolForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (int)decodeIntForKey:(NSString *)key;
	 */
	public int decodeIntForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (int32_t)decodeInt32ForKey:(NSString *)key;
	 */
	public int decodeInt32ForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (int64_t)decodeInt64ForKey:(NSString *)key;
	 */
	public long decodeInt64ForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (float)decodeFloatForKey:(NSString *)key;
	 */
	public float decodeFloatForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (double)decodeDoubleForKey:(NSString *)key;
	 */
	public double decodeDoubleForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (const uint8_t *)decodeBytesForKey:(NSString *)key returnedLength:(NSUInteger *)lengthp;
	 */
	public byte[] decodeBytesForKey(String key, int[] lengthp){
		throw new RuntimeException("Stub");
	}
}
