package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFWriteStream {

	/*
	 * Static methods
	 */

	/**
	 * CFWriteStreamRef CFWriteStreamCreateWithFTPURL( CFAllocatorRef alloc, CFURLRef ftpURL) ;
	 */
	public static CFWriteStream createWithFTPURL(CFAllocator alloc, CFURL ftpURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CFWriteStreamGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFWriteStreamRef CFWriteStreamCreateWithBuffer(CFAllocatorRef alloc, UInt8 *buffer, CFIndex bufferCapacity);
	 */
	public static CFWriteStream createWithBuffer(CFAllocator alloc, byte[] buffer, long bufferCapacity){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFWriteStreamRef CFWriteStreamCreateWithAllocatedBuffers(CFAllocatorRef alloc, CFAllocatorRef bufferAllocator);
	 */
	public static CFWriteStream createWithAllocatedBuffers(CFAllocator alloc, CFAllocator bufferAllocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFWriteStreamRef CFWriteStreamCreateWithFile(CFAllocatorRef alloc, CFURLRef fileURL);
	 */
	public static CFWriteStream createWithFile(CFAllocator alloc, CFURL fileURL){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CFWriteStream() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFStreamStatus CFWriteStreamGetStatus(CFWriteStreamRef stream);
	 */
	public long getStatus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFErrorRef CFWriteStreamCopyError(CFWriteStreamRef stream) ;
	 */
	public CFError copyError(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFWriteStreamOpen(CFWriteStreamRef stream);
	 */
	public byte open(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFWriteStreamClose(CFWriteStreamRef stream);
	 */
	public void close(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFWriteStreamCanAcceptBytes(CFWriteStreamRef stream);
	 */
	public byte canAcceptBytes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFWriteStreamWrite(CFWriteStreamRef stream, const UInt8 *buffer, CFIndex bufferLength);
	 */
	public long write(byte[] buffer, long bufferLength){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CFWriteStreamCopyProperty(CFWriteStreamRef stream, CFStringRef propertyName);
	 */
	public byte[] copyProperty(String propertyName){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFWriteStreamSetProperty(CFWriteStreamRef stream, CFStringRef propertyName, CFTypeRef propertyValue);
	 */
	public byte setProperty(String propertyName, byte[] propertyValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFWriteStreamSetClient(CFWriteStreamRef stream, CFOptionFlags streamEvents, CFWriteStreamClientCallBack clientCB, CFStreamClientContext *clientContext);
	 */
	public byte setClient(long streamEvents, Object clientCB, Reference<CFStreamClientContext> clientContext){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFWriteStreamScheduleWithRunLoop(CFWriteStreamRef stream, CFRunLoopRef runLoop, CFStringRef runLoopMode);
	 */
	public void scheduleWithRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFWriteStreamUnscheduleFromRunLoop(CFWriteStreamRef stream, CFRunLoopRef runLoop, CFStringRef runLoopMode);
	 */
	public void unscheduleFromRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStreamError CFWriteStreamGetError(CFWriteStreamRef stream);
	 */
	public CFStreamError getError(){
		throw new RuntimeException("Stub");
	}
}
