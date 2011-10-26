package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGImageSource {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CGImageSourceGetTypeID (void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CGImageSourceCopyTypeIdentifiers(void) ;
	 */
	public static CFArray copyTypeIdentifiers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageSourceRef CGImageSourceCreateWithDataProvider(CGDataProviderRef provider, CFDictionaryRef options) ;
	 */
	public static CGImageSource createWithDataProvider(CGDataProvider provider, CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageSourceRef CGImageSourceCreateWithData(CFDataRef data, CFDictionaryRef options) ;
	 */
	public static CGImageSource createWithData(CFData data, CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageSourceRef CGImageSourceCreateWithURL(CFURLRef url, CFDictionaryRef options) ;
	 */
	public static CGImageSource createWithURL(CFURL url, CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageSourceRef CGImageSourceCreateIncremental(CFDictionaryRef options) ;
	 */
	public static CGImageSource createIncremental(CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CGImageSource() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFStringRef CGImageSourceGetType(CGImageSourceRef isrc) ;
	 */
	public String getType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGImageSourceGetCount(CGImageSourceRef isrc) ;
	 */
	public int getCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CGImageSourceCopyProperties(CGImageSourceRef isrc, CFDictionaryRef options) ;
	 */
	public CFDictionary copyProperties(CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CGImageSourceCopyPropertiesAtIndex(CGImageSourceRef isrc, size_t index, CFDictionaryRef options) ;
	 */
	public CFDictionary copyPropertiesAtIndex(int index, CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageRef CGImageSourceCreateImageAtIndex(CGImageSourceRef isrc, size_t index, CFDictionaryRef options) ;
	 */
	public CGImage createImageAtIndex(int index, CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageRef CGImageSourceCreateThumbnailAtIndex(CGImageSourceRef isrc, size_t index, CFDictionaryRef options) ;
	 */
	public CGImage createThumbnailAtIndex(int index, CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGImageSourceUpdateData(CGImageSourceRef isrc, CFDataRef data, bool final) ;
	 */
	public void updateData(CFData data, boolean finalValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGImageSourceUpdateDataProvider(CGImageSourceRef isrc, CGDataProviderRef provider, bool final) ;
	 */
	public void updateDataProvider(CGDataProvider provider, boolean finalValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageSourceStatus CGImageSourceGetStatus(CGImageSourceRef isrc) ;
	 */
	public int getStatus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageSourceStatus CGImageSourceGetStatusAtIndex(CGImageSourceRef isrc, size_t index) ;
	 */
	public int getStatusAtIndex(int index){
		throw new RuntimeException("Stub");
	}
}
