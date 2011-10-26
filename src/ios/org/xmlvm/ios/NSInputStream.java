package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSInputStream extends NSStream {

	/*
	 * Static methods
	 */

	/**
	 * + (id)inputStreamWithData:(NSData *)data;
	 */
	public static NSInputStream inputStreamWithData(NSData data){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)inputStreamWithFileAtPath:(NSString *)path;
	 */
	public static NSInputStream inputStreamWithFileAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)inputStreamWithURL:(NSURL *)url ;
	 */
	public static NSInputStream inputStreamWithURL(NSURL url){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithData:(NSData *)data;
	 */
	public NSInputStream(NSData data) {}

	/**
	 * - (id)initWithFileAtPath:(NSString *)path;
	 */
	public NSInputStream(String path) {}

	/**
	 * - (id)initWithURL:(NSURL *)url ;
	 */
	public NSInputStream(NSURL url) {}

	/** Default constructor */
	NSInputStream() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)read:(uint8_t *)buffer maxLength:(NSUInteger)len;
	 */
	public int read(byte[] buffer, int len){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)getBuffer:(uint8_t **)buffer length:(NSUInteger *)len;
	 */
	public boolean getBuffer(byte[][] buffer, int[] len){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)hasBytesAvailable;
	 */
	public boolean hasBytesAvailable(){
		throw new RuntimeException("Stub");
	}
}
