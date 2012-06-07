package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CTLine {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CTLineGetTypeID( void ) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTLineRef CTLineCreateWithAttributedString( CFAttributedStringRef string ) ;
	 */
	public static CTLine createWithAttributedString(CFAttributedString string){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CTLine() {}

	/*
	 * Instance methods
	 */

	/**
	 * CTLineRef CTLineCreateTruncatedLine( CTLineRef line, double width, CTLineTruncationType truncationType, CTLineRef truncationToken ) ;
	 */
	public CTLine createTruncatedLine(double width, int truncationType, CTLine truncationToken){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTLineRef CTLineCreateJustifiedLine( CTLineRef line, CGFloat justificationFactor, double justificationWidth ) ;
	 */
	public CTLine createJustifiedLine(float justificationFactor, double justificationWidth){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CTLineGetGlyphCount( CTLineRef line ) ;
	 */
	public long getGlyphCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTLineGetGlyphRuns( CTLineRef line ) ;
	 */
	public CFArray getGlyphRuns(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRange CTLineGetStringRange( CTLineRef line ) ;
	 */
	public CFRange getStringRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * double CTLineGetPenOffsetForFlush( CTLineRef line, CGFloat flushFactor, double flushWidth ) ;
	 */
	public double getPenOffsetForFlush(float flushFactor, double flushWidth){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTLineDraw( CTLineRef line, CGContextRef context ) ;
	 */
	public void draw(CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CTLineGetImageBounds( CTLineRef line, CGContextRef context ) ;
	 */
	public CGRect getImageBounds(CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * double CTLineGetTypographicBounds( CTLineRef line, CGFloat* ascent, CGFloat* descent, CGFloat* leading ) ;
	 */
	public double getTypographicBounds(float[] ascent, float[] descent, float[] leading){
		throw new RuntimeException("Stub");
	}

	/**
	 * double CTLineGetTrailingWhitespaceWidth( CTLineRef line ) ;
	 */
	public double getTrailingWhitespaceWidth(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CTLineGetStringIndexForPosition( CTLineRef line, CGPoint position ) ;
	 */
	public long getStringIndexForPosition(CGPoint position){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CTLineGetOffsetForStringIndex( CTLineRef line, CFIndex charIndex, CGFloat* secondaryOffset ) ;
	 */
	public float getOffsetForStringIndex(long charIndex, float[] secondaryOffset){
		throw new RuntimeException("Stub");
	}
}
