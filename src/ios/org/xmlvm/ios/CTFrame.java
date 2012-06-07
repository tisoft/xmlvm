package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CTFrame {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CTFrameGetTypeID( void ) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CTFrame() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFRange CTFrameGetStringRange( CTFrameRef frame ) ;
	 */
	public CFRange getStringRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRange CTFrameGetVisibleStringRange( CTFrameRef frame ) ;
	 */
	public CFRange getVisibleStringRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPathRef CTFrameGetPath( CTFrameRef frame ) ;
	 */
	public CGPath getPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CTFrameGetFrameAttributes( CTFrameRef frame ) ;
	 */
	public CFDictionary getFrameAttributes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFrameGetLines( CTFrameRef frame ) ;
	 */
	public CFArray getLines(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTFrameGetLineOrigins( CTFrameRef frame, CFRange range, CGPoint origins[] ) ;
	 */
	public void getLineOrigins(CFRange range, Reference<CGPoint> origins){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTFrameDraw( CTFrameRef frame, CGContextRef context ) ;
	 */
	public void draw(CGContext context){
		throw new RuntimeException("Stub");
	}
}
