package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CVPixelBuffer extends CVImageBuffer {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CVPixelBufferGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CVReturn CVPixelBufferCreateResolvedAttributesDictionary(CFAllocatorRef allocator, CFArrayRef attributes, CFDictionaryRef *resolvedDictionaryOut) ;
	 */
	public static int createResolvedAttributesDictionary(CFAllocator allocator, CFArray attributes, Reference<CFDictionary> resolvedDictionaryOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * CVReturn CVPixelBufferCreateWithBytes(CFAllocatorRef allocator, size_t width, size_t height, OSType pixelFormatType, void *baseAddress, size_t bytesPerRow, CVPixelBufferReleaseBytesCallback releaseCallback, void *releaseRefCon, CFDictionaryRef pixelBufferAttributes, CVPixelBufferRef *pixelBufferOut) ;
	 */
	public static int createWithBytes(CFAllocator allocator, int width, int height, int pixelFormatType, byte[] baseAddress, int bytesPerRow, Object releaseCallback, byte[] releaseRefCon, CFDictionary pixelBufferAttributes, CVPixelBuffer pixelBufferOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * CVReturn CVPixelBufferCreateWithPlanarBytes(CFAllocatorRef allocator, size_t width, size_t height, OSType pixelFormatType, void *dataPtr, size_t dataSize, size_t numberOfPlanes, void *planeBaseAddress[], size_t planeWidth[], size_t planeHeight[], size_t planeBytesPerRow[], CVPixelBufferReleasePlanarBytesCallback releaseCallback, void *releaseRefCon, CFDictionaryRef pixelBufferAttributes, CVPixelBufferRef *pixelBufferOut) ;
	 */
	public static int createWithPlanarBytes(CFAllocator allocator, int width, int height, int pixelFormatType, byte[] dataPtr, int dataSize, int numberOfPlanes, byte[][] planeBaseAddress, int[] planeWidth, int[] planeHeight, int[] planeBytesPerRow, Object releaseCallback, byte[] releaseRefCon, CFDictionary pixelBufferAttributes, CVPixelBuffer pixelBufferOut){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CVReturn CVPixelBufferCreate(CFAllocatorRef allocator, size_t width, size_t height, OSType pixelFormatType, CFDictionaryRef pixelBufferAttributes, CVPixelBufferRef *pixelBufferOut) ;
	 */
	public CVPixelBuffer(CFAllocator allocator, int width, int height, int pixelFormatType, CFDictionary pixelBufferAttributes, CVPixelBuffer pixelBufferOut) {}

	/** Default constructor */
	public CVPixelBuffer() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * CVPixelBufferRef CVPixelBufferRetain( CVPixelBufferRef texture ) ;
	 */
	public CVPixelBuffer retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CVPixelBufferRelease( CVPixelBufferRef texture ) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CVReturn CVPixelBufferLockBaseAddress(CVPixelBufferRef pixelBuffer, CVOptionFlags lockFlags) ;
	 */
	public int lockBaseAddress(long lockFlags){
		throw new RuntimeException("Stub");
	}

	/**
	 * CVReturn CVPixelBufferUnlockBaseAddress(CVPixelBufferRef pixelBuffer, CVOptionFlags unlockFlags) ;
	 */
	public int unlockBaseAddress(long unlockFlags){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CVPixelBufferGetWidth(CVPixelBufferRef pixelBuffer) ;
	 */
	public int getWidth(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CVPixelBufferGetHeight(CVPixelBufferRef pixelBuffer) ;
	 */
	public int getHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSType CVPixelBufferGetPixelFormatType(CVPixelBufferRef pixelBuffer) ;
	 */
	public int getPixelFormatType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void *CVPixelBufferGetBaseAddress(CVPixelBufferRef pixelBuffer) ;
	 */
	public byte[] getBaseAddress(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CVPixelBufferGetBytesPerRow(CVPixelBufferRef pixelBuffer) ;
	 */
	public int getBytesPerRow(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CVPixelBufferGetDataSize(CVPixelBufferRef pixelBuffer) ;
	 */
	public int getDataSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CVPixelBufferIsPlanar(CVPixelBufferRef pixelBuffer) ;
	 */
	public byte isPlanar(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CVPixelBufferGetPlaneCount(CVPixelBufferRef pixelBuffer) ;
	 */
	public int getPlaneCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CVPixelBufferGetWidthOfPlane(CVPixelBufferRef pixelBuffer, size_t planeIndex) ;
	 */
	public int getWidthOfPlane(int planeIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CVPixelBufferGetHeightOfPlane(CVPixelBufferRef pixelBuffer, size_t planeIndex) ;
	 */
	public int getHeightOfPlane(int planeIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * void *CVPixelBufferGetBaseAddressOfPlane(CVPixelBufferRef pixelBuffer, size_t planeIndex) ;
	 */
	public byte[] getBaseAddressOfPlane(int planeIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CVPixelBufferGetBytesPerRowOfPlane(CVPixelBufferRef pixelBuffer, size_t planeIndex) ;
	 */
	public int getBytesPerRowOfPlane(int planeIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CVPixelBufferGetExtendedPixels(CVPixelBufferRef pixelBuffer, size_t *extraColumnsOnLeft, size_t *extraColumnsOnRight, size_t *extraRowsOnTop, size_t *extraRowsOnBottom) ;
	 */
	public void getExtendedPixels(int[] extraColumnsOnLeft, int[] extraColumnsOnRight, int[] extraRowsOnTop, int[] extraRowsOnBottom){
		throw new RuntimeException("Stub");
	}

	/**
	 * CVReturn CVPixelBufferFillExtendedPixels(CVPixelBufferRef pixelBuffer) ;
	 */
	public int fillExtendedPixels(){
		throw new RuntimeException("Stub");
	}
}
