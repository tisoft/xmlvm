package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSData extends NSObject {

	/*
	 * Initialization enumerations
	 */

	public static enum Data {
		Copy, Reuse;
	}

	public static enum File {
		Mapped, Regular;
	}

	/*
	 * Static methods
	 */

	/**
	 * + (id)data;
	 */
	public static NSData data(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dataWithBytes:(const void *)bytes length:(NSUInteger)length;
	 */
	public static NSData dataWithBytes(byte[] bytes, int length){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dataWithBytesNoCopy:(void *)bytes length:(NSUInteger)length;
	 */
	public static NSData dataWithBytesNoCopy(byte[] bytes, int length){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dataWithBytesNoCopy:(void *)bytes length:(NSUInteger)length freeWhenDone:(BOOL)b;
	 */
	public static NSData dataWithBytesNoCopy(byte[] bytes, int length, boolean b){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dataWithContentsOfFile:(NSString *)path options:(NSDataReadingOptions)readOptionsMask error:(NSError **)errorPtr;
	 */
	public static NSData dataWithContentsOfFile(String path, int readOptionsMask, Reference<NSError> errorPtr){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dataWithContentsOfURL:(NSURL *)url options:(NSDataReadingOptions)readOptionsMask error:(NSError **)errorPtr;
	 */
	public static NSData dataWithContentsOfURL(NSURL url, int readOptionsMask, Reference<NSError> errorPtr){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dataWithContentsOfFile:(NSString *)path;
	 */
	public static NSData dataWithContentsOfFile(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dataWithContentsOfURL:(NSURL *)url;
	 */
	public static NSData dataWithContentsOfURL(NSURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dataWithContentsOfMappedFile:(NSString *)path;
	 */
	public static NSData dataWithContentsOfMappedFile(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dataWithData:(NSData *)data;
	 */
	public static NSData dataWithData(NSData data){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithBytes:(const void *)bytes length:(NSUInteger)length;
	 * - (id)initWithBytesNoCopy:(void *)bytes length:(NSUInteger)length;
	 */
	public NSData(byte[] bytes, int length, NSData.Data data) {}

	/**
	 * - (id)initWithBytesNoCopy:(void *)bytes length:(NSUInteger)length freeWhenDone:(BOOL)b;
	 */
	public NSData(byte[] bytes, int length, boolean b) {}

	/**
	 * - (id)initWithContentsOfFile:(NSString *)path options:(NSDataReadingOptions)readOptionsMask error:(NSError **)errorPtr;
	 */
	public NSData(String path, int readOptionsMask, Reference<NSError> errorPtr) {}

	/**
	 * - (id)initWithContentsOfURL:(NSURL *)url options:(NSDataReadingOptions)readOptionsMask error:(NSError **)errorPtr;
	 */
	public NSData(NSURL url, int readOptionsMask, Reference<NSError> errorPtr) {}

	/**
	 * - (id)initWithContentsOfFile:(NSString *)path;
	 * - (id)initWithContentsOfMappedFile:(NSString *)path;
	 */
	public NSData(String path, NSData.File file) {}

	/**
	 * - (id)initWithContentsOfURL:(NSURL *)url;
	 */
	public NSData(NSURL url) {}

	/**
	 * - (id)initWithData:(NSData *)data;
	 */
	public NSData(NSData data) {}

	/** Default constructor */
	NSData() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSUInteger)length;
	 */
	public int length(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (const void *)bytes;
	 */
	public byte[] bytes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)description;
	 */
	public String description(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getBytes:(void *)buffer length:(NSUInteger)length;
	 */
	public void getBytes(byte[] buffer, int length){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getBytes:(void *)buffer range:(NSRange)range;
	 */
	public void getBytes(byte[] buffer, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isEqualToData:(NSData *)other;
	 */
	public boolean isEqualToData(NSData other){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)subdataWithRange:(NSRange)range;
	 */
	public NSData subdataWithRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile;
	 */
	public boolean writeToFile(String path, boolean useAuxiliaryFile){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)writeToURL:(NSURL *)url atomically:(BOOL)atomically;
	 */
	public boolean writeToURL(NSURL url, boolean atomically){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)writeToFile:(NSString *)path options:(NSDataWritingOptions)writeOptionsMask error:(NSError **)errorPtr;
	 */
	public boolean writeToFile(String path, int writeOptionsMask, Reference<NSError> errorPtr){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)writeToURL:(NSURL *)url options:(NSDataWritingOptions)writeOptionsMask error:(NSError **)errorPtr;
	 */
	public boolean writeToURL(NSURL url, int writeOptionsMask, Reference<NSError> errorPtr){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)rangeOfData:(NSData *)dataToFind options:(NSDataSearchOptions)mask range:(NSRange)searchRange ;
	 */
	public NSRange rangeOfData(NSData dataToFind, int mask, NSRange searchRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getBytes:(void *)buffer;
	 */
	public void getBytes(byte[] buffer){
		throw new RuntimeException("Stub");
	}
}
