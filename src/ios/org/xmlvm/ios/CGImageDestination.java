package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGImageDestination {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CGImageDestinationGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CGImageDestinationCopyTypeIdentifiers(void) ;
	 */
	public static CFArray copyTypeIdentifiers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageDestinationRef CGImageDestinationCreateWithDataConsumer(CGDataConsumerRef consumer, CFStringRef type, size_t count, CFDictionaryRef options) ;
	 */
	public static CGImageDestination createWithDataConsumer(CGDataConsumer consumer, String type, int count, CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageDestinationRef CGImageDestinationCreateWithData(CFMutableDataRef data, CFStringRef type, size_t count, CFDictionaryRef options) ;
	 */
	public static CGImageDestination createWithData(CFData data, String type, int count, CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGImageDestinationRef CGImageDestinationCreateWithURL(CFURLRef url, CFStringRef type, size_t count, CFDictionaryRef options) ;
	 */
	public static CGImageDestination createWithURL(CFURL url, String type, int count, CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CGImageDestination() {}

	/*
	 * Instance methods
	 */

	/**
	 * void CGImageDestinationSetProperties(CGImageDestinationRef idst, CFDictionaryRef properties) ;
	 */
	public void setProperties(CFDictionary properties){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGImageDestinationAddImage(CGImageDestinationRef idst, CGImageRef image, CFDictionaryRef properties) ;
	 */
	public void addImage(CGImage image, CFDictionary properties){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGImageDestinationAddImageFromSource(CGImageDestinationRef idst, CGImageSourceRef isrc, size_t index, CFDictionaryRef properties) ;
	 */
	public void addImageFromSource(CGImageSource isrc, int index, CFDictionary properties){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGImageDestinationFinalize(CGImageDestinationRef idst) ;
	 */
	public boolean finalizeCGImage(){
		throw new RuntimeException("Stub");
	}
}
