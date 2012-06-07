package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CTTypesetter {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CTTypesetterGetTypeID( void ) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTTypesetterRef CTTypesetterCreateWithAttributedString( CFAttributedStringRef string ) ;
	 */
	public static CTTypesetter createWithAttributedString(CFAttributedString string){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTTypesetterRef CTTypesetterCreateWithAttributedStringAndOptions( CFAttributedStringRef string, CFDictionaryRef options ) ;
	 */
	public static CTTypesetter createWithAttributedStringAndOptions(CFAttributedString string, CFDictionary options){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CTTypesetter() {}

	/*
	 * Instance methods
	 */

	/**
	 * CTLineRef CTTypesetterCreateLineWithOffset( CTTypesetterRef typesetter, CFRange stringRange, double offset ) ;
	 */
	public CTLine createLineWithOffset(CFRange stringRange, double offset){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTLineRef CTTypesetterCreateLine( CTTypesetterRef typesetter, CFRange stringRange ) ;
	 */
	public CTLine createLine(CFRange stringRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CTTypesetterSuggestLineBreakWithOffset( CTTypesetterRef typesetter, CFIndex startIndex, double width, double offset ) ;
	 */
	public long suggestLineBreakWithOffset(long startIndex, double width, double offset){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CTTypesetterSuggestLineBreak( CTTypesetterRef typesetter, CFIndex startIndex, double width ) ;
	 */
	public long suggestLineBreak(long startIndex, double width){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CTTypesetterSuggestClusterBreakWithOffset( CTTypesetterRef typesetter, CFIndex startIndex, double width, double offset ) ;
	 */
	public long suggestClusterBreakWithOffset(long startIndex, double width, double offset){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CTTypesetterSuggestClusterBreak( CTTypesetterRef typesetter, CFIndex startIndex, double width ) ;
	 */
	public long suggestClusterBreak(long startIndex, double width){
		throw new RuntimeException("Stub");
	}
}
