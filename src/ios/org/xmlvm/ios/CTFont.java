package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CTFont {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CTFontGetTypeID( void ) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontRef CTFontCreateWithName( CFStringRef name, CGFloat size, const CGAffineTransform *matrix ) ;
	 */
	public static CTFont createWithName(String name, float size, Reference<CGAffineTransform> matrix){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontRef CTFontCreateWithFontDescriptor( CTFontDescriptorRef descriptor, CGFloat size, const CGAffineTransform *matrix ) ;
	 */
	public static CTFont createWithFontDescriptor(CTFontDescriptor descriptor, float size, Reference<CGAffineTransform> matrix){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontRef CTFontCreateWithNameAndOptions( CFStringRef name, CGFloat size, const CGAffineTransform *matrix, CTFontOptions options ) ;
	 */
	public static CTFont createWithNameAndOptions(String name, float size, Reference<CGAffineTransform> matrix, long options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontRef CTFontCreateWithFontDescriptorAndOptions( CTFontDescriptorRef descriptor, CGFloat size, const CGAffineTransform *matrix, CTFontOptions options ) ;
	 */
	public static CTFont createWithFontDescriptorAndOptions(CTFontDescriptor descriptor, float size, Reference<CGAffineTransform> matrix, long options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontRef CTFontCreateUIFontForLanguage( CTFontUIFontType uiType, CGFloat size, CFStringRef language ) ;
	 */
	public static CTFont createUIFontForLanguage(int uiType, float size, String language){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontRef CTFontCreateWithGraphicsFont( CGFontRef graphicsFont, CGFloat size, const CGAffineTransform *matrix, CTFontDescriptorRef attributes ) ;
	 */
	public static CTFont createWithGraphicsFont(CGFont graphicsFont, float size, Reference<CGAffineTransform> matrix, CTFontDescriptor attributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontRef CTFontCreateWithPlatformFont( ATSFontRef platformFont, CGFloat size, const CGAffineTransform *matrix, CTFontDescriptorRef attributes ) ;
	 */
	public static CTFont createWithPlatformFont(ATSFont platformFont, float size, Reference<CGAffineTransform> matrix, CTFontDescriptor attributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontRef CTFontCreateWithQuickdrawInstance( ConstStr255Param name, int16_t identifier, uint8_t style, CGFloat size ) ;
	 */
	public static CTFont createWithQuickdrawInstance(byte[] name, short identifier, byte style, float size){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontManagerCopyAvailablePostScriptNames( void ) ;
	 */
	public static CFArray managerCopyAvailablePostScriptNames(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontManagerCopyAvailableFontFamilyNames( void ) ;
	 */
	public static CFArray managerCopyAvailableFontFamilyNames(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontManagerCopyAvailableFontURLs( void ) ;
	 */
	public static CFArray managerCopyAvailableFontURLs(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFComparisonResult CTFontManagerCompareFontFamilyNames( const void * family1, const void * family2, void * context) ;
	 */
	public static long managerCompareFontFamilyNames(byte[] family1, byte[] family2, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontManagerCreateFontDescriptorsFromURL( CFURLRef fileURL ) ;
	 */
	public static CFArray managerCreateFontDescriptorsFromURL(CFURL fileURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CTFontManagerRegisterFontsForURL( CFURLRef fontURL, CTFontManagerScope scope, CFErrorRef * error ) ;
	 */
	public static boolean managerRegisterFontsForURL(CFURL fontURL, int scope, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CTFontManagerUnregisterFontsForURL( CFURLRef fontURL, CTFontManagerScope scope, CFErrorRef * error ) ;
	 */
	public static boolean managerUnregisterFontsForURL(CFURL fontURL, int scope, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CTFontManagerRegisterGraphicsFont( CGFontRef font, CFErrorRef * error ) ;
	 */
	public static boolean managerRegisterGraphicsFont(CGFont font, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CTFontManagerUnregisterGraphicsFont( CGFontRef font, CFErrorRef * error ) ;
	 */
	public static boolean managerUnregisterGraphicsFont(CGFont font, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CTFontManagerRegisterFontsForURLs( CFArrayRef fontURLs, CTFontManagerScope scope, CFArrayRef * errors ) ;
	 */
	public static boolean managerRegisterFontsForURLs(CFArray fontURLs, int scope, Reference<CFArray> errors){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CTFontManagerUnregisterFontsForURLs( CFArrayRef fontURLs, CTFontManagerScope scope, CFArrayRef * errors ) ;
	 */
	public static boolean managerUnregisterFontsForURLs(CFArray fontURLs, int scope, Reference<CFArray> errors){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTFontManagerEnableFontDescriptors( CFArrayRef descriptors, bool enable ) ;
	 */
	public static void managerEnableFontDescriptors(CFArray descriptors, boolean enable){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontManagerScope CTFontManagerGetScopeForURL( CFURLRef fontURL ) ;
	 */
	public static int managerGetScopeForURL(CFURL fontURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CTFontManagerIsSupportedFont( CFURLRef fontURL ) ;
	 */
	public static boolean managerIsSupportedFont(CFURL fontURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTFontManagerSetAutoActivationSetting( CFStringRef bundleIdentifier, CTFontManagerAutoActivationSetting setting ) ;
	 */
	public static void managerSetAutoActivationSetting(String bundleIdentifier, int setting){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontManagerAutoActivationSetting CTFontManagerGetAutoActivationSetting( CFStringRef bundleIdentifier ) ;
	 */
	public static int managerGetAutoActivationSetting(String bundleIdentifier){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CTFont() {}

	/*
	 * Instance methods
	 */

	/**
	 * CTFontRef CTFontCreateCopyWithAttributes( CTFontRef font, CGFloat size, const CGAffineTransform *matrix, CTFontDescriptorRef attributes ) ;
	 */
	public CTFont createCopyWithAttributes(float size, Reference<CGAffineTransform> matrix, CTFontDescriptor attributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontRef CTFontCreateCopyWithSymbolicTraits( CTFontRef font, CGFloat size, const CGAffineTransform *matrix, CTFontSymbolicTraits symTraitValue, CTFontSymbolicTraits symTraitMask ) ;
	 */
	public CTFont createCopyWithSymbolicTraits(float size, Reference<CGAffineTransform> matrix, int symTraitValue, int symTraitMask){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontRef CTFontCreateCopyWithFamily( CTFontRef font, CGFloat size, const CGAffineTransform *matrix, CFStringRef family ) ;
	 */
	public CTFont createCopyWithFamily(float size, Reference<CGAffineTransform> matrix, String family){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontRef CTFontCreateForString( CTFontRef currentFont, CFStringRef string, CFRange range ) ;
	 */
	public CTFont createForString(String string, CFRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontDescriptorRef CTFontCopyFontDescriptor( CTFontRef font ) ;
	 */
	public CTFontDescriptor copyFontDescriptor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CTFontCopyAttribute( CTFontRef font, CFStringRef attribute ) ;
	 */
	public byte[] copyAttribute(String attribute){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CTFontGetSize( CTFontRef font ) ;
	 */
	public float getSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CTFontGetMatrix( CTFontRef font ) ;
	 */
	public CGAffineTransform getMatrix(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CTFontSymbolicTraits CTFontGetSymbolicTraits( CTFontRef font ) ;
	 */
	public int getSymbolicTraits(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CTFontCopyTraits( CTFontRef font ) ;
	 */
	public CFDictionary copyTraits(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CTFontCopyPostScriptName( CTFontRef font ) ;
	 */
	public String copyPostScriptName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CTFontCopyFamilyName( CTFontRef font ) ;
	 */
	public String copyFamilyName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CTFontCopyFullName( CTFontRef font ) ;
	 */
	public String copyFullName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CTFontCopyDisplayName( CTFontRef font ) ;
	 */
	public String copyDisplayName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CTFontCopyName( CTFontRef font, CFStringRef nameKey ) ;
	 */
	public String copyName(String nameKey){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CTFontCopyLocalizedName( CTFontRef font, CFStringRef nameKey, CFStringRef *language ) ;
	 */
	public String copyLocalizedName(String nameKey, String language){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFCharacterSetRef CTFontCopyCharacterSet( CTFontRef font ) ;
	 */
	public CFCharacterSet copyCharacterSet(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringEncoding CTFontGetStringEncoding( CTFontRef font ) ;
	 */
	public int getStringEncoding(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontCopySupportedLanguages( CTFontRef font ) ;
	 */
	public CFArray copySupportedLanguages(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CTFontGetGlyphsForCharacters( CTFontRef font, const UniChar characters[], CGGlyph glyphs[], CFIndex count ) ;
	 */
	public boolean getGlyphsForCharacters(short[] characters, short[] glyphs, long count){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CTFontGetAscent( CTFontRef font ) ;
	 */
	public float getAscent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CTFontGetDescent( CTFontRef font ) ;
	 */
	public float getDescent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CTFontGetLeading( CTFontRef font ) ;
	 */
	public float getLeading(){
		throw new RuntimeException("Stub");
	}

	/**
	 * unsigned CTFontGetUnitsPerEm( CTFontRef font ) ;
	 */
	public int getUnitsPerEm(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CTFontGetGlyphCount( CTFontRef font ) ;
	 */
	public long getGlyphCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CTFontGetBoundingBox( CTFontRef font ) ;
	 */
	public CGRect getBoundingBox(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CTFontGetUnderlinePosition( CTFontRef font ) ;
	 */
	public float getUnderlinePosition(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CTFontGetUnderlineThickness( CTFontRef font ) ;
	 */
	public float getUnderlineThickness(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CTFontGetSlantAngle( CTFontRef font ) ;
	 */
	public float getSlantAngle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CTFontGetCapHeight( CTFontRef font ) ;
	 */
	public float getCapHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFloat CTFontGetXHeight( CTFontRef font ) ;
	 */
	public float getXHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGGlyph CTFontGetGlyphWithName( CTFontRef font, CFStringRef glyphName ) ;
	 */
	public short getGlyphWithName(String glyphName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CTFontGetBoundingRectsForGlyphs( CTFontRef font, CTFontOrientation orientation, const CGGlyph glyphs[], CGRect boundingRects[], CFIndex count ) ;
	 */
	public CGRect getBoundingRectsForGlyphs(int orientation, short[] glyphs, Reference<CGRect> boundingRects, long count){
		throw new RuntimeException("Stub");
	}

	/**
	 * double CTFontGetAdvancesForGlyphs( CTFontRef font, CTFontOrientation orientation, const CGGlyph glyphs[], CGSize advances[], CFIndex count ) ;
	 */
	public double getAdvancesForGlyphs(int orientation, short[] glyphs, Reference<CGSize> advances, long count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTFontGetVerticalTranslationsForGlyphs( CTFontRef font, const CGGlyph glyphs[], CGSize translations[], CFIndex count ) ;
	 */
	public void getVerticalTranslationsForGlyphs(short[] glyphs, Reference<CGSize> translations, long count){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPathRef CTFontCreatePathForGlyph( CTFontRef font, CGGlyph glyph, const CGAffineTransform * transform ) ;
	 */
	public CGPath createPathForGlyph(short glyph, Reference<CGAffineTransform> transform){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontCopyVariationAxes( CTFontRef font ) ;
	 */
	public CFArray copyVariationAxes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CTFontCopyVariation( CTFontRef font ) ;
	 */
	public CFDictionary copyVariation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontCopyFeatures( CTFontRef font ) ;
	 */
	public CFArray copyFeatures(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontCopyFeatureSettings( CTFontRef font ) ;
	 */
	public CFArray copyFeatureSettings(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGFontRef CTFontCopyGraphicsFont( CTFontRef font, CTFontDescriptorRef *attributes ) ;
	 */
	public CGFont copyGraphicsFont(Reference<CTFontDescriptor> attributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * ATSFontRef CTFontGetPlatformFont( CTFontRef font, CTFontDescriptorRef *attributes ) ;
	 */
	public ATSFont getPlatformFont(Reference<CTFontDescriptor> attributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CTFontCopyAvailableTables( CTFontRef font, CTFontTableOptions options ) ;
	 */
	public CFArray copyAvailableTables(int options){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CTFontCopyTable( CTFontRef font, CTFontTableTag table, CTFontTableOptions options ) ;
	 */
	public CFData copyTable(int table, int options){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CTFontDrawGlyphs( CTFontRef font, const CGGlyph glyphs[], const CGPoint positions[], size_t count, CGContextRef context ) ;
	 */
	public void drawGlyphs(short[] glyphs, Reference<CGPoint> positions, int count, CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CTFontGetLigatureCaretPositions( CTFontRef font, CGGlyph glyph, CGFloat positions[], CFIndex maxPositions ) ;
	 */
	public long getLigatureCaretPositions(short glyph, float[] positions, long maxPositions){
		throw new RuntimeException("Stub");
	}
}
