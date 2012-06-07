package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGFont extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CGFontGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFontRef CGFontCreateWithDataProvider(CGDataProviderRef provider) ;
	 */
	public static CGFont createWithDataProvider(CGDataProvider provider){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFontRef CGFontCreateWithFontName(CFStringRef name) ;
	 */
	public static CGFont createWithFontName(String name){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CGFont() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGFontRef CGFontCreateCopyWithVariations(CGFontRef font, CFDictionaryRef variations) ;
	 */
	public CGFont createCopyWithVariations(CFDictionary variations){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFontRef CGFontRetain(CGFontRef font) ;
	 */
	public CGFont retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGFontRelease(CGFontRef font) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGFontGetNumberOfGlyphs(CGFontRef font) ;
	 */
	public int getNumberOfGlyphs(){
		throw new RuntimeException("Stub");
	}

	/**
	 * int CGFontGetUnitsPerEm(CGFontRef font) ;
	 */
	public int getUnitsPerEm(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CGFontCopyPostScriptName(CGFontRef font) ;
	 */
	public String copyPostScriptName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CGFontCopyFullName(CGFontRef font) ;
	 */
	public String copyFullName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * int CGFontGetAscent(CGFontRef font) ;
	 */
	public int getAscent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * int CGFontGetDescent(CGFontRef font) ;
	 */
	public int getDescent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * int CGFontGetLeading(CGFontRef font) ;
	 */
	public int getLeading(){
		throw new RuntimeException("Stub");
	}

	/**
	 * int CGFontGetCapHeight(CGFontRef font) ;
	 */
	public int getCapHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * int CGFontGetXHeight(CGFontRef font) ;
	 */
	public int getXHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGFontGetFontBBox(CGFontRef font) ;
	 */
	public CGRect getFontBBox(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CGFontGetItalicAngle(CGFontRef font) ;
	 */
	public float getItalicAngle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CGFontGetStemV(CGFontRef font) ;
	 */
	public float getStemV(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CGFontCopyVariationAxes(CGFontRef font) ;
	 */
	public CFArray copyVariationAxes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CGFontCopyVariations(CGFontRef font) ;
	 */
	public CFDictionary copyVariations(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGFontGetGlyphAdvances(CGFontRef font, const CGGlyph glyphs[], size_t count, int advances[]) ;
	 */
	public boolean getGlyphAdvances(short[] glyphs, int count, int[] advances){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGFontGetGlyphBBoxes(CGFontRef font, const CGGlyph glyphs[], size_t count, CGRect bboxes[]) ;
	 */
	public boolean getGlyphBBoxes(short[] glyphs, int count, Reference<CGRect> bboxes){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGGlyph CGFontGetGlyphWithGlyphName(CGFontRef font, CFStringRef name) ;
	 */
	public short getGlyphWithGlyphName(String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CGFontCopyGlyphNameForGlyph(CGFontRef font, CGGlyph glyph) ;
	 */
	public String copyGlyphNameForGlyph(short glyph){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGFontCanCreatePostScriptSubset(CGFontRef font, CGFontPostScriptFormat format) ;
	 */
	public boolean canCreatePostScriptSubset(int format){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CGFontCreatePostScriptSubset(CGFontRef font, CFStringRef subsetName, CGFontPostScriptFormat format, const CGGlyph glyphs[], size_t count, const CGGlyph encoding[256]) ;
	 */
	public CFData createPostScriptSubset(String subsetName, int format, short[] glyphs, int count, short[] encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CGFontCreatePostScriptEncoding(CGFontRef font, const CGGlyph encoding[256]) ;
	 */
	public CFData createPostScriptEncoding(short[] encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CGFontCopyTableTags(CGFontRef font) ;
	 */
	public CFArray copyTableTags(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CGFontCopyTableForTag(CGFontRef font, uint32_t tag) ;
	 */
	public CFData copyTableForTag(int tag){
		throw new RuntimeException("Stub");
	}
}
