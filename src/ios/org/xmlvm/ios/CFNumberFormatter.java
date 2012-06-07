package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFNumberFormatter {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFNumberFormatterGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFNumberFormatterCreateStringWithNumber(CFAllocatorRef allocator, CFNumberFormatterRef formatter, CFNumberRef number) ;
	 */
	public static String createStringWithNumber(CFAllocator allocator, CFNumberFormatter formatter, NSNumber number){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFNumberFormatterCreateStringWithValue(CFAllocatorRef allocator, CFNumberFormatterRef formatter, CFNumberType numberType, const void *valuePtr) ;
	 */
	public static String createStringWithValue(CFAllocator allocator, CFNumberFormatter formatter, long numberType, byte[] valuePtr){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFNumberRef CFNumberFormatterCreateNumberFromString(CFAllocatorRef allocator, CFNumberFormatterRef formatter, CFStringRef string, CFRange *rangep, CFOptionFlags options) ;
	 */
	public static NSNumber createNumberFromString(CFAllocator allocator, CFNumberFormatter formatter, String string, Reference<CFRange> rangep, long options){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFNumberFormatterGetDecimalInfoForCurrencyCode(CFStringRef currencyCode, int32_t *defaultFractionDigits, double *roundingIncrement) ;
	 */
	public static byte getDecimalInfoForCurrencyCode(String currencyCode, int[] defaultFractionDigits, double[] roundingIncrement){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFNumberFormatterRef CFNumberFormatterCreate(CFAllocatorRef allocator, CFLocaleRef locale, CFNumberFormatterStyle style) ;
	 */
	public CFNumberFormatter(CFAllocator allocator, CFLocale locale, long style) {}

	/** Default constructor */
	public CFNumberFormatter() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFLocaleRef CFNumberFormatterGetLocale(CFNumberFormatterRef formatter) ;
	 */
	public CFLocale getLocale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFNumberFormatterStyle CFNumberFormatterGetStyle(CFNumberFormatterRef formatter) ;
	 */
	public long getStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFNumberFormatterGetFormat(CFNumberFormatterRef formatter) ;
	 */
	public String getFormat(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNumberFormatterSetFormat(CFNumberFormatterRef formatter, CFStringRef formatString) ;
	 */
	public void setFormat(String formatString){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFNumberFormatterGetValueFromString(CFNumberFormatterRef formatter, CFStringRef string, CFRange *rangep, CFNumberType numberType, void *valuePtr) ;
	 */
	public byte getValueFromString(String string, Reference<CFRange> rangep, long numberType, byte[] valuePtr){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNumberFormatterSetProperty(CFNumberFormatterRef formatter, CFStringRef key, CFTypeRef value) ;
	 */
	public void setProperty(String key, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CFNumberFormatterCopyProperty(CFNumberFormatterRef formatter, CFStringRef key) ;
	 */
	public byte[] copyProperty(String key){
		throw new RuntimeException("Stub");
	}
}
