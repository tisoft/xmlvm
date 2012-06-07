package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CTGlyphInfo {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CTGlyphInfoGetTypeID( void ) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTGlyphInfoRef CTGlyphInfoCreateWithGlyphName( CFStringRef glyphName, CTFontRef font, CFStringRef baseString ) ;
	 */
	public static CTGlyphInfo createWithGlyphName(String glyphName, CTFont font, String baseString){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTGlyphInfoRef CTGlyphInfoCreateWithGlyph( CGGlyph glyph, CTFontRef font, CFStringRef baseString ) ;
	 */
	public static CTGlyphInfo createWithGlyph(short glyph, CTFont font, String baseString){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTGlyphInfoRef CTGlyphInfoCreateWithCharacterIdentifier( CGFontIndex cid, CTCharacterCollection collection, CFStringRef baseString ) ;
	 */
	public static CTGlyphInfo createWithCharacterIdentifier(short cid, short collection, String baseString){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CTGlyphInfo() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFStringRef CTGlyphInfoGetGlyphName( CTGlyphInfoRef glyphInfo ) ;
	 */
	public String getGlyphName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFontIndex CTGlyphInfoGetCharacterIdentifier( CTGlyphInfoRef glyphInfo ) ;
	 */
	public short getCharacterIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTCharacterCollection CTGlyphInfoGetCharacterCollection( CTGlyphInfoRef glyphInfo ) ;
	 */
	public short getCharacterCollection(){
		throw new RuntimeException("Stub");
	}
}
