package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CTFontCollection {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CTFontCollectionGetTypeID( void ) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontCollectionRef CTFontCollectionCreateFromAvailableFonts( CFDictionaryRef options ) ;
	 */
	public static CTFontCollection createFromAvailableFonts(CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontCollectionRef CTFontCollectionCreateWithFontDescriptors( CFArrayRef queryDescriptors, CFDictionaryRef options ) ;
	 */
	public static CTFontCollection createWithFontDescriptors(CFArray queryDescriptors, CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTFontCollectionSetQueryDescriptors( CTMutableFontCollectionRef collection, CFArrayRef descriptors ) ;
	 */
	public static void setQueryDescriptors(CTFontCollection collection, CFArray descriptors){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTFontCollectionSetExclusionDescriptors( CTMutableFontCollectionRef collection, CFArrayRef descriptors ) ;
	 */
	public static void setExclusionDescriptors(CTFontCollection collection, CFArray descriptors){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CTFontCollection() {}

	/*
	 * Instance methods
	 */

	/**
	 * CTFontCollectionRef CTFontCollectionCreateCopyWithFontDescriptors( CTFontCollectionRef original, CFArrayRef queryDescriptors, CFDictionaryRef options ) ;
	 */
	public CTFontCollection createCopyWithFontDescriptors(CFArray queryDescriptors, CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTMutableFontCollectionRef CTFontCollectionCreateMutableCopy( CTFontCollectionRef original ) ;
	 */
	public CTFontCollection createMutableCopy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontCollectionCopyQueryDescriptors( CTFontCollectionRef collection ) ;
	 */
	public CFArray copyQueryDescriptors(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontCollectionCopyExclusionDescriptors( CTFontCollectionRef collection ) ;
	 */
	public CFArray copyExclusionDescriptors(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontCollectionCreateMatchingFontDescriptors( CTFontCollectionRef collection ) ;
	 */
	public CFArray createMatchingFontDescriptors(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontCollectionCreateMatchingFontDescriptorsSortedWithCallback( CTFontCollectionRef collection, CTFontCollectionSortDescriptorsCallback sortCallback, void *refCon ) ;
	 */
	public CFArray createMatchingFontDescriptorsSortedWithCallback(Object sortCallback, byte[] refCon){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontCollectionCreateMatchingFontDescriptorsWithOptions( CTFontCollectionRef collection, CFDictionaryRef options ) ;
	 */
	public CFArray createMatchingFontDescriptorsWithOptions(CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontCollectionCreateMatchingFontDescriptorsForFamily( CTFontCollectionRef collection, CFStringRef familyName, CFDictionaryRef options ) ;
	 */
	public CFArray createMatchingFontDescriptorsForFamily(String familyName, CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontCollectionCopyFontAttribute( CTFontCollectionRef collection, CFStringRef attributeName, CTFontCollectionCopyOptions options ) ;
	 */
	public CFArray copyFontAttribute(String attributeName, int options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontCollectionCopyFontAttributes( CTFontCollectionRef collection, CFSetRef attributeNames, CTFontCollectionCopyOptions options ) ;
	 */
	public CFArray copyFontAttributes(CFSet attributeNames, int options){
		throw new RuntimeException("Stub");
	}
}
