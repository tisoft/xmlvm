package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CTFontDescriptor {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CTFontDescriptorGetTypeID( void ) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontDescriptorRef CTFontDescriptorCreateWithNameAndSize( CFStringRef name, CGFloat size ) ;
	 */
	public static CTFontDescriptor createWithNameAndSize(String name, float size){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontDescriptorRef CTFontDescriptorCreateWithAttributes( CFDictionaryRef attributes ) ;
	 */
	public static CTFontDescriptor createWithAttributes(CFDictionary attributes){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CTFontDescriptor() {}

	/*
	 * Instance methods
	 */

	/**
	 * CTFontDescriptorRef CTFontDescriptorCreateCopyWithAttributes( CTFontDescriptorRef original, CFDictionaryRef attributes ) ;
	 */
	public CTFontDescriptor createCopyWithAttributes(CFDictionary attributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontDescriptorRef CTFontDescriptorCreateCopyWithVariation( CTFontDescriptorRef original, CFNumberRef variationIdentifier, CGFloat variationValue ) ;
	 */
	public CTFontDescriptor createCopyWithVariation(NSNumber variationIdentifier, float variationValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontDescriptorRef CTFontDescriptorCreateCopyWithFeature( CTFontDescriptorRef original, CFNumberRef featureTypeIdentifier, CFNumberRef featureSelectorIdentifier ) ;
	 */
	public CTFontDescriptor createCopyWithFeature(NSNumber featureTypeIdentifier, NSNumber featureSelectorIdentifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontDescriptorCreateMatchingFontDescriptors( CTFontDescriptorRef descriptor, CFSetRef mandatoryAttributes ) ;
	 */
	public CFArray createMatchingFontDescriptors(CFSet mandatoryAttributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontDescriptorRef CTFontDescriptorCreateMatchingFontDescriptor( CTFontDescriptorRef descriptor, CFSetRef mandatoryAttributes ) ;
	 */
	public CTFontDescriptor createMatchingFontDescriptor(CFSet mandatoryAttributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CTFontDescriptorCopyAttributes( CTFontDescriptorRef descriptor ) ;
	 */
	public CFDictionary copyAttributes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CTFontDescriptorCopyAttribute( CTFontDescriptorRef descriptor, CFStringRef attribute ) ;
	 */
	public byte[] copyAttribute(String attribute){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CTFontDescriptorCopyLocalizedAttribute( CTFontDescriptorRef descriptor, CFStringRef attribute, CFStringRef *language ) ;
	 */
	public byte[] copyLocalizedAttribute(String attribute, String language){
		throw new RuntimeException("Stub");
	}
}
