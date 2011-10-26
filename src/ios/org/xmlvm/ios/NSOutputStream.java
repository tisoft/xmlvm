package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSOutputStream extends NSStream {

	/*
	 * Static methods
	 */

	/**
	 * + (id)outputStreamToMemory;
	 */
	public static NSOutputStream outputStreamToMemory(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)outputStreamToBuffer:(uint8_t *)buffer capacity:(NSUInteger)capacity;
	 */
	public static NSOutputStream outputStreamToBuffer(byte[] buffer, int capacity){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)outputStreamToFileAtPath:(NSString *)path append:(BOOL)shouldAppend;
	 */
	public static NSOutputStream outputStreamToFileAtPath(String path, boolean shouldAppend){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)outputStreamWithURL:(NSURL *)url append:(BOOL)shouldAppend ;
	 */
	public static NSOutputStream outputStreamWithURL(NSURL url, boolean shouldAppend){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initToMemory;
	 */
	public NSOutputStream() {}

	/**
	 * - (id)initToBuffer:(uint8_t *)buffer capacity:(NSUInteger)capacity;
	 */
	public NSOutputStream(byte[] buffer, int capacity) {}

	/**
	 * - (id)initToFileAtPath:(NSString *)path append:(BOOL)shouldAppend;
	 */
	public NSOutputStream(String path, boolean shouldAppend) {}

	/**
	 * - (id)initWithURL:(NSURL *)url append:(BOOL)shouldAppend ;
	 */
	public NSOutputStream(NSURL url, boolean shouldAppend) {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)write:(const uint8_t *)buffer maxLength:(NSUInteger)len;
	 */
	public int write(byte[] buffer, int len){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)hasSpaceAvailable;
	 */
	public boolean hasSpaceAvailable(){
		throw new RuntimeException("Stub");
	}
}
