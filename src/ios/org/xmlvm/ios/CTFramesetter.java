package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CTFramesetter {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CTFramesetterGetTypeID( void ) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFramesetterRef CTFramesetterCreateWithAttributedString( CFAttributedStringRef string ) ;
	 */
	public static CTFramesetter createWithAttributedString(CFAttributedString string){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CTFramesetter() {}

	/*
	 * Instance methods
	 */

	/**
	 * CTFrameRef CTFramesetterCreateFrame( CTFramesetterRef framesetter, CFRange stringRange, CGPathRef path, CFDictionaryRef frameAttributes ) ;
	 */
	public CTFrame createFrame(CFRange stringRange, CGPath path, CFDictionary frameAttributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTTypesetterRef CTFramesetterGetTypesetter( CTFramesetterRef framesetter ) ;
	 */
	public CTTypesetter getTypesetter(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGSize CTFramesetterSuggestFrameSizeWithConstraints( CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange* fitRange ) ;
	 */
	public CGSize suggestFrameSizeWithConstraints(CFRange stringRange, CFDictionary frameAttributes, CGSize constraints, Reference<CFRange> fitRange){
		throw new RuntimeException("Stub");
	}
}
