package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGImage extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CGImageGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageRef CGImageMaskCreate(size_t width, size_t height, size_t bitsPerComponent, size_t bitsPerPixel, size_t bytesPerRow, CGDataProviderRef provider, const CGFloat decode[], bool shouldInterpolate) ;
	 */
	public static CGImage maskCreate(int width, int height, int bitsPerComponent, int bitsPerPixel, int bytesPerRow, CGDataProvider provider, float[] decode, boolean shouldInterpolate){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageRef CGImageCreateWithJPEGDataProvider(CGDataProviderRef source, const CGFloat decode[], bool shouldInterpolate, CGColorRenderingIntent intent) ;
	 */
	public static CGImage createWithJPEGDataProvider(CGDataProvider source, float[] decode, boolean shouldInterpolate, int intent){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageRef CGImageCreateWithPNGDataProvider(CGDataProviderRef source, const CGFloat decode[], bool shouldInterpolate, CGColorRenderingIntent intent) ;
	 */
	public static CGImage createWithPNGDataProvider(CGDataProvider source, float[] decode, boolean shouldInterpolate, int intent){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CGImageRef CGImageCreate(size_t width, size_t height, size_t bitsPerComponent, size_t bitsPerPixel, size_t bytesPerRow, CGColorSpaceRef space, CGBitmapInfo bitmapInfo, CGDataProviderRef provider, const CGFloat decode[], bool shouldInterpolate, CGColorRenderingIntent intent) ;
	 */
	public CGImage(int width, int height, int bitsPerComponent, int bitsPerPixel, int bytesPerRow, CGColorSpace space, int bitmapInfo, CGDataProvider provider, float[] decode, boolean shouldInterpolate, int intent) {}

	/** Default constructor */
	public CGImage() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGImageRef CGImageCreateCopy(CGImageRef image) ;
	 */
	public CGImage createCopy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageRef CGImageCreateWithImageInRect(CGImageRef image, CGRect rect) ;
	 */
	public CGImage createWithImageInRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageRef CGImageCreateWithMask(CGImageRef image, CGImageRef mask) ;
	 */
	public CGImage createWithMask(CGImage mask){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageRef CGImageCreateWithMaskingColors(CGImageRef image, const CGFloat components[]) ;
	 */
	public CGImage createWithMaskingColors(float[] components){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageRef CGImageCreateCopyWithColorSpace(CGImageRef image, CGColorSpaceRef space) ;
	 */
	public CGImage createCopyWithColorSpace(CGColorSpace space){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageRef CGImageRetain(CGImageRef image) ;
	 */
	public CGImage retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGImageRelease(CGImageRef image) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGImageIsMask(CGImageRef image) ;
	 */
	public boolean isMask(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGImageGetWidth(CGImageRef image) ;
	 */
	public int getWidth(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGImageGetHeight(CGImageRef image) ;
	 */
	public int getHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGImageGetBitsPerComponent(CGImageRef image) ;
	 */
	public int getBitsPerComponent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGImageGetBitsPerPixel(CGImageRef image) ;
	 */
	public int getBitsPerPixel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGImageGetBytesPerRow(CGImageRef image) ;
	 */
	public int getBytesPerRow(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGImageGetColorSpace(CGImageRef image) ;
	 */
	public CGColorSpace getColorSpace(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageAlphaInfo CGImageGetAlphaInfo(CGImageRef image) ;
	 */
	public int getAlphaInfo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGDataProviderRef CGImageGetDataProvider(CGImageRef image) ;
	 */
	public CGDataProvider getDataProvider(){
		throw new RuntimeException("Stub");
	}

	/**
	 * const CGFloat *CGImageGetDecode(CGImageRef image) ;
	 */
	public float[] getDecode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGImageGetShouldInterpolate(CGImageRef image) ;
	 */
	public boolean getShouldInterpolate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorRenderingIntent CGImageGetRenderingIntent(CGImageRef image) ;
	 */
	public int getRenderingIntent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGBitmapInfo CGImageGetBitmapInfo(CGImageRef image) ;
	 */
	public int getBitmapInfo(){
		throw new RuntimeException("Stub");
	}
}
