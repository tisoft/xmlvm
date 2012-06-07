package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSKeyedArchiver extends NSCoder {

	/*
	 * Static methods
	 */

	/**
	 * + (NSData *)archivedDataWithRootObject:(id)rootObject;
	 */
	public static NSData archivedDataWithRootObject(Object rootObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)archiveRootObject:(id)rootObject toFile:(NSString *)path;
	 */
	public static boolean archiveRootObject(Object rootObject, String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setClassName:(NSString *)codedName forClass:(Class)cls;
	 */
	public static void setClassNameForClassStatic(String codedName, Class cls){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSString *)classNameForClass:(Class)cls;
	 */
	public static String classNameForClassStatic(Class cls){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initForWritingWithMutableData:(NSMutableData *)data;
	 */
	public NSKeyedArchiver(NSMutableData data) {}

	/** Default constructor */
	public NSKeyedArchiver() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setDelegate:(id <NSKeyedArchiverDelegate>)delegate;
	 */
	public void setDelegate(org.xmlvm.ios.NSKeyedArchiverDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id <NSKeyedArchiverDelegate>)delegate;
	 */
	public org.xmlvm.ios.NSKeyedArchiverDelegate delegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setOutputFormat:(NSPropertyListFormat)format;
	 */
	public void setOutputFormat(int format){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSPropertyListFormat)outputFormat;
	 */
	public int outputFormat(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)finishEncoding;
	 */
	public void finishEncoding(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setClassName:(NSString *)codedName forClass:(Class)cls;
	 */
	public void setClassNameForClass(String codedName, Class cls){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)classNameForClass:(Class)cls;
	 */
	public String classNameForClass(Class cls){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeObject:(id)objv forKey:(NSString *)key;
	 */
	public void encodeObject(Object objv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeConditionalObject:(id)objv forKey:(NSString *)key;
	 */
	public void encodeConditionalObject(Object objv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeBool:(BOOL)boolv forKey:(NSString *)key;
	 */
	public void encodeBool(boolean boolv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeInt:(int)intv forKey:(NSString *)key;
	 */
	public void encodeInt(int intv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeInt32:(int32_t)intv forKey:(NSString *)key;
	 */
	public void encodeInt32(int intv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeInt64:(int64_t)intv forKey:(NSString *)key;
	 */
	public void encodeInt64(long intv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeFloat:(float)realv forKey:(NSString *)key;
	 */
	public void encodeFloat(float realv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeDouble:(double)realv forKey:(NSString *)key;
	 */
	public void encodeDouble(double realv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeBytes:(const uint8_t *)bytesp length:(NSUInteger)lenv forKey:(NSString *)key;
	 */
	public void encodeBytes(byte[] bytesp, int lenv, String key){
		throw new RuntimeException("Stub");
	}
}
