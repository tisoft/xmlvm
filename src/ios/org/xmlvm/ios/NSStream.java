package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={NSOutputStream.class,NSInputStream.class})
public class NSStream extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (void)getStreamsToHost:(NSHost *)host port:(NSInteger)port inputStream:(NSInputStream **)inputStream outputStream:(NSOutputStream **)outputStream;
	 */
	public static void getStreamsToHost(NSHost host, int port, Reference<NSInputStream> inputStream, Reference<NSOutputStream> outputStream){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSStream() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)open;
	 */
	public void open(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)close;
	 */
	public void close(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id <NSStreamDelegate>)delegate;
	 */
	public org.xmlvm.ios.NSStreamDelegate delegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDelegate:(id <NSStreamDelegate>)delegate;
	 */
	public void setDelegate(org.xmlvm.ios.NSStreamDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)propertyForKey:(NSString *)key;
	 */
	public Object propertyForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)setProperty:(id)property forKey:(NSString *)key;
	 */
	public boolean setProperty(Object property, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)scheduleInRunLoop:(NSRunLoop *)aRunLoop forMode:(NSString *)mode;
	 */
	public void scheduleInRunLoop(NSRunLoop aRunLoop, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeFromRunLoop:(NSRunLoop *)aRunLoop forMode:(NSString *)mode;
	 */
	public void removeFromRunLoop(NSRunLoop aRunLoop, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSStreamStatus)streamStatus;
	 */
	public int streamStatus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSError *)streamError;
	 */
	public NSError streamError(){
		throw new RuntimeException("Stub");
	}
}
