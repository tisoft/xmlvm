package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CoreVideo {

	/*
	 * Static methods
	 */

	/**
	 * CFDictionaryRef CVPixelFormatDescriptionCreateWithPixelFormatType(CFAllocatorRef allocator, OSType pixelFormat) ;
	 */
	public static CFDictionary CVPixelFormatDescriptionCreateWithPixelFormatType(CFAllocator allocator, int pixelFormat){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint64_t CVGetCurrentHostTime() ;
	 */
	public static long CVGetCurrentHostTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint32_t CVGetHostClockMinimumTimeDelta() ;
	 */
	public static int CVGetHostClockMinimumTimeDelta(){
		throw new RuntimeException("Stub");
	}

	/**
	 * double CVGetHostClockFrequency() ;
	 */
	public static double CVGetHostClockFrequency(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CVPixelFormatDescriptionArrayCreateWithAllPixelFormatTypes(CFAllocatorRef allocator) ;
	 */
	public static CFArray CVPixelFormatDescriptionArrayCreateWithAllPixelFormatTypes(CFAllocator allocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType(CFDictionaryRef description, OSType pixelFormat) ;
	 */
	public static void CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType(CFDictionary description, int pixelFormat){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CoreVideo() {}
}
