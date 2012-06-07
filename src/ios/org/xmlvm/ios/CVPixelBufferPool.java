package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CVPixelBufferPool {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CVPixelBufferPoolGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CVReturn CVPixelBufferPoolCreatePixelBuffer(CFAllocatorRef allocator, CVPixelBufferPoolRef pixelBufferPool, CVPixelBufferRef *pixelBufferOut) ;
	 */
	public static int createPixelBuffer(CFAllocator allocator, CVPixelBufferPool pixelBufferPool, CVPixelBuffer pixelBufferOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * CVReturn CVPixelBufferPoolCreatePixelBufferWithAuxAttributes( CFAllocatorRef allocator, CVPixelBufferPoolRef pixelBufferPool, CFDictionaryRef auxAttributes, CVPixelBufferRef *pixelBufferOut) ;
	 */
	public static int createPixelBufferWithAuxAttributes(CFAllocator allocator, CVPixelBufferPool pixelBufferPool, CFDictionary auxAttributes, CVPixelBuffer pixelBufferOut){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CVReturn CVPixelBufferPoolCreate(CFAllocatorRef allocator, CFDictionaryRef poolAttributes, CFDictionaryRef pixelBufferAttributes, CVPixelBufferPoolRef *poolOut) ;
	 */
	public CVPixelBufferPool(CFAllocator allocator, CFDictionary poolAttributes, CFDictionary pixelBufferAttributes, Reference<CVPixelBufferPool> poolOut) {}

	/** Default constructor */
	public CVPixelBufferPool() {}

	/*
	 * Instance methods
	 */

	/**
	 * CVPixelBufferPoolRef CVPixelBufferPoolRetain( CVPixelBufferPoolRef pixelBufferPool ) ;
	 */
	public CVPixelBufferPool retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CVPixelBufferPoolRelease( CVPixelBufferPoolRef pixelBufferPool ) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CVPixelBufferPoolGetAttributes(CVPixelBufferPoolRef pool) ;
	 */
	public CFDictionary getAttributes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CVPixelBufferPoolGetPixelBufferAttributes(CVPixelBufferPoolRef pool) ;
	 */
	public CFDictionary getPixelBufferAttributes(){
		throw new RuntimeException("Stub");
	}
}
