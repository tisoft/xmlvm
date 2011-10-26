package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFReadStream {

	/*
	 * Static methods
	 */

	/**
	 * CFReadStreamRef CFReadStreamCreateWithFTPURL( CFAllocatorRef alloc, CFURLRef ftpURL) ;
	 */
	public static CFReadStream createWithFTPURL(CFAllocator alloc, CFURL ftpURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFReadStreamRef CFReadStreamCreateForHTTPRequest( CFAllocatorRef alloc, CFHTTPMessageRef request) ;
	 */
	public static CFReadStream createForHTTPRequest(CFAllocator alloc, CFHTTPMessage request){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFReadStreamRef CFReadStreamCreateForStreamedHTTPRequest( CFAllocatorRef alloc, CFHTTPMessageRef requestHeaders, CFReadStreamRef requestBody) ;
	 */
	public static CFReadStream createForStreamedHTTPRequest(CFAllocator alloc, CFHTTPMessage requestHeaders, CFReadStream requestBody){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CFReadStreamGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFReadStreamRef CFReadStreamCreateWithBytesNoCopy(CFAllocatorRef alloc, const UInt8 *bytes, CFIndex length, CFAllocatorRef bytesDeallocator);
	 */
	public static CFReadStream createWithBytesNoCopy(CFAllocator alloc, byte[] bytes, long length, CFAllocator bytesDeallocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFReadStreamRef CFReadStreamCreateWithFile(CFAllocatorRef alloc, CFURLRef fileURL);
	 */
	public static CFReadStream createWithFile(CFAllocator alloc, CFURL fileURL){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CFReadStream() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFStreamStatus CFReadStreamGetStatus(CFReadStreamRef stream);
	 */
	public long getStatus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFErrorRef CFReadStreamCopyError(CFReadStreamRef stream) ;
	 */
	public CFError copyError(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFReadStreamOpen(CFReadStreamRef stream);
	 */
	public byte open(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFReadStreamClose(CFReadStreamRef stream);
	 */
	public void close(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFReadStreamHasBytesAvailable(CFReadStreamRef stream);
	 */
	public byte hasBytesAvailable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFReadStreamRead(CFReadStreamRef stream, UInt8 *buffer, CFIndex bufferLength);
	 */
	public long read(byte[] buffer, long bufferLength){
		throw new RuntimeException("Stub");
	}

	/**
	 * const UInt8 *CFReadStreamGetBuffer(CFReadStreamRef stream, CFIndex maxBytesToRead, CFIndex *numBytesRead);
	 */
	public byte[] getBuffer(long maxBytesToRead, long[] numBytesRead){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CFReadStreamCopyProperty(CFReadStreamRef stream, CFStringRef propertyName);
	 */
	public byte[] copyProperty(String propertyName){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFReadStreamSetProperty(CFReadStreamRef stream, CFStringRef propertyName, CFTypeRef propertyValue);
	 */
	public byte setProperty(String propertyName, byte[] propertyValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFReadStreamSetClient(CFReadStreamRef stream, CFOptionFlags streamEvents, CFReadStreamClientCallBack clientCB, CFStreamClientContext *clientContext);
	 */
	public byte setClient(long streamEvents, Object clientCB, Reference<CFStreamClientContext> clientContext){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFReadStreamScheduleWithRunLoop(CFReadStreamRef stream, CFRunLoopRef runLoop, CFStringRef runLoopMode);
	 */
	public void scheduleWithRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFReadStreamUnscheduleFromRunLoop(CFReadStreamRef stream, CFRunLoopRef runLoop, CFStringRef runLoopMode);
	 */
	public void unscheduleFromRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStreamError CFReadStreamGetError(CFReadStreamRef stream);
	 */
	public CFStreamError getError(){
		throw new RuntimeException("Stub");
	}
}
