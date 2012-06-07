package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGColorSpace extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CGColorSpaceRef CGColorSpaceCreateDeviceGray(void) ;
	 */
	public static CGColorSpace createDeviceGray(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGColorSpaceCreateDeviceRGB(void) ;
	 */
	public static CGColorSpace createDeviceRGB(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGColorSpaceCreateDeviceCMYK(void) ;
	 */
	public static CGColorSpace createDeviceCMYK(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGColorSpaceCreateCalibratedGray(const CGFloat whitePoint[3], const CGFloat blackPoint[3], CGFloat gamma) ;
	 */
	public static CGColorSpace createCalibratedGray(float[] whitePoint, float[] blackPoint, float gamma){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGColorSpaceCreateCalibratedRGB(const CGFloat whitePoint[3], const CGFloat blackPoint[3], const CGFloat gamma[3], const CGFloat matrix[9]) ;
	 */
	public static CGColorSpace createCalibratedRGB(float[] whitePoint, float[] blackPoint, float[] gamma, float[] matrix){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGColorSpaceCreateLab(const CGFloat whitePoint[3], const CGFloat blackPoint[3], const CGFloat range[4]) ;
	 */
	public static CGColorSpace createLab(float[] whitePoint, float[] blackPoint, float[] range){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGColorSpaceCreateWithICCProfile(CFDataRef data) ;
	 */
	public static CGColorSpace createWithICCProfile(CFData data){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGColorSpaceCreateICCBased(size_t nComponents, const CGFloat *range, CGDataProviderRef profile, CGColorSpaceRef alternate) ;
	 */
	public static CGColorSpace createICCBased(int nComponents, float[] range, CGDataProvider profile, CGColorSpace alternate){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGColorSpaceCreateWithName(CFStringRef name) ;
	 */
	public static CGColorSpace createWithName(String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CGColorSpaceGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CGColorSpace() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGColorSpaceRef CGColorSpaceCreateIndexed(CGColorSpaceRef baseSpace, size_t lastIndex, const unsigned char *colorTable) ;
	 */
	public CGColorSpace createIndexed(int lastIndex, byte[] colorTable){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGColorSpaceCreatePattern(CGColorSpaceRef baseSpace) ;
	 */
	public CGColorSpace createPattern(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGColorSpaceRetain(CGColorSpaceRef space) ;
	 */
	public CGColorSpace retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGColorSpaceRelease(CGColorSpaceRef space) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGColorSpaceGetNumberOfComponents(CGColorSpaceRef space) ;
	 */
	public int getNumberOfComponents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceModel CGColorSpaceGetModel(CGColorSpaceRef space) ;
	 */
	public int getModel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CGColorSpaceGetBaseColorSpace(CGColorSpaceRef space) ;
	 */
	public CGColorSpace getBaseColorSpace(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGColorSpaceGetColorTableCount(CGColorSpaceRef space) ;
	 */
	public int getColorTableCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGColorSpaceGetColorTable(CGColorSpaceRef space, uint8_t *table) ;
	 */
	public void getColorTable(byte[] table){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CGColorSpaceCopyICCProfile(CGColorSpaceRef space) ;
	 */
	public CFData copyICCProfile(){
		throw new RuntimeException("Stub");
	}
}
