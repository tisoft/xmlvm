package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CTRun {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CTRunGetTypeID( void ) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CTRun() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFIndex CTRunGetGlyphCount( CTRunRef run ) ;
	 */
	public long getGlyphCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CTRunGetAttributes( CTRunRef run ) ;
	 */
	public CFDictionary getAttributes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTRunStatus CTRunGetStatus( CTRunRef run ) ;
	 */
	public int getStatus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * const CGGlyph* CTRunGetGlyphsPtr( CTRunRef run ) ;
	 */
	public short[] getGlyphsPtr(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTRunGetGlyphs( CTRunRef run, CFRange range, CGGlyph buffer[] ) ;
	 */
	public void getGlyphs(CFRange range, short[] buffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * const CGPoint* CTRunGetPositionsPtr( CTRunRef run ) ;
	 */
	public Reference<CGPoint> getPositionsPtr(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTRunGetPositions( CTRunRef run, CFRange range, CGPoint buffer[] ) ;
	 */
	public void getPositions(CFRange range, Reference<CGPoint> buffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * const CGSize* CTRunGetAdvancesPtr( CTRunRef run ) ;
	 */
	public Reference<CGSize> getAdvancesPtr(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTRunGetAdvances( CTRunRef run, CFRange range, CGSize buffer[] ) ;
	 */
	public void getAdvances(CFRange range, Reference<CGSize> buffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * const CFIndex* CTRunGetStringIndicesPtr( CTRunRef run ) ;
	 */
	public long[] getStringIndicesPtr(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTRunGetStringIndices( CTRunRef run, CFRange range, CFIndex buffer[] ) ;
	 */
	public void getStringIndices(CFRange range, long[] buffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRange CTRunGetStringRange( CTRunRef run ) ;
	 */
	public CFRange getStringRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * double CTRunGetTypographicBounds( CTRunRef run, CFRange range, CGFloat* ascent, CGFloat* descent, CGFloat* leading ) ;
	 */
	public double getTypographicBounds(CFRange range, float[] ascent, float[] descent, float[] leading){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CTRunGetImageBounds( CTRunRef run, CGContextRef context, CFRange range ) ;
	 */
	public CGRect getImageBounds(CGContext context, CFRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CTRunGetTextMatrix( CTRunRef run ) ;
	 */
	public CGAffineTransform getTextMatrix(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTRunDraw( CTRunRef run, CGContextRef context, CFRange range ) ;
	 */
	public void draw(CGContext context, CFRange range){
		throw new RuntimeException("Stub");
	}
}
