package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CoreGraphics {

	/*
	 * Static methods
	 */

	/**
	 * CGImageAlphaInfo CGBitmapContextGetAlphaInfo(CGContextRef context) ;
	 */
	public static int CGBitmapContextGetAlphaInfo(CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageRef CGBitmapContextCreateImage(CGContextRef context) ;
	 */
	public static CGImage CGBitmapContextCreateImage(CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGContextRef CGPDFContextCreateWithURL(CFURLRef url, const CGRect *mediaBox, CFDictionaryRef auxiliaryInfo) ;
	 */
	public static CGContext CGPDFContextCreateWithURL(CFURL url, Reference<CGRect> mediaBox, CFDictionary auxiliaryInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPDFContextAddDestinationAtPoint(CGContextRef context, CFStringRef name, CGPoint point) ;
	 */
	public static void CGPDFContextAddDestinationAtPoint(CGContext context, String name, CGPoint point){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGBitmapContextGetBitsPerComponent(CGContextRef context) ;
	 */
	public static int CGBitmapContextGetBitsPerComponent(CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGBitmapContextGetBitsPerPixel(CGContextRef context) ;
	 */
	public static int CGBitmapContextGetBitsPerPixel(CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGContextRef CGBitmapContextCreateWithData(void *data, size_t width, size_t height, size_t bitsPerComponent, size_t bytesPerRow, CGColorSpaceRef space, CGBitmapInfo bitmapInfo, CGBitmapContextReleaseDataCallback releaseCallback, void *releaseInfo) ;
	 */
	public static CGContext CGBitmapContextCreateWithData(byte[] data, int width, int height, int bitsPerComponent, int bytesPerRow, CGColorSpace space, int bitmapInfo, Object releaseCallback, byte[] releaseInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPDFContextSetURLForRect(CGContextRef context, CFURLRef url, CGRect rect) ;
	 */
	public static void CGPDFContextSetURLForRect(CGContext context, CFURL url, CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPDFContextClose(CGContextRef context) ;
	 */
	public static void CGPDFContextClose(CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGContextRef CGBitmapContextCreate(void *data, size_t width, size_t height, size_t bitsPerComponent, size_t bytesPerRow, CGColorSpaceRef space, CGBitmapInfo bitmapInfo) ;
	 */
	public static CGContext CGBitmapContextCreate(byte[] data, int width, int height, int bitsPerComponent, int bytesPerRow, CGColorSpace space, int bitmapInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGBitmapContextGetHeight(CGContextRef context) ;
	 */
	public static int CGBitmapContextGetHeight(CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPDFContextSetDestinationForRect(CGContextRef context, CFStringRef name, CGRect rect) ;
	 */
	public static void CGPDFContextSetDestinationForRect(CGContext context, String name, CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * void *CGBitmapContextGetData(CGContextRef context) ;
	 */
	public static byte[] CGBitmapContextGetData(CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGBitmapContextGetColorSpace(CGContextRef context) ;
	 */
	public static CGColorSpace CGBitmapContextGetColorSpace(CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGContextRef CGPDFContextCreate(CGDataConsumerRef consumer, const CGRect *mediaBox, CFDictionaryRef auxiliaryInfo) ;
	 */
	public static CGContext CGPDFContextCreate(CGDataConsumer consumer, Reference<CGRect> mediaBox, CFDictionary auxiliaryInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPDFContextAddDocumentMetadata(CGContextRef context, CFDataRef metadata) ;
	 */
	public static void CGPDFContextAddDocumentMetadata(CGContext context, CFData metadata){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGBitmapContextGetWidth(CGContextRef context) ;
	 */
	public static int CGBitmapContextGetWidth(CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPDFContextBeginPage(CGContextRef context, CFDictionaryRef pageInfo) ;
	 */
	public static void CGPDFContextBeginPage(CGContext context, CFDictionary pageInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGBitmapContextGetBytesPerRow(CGContextRef context) ;
	 */
	public static int CGBitmapContextGetBytesPerRow(CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPDFContextEndPage(CGContextRef context) ;
	 */
	public static void CGPDFContextEndPage(CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGBitmapInfo CGBitmapContextGetBitmapInfo(CGContextRef context) ;
	 */
	public static int CGBitmapContextGetBitmapInfo(CGContext context){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CoreGraphics() {}
}
