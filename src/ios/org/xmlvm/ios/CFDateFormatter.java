package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFDateFormatter {

	/*
	 * Static methods
	 */

	/**
	 * CFStringRef CFDateFormatterCreateDateFormatFromTemplate(CFAllocatorRef allocator, CFStringRef tmplate, CFOptionFlags options, CFLocaleRef locale) ;
	 */
	public static String createDateFormatFromTemplate(CFAllocator allocator, String tmplate, long options, CFLocale locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CFDateFormatterGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFDateFormatterCreateStringWithDate(CFAllocatorRef allocator, CFDateFormatterRef formatter, CFDateRef date) ;
	 */
	public static String createStringWithDate(CFAllocator allocator, CFDateFormatter formatter, NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFDateFormatterCreateStringWithAbsoluteTime(CFAllocatorRef allocator, CFDateFormatterRef formatter, CFAbsoluteTime at) ;
	 */
	public static String createStringWithAbsoluteTime(CFAllocator allocator, CFDateFormatter formatter, double at){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDateRef CFDateFormatterCreateDateFromString(CFAllocatorRef allocator, CFDateFormatterRef formatter, CFStringRef string, CFRange *rangep) ;
	 */
	public static NSDate createDateFromString(CFAllocator allocator, CFDateFormatter formatter, String string, Reference<CFRange> rangep){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFDateFormatterRef CFDateFormatterCreate(CFAllocatorRef allocator, CFLocaleRef locale, CFDateFormatterStyle dateStyle, CFDateFormatterStyle timeStyle) ;
	 */
	public CFDateFormatter(CFAllocator allocator, CFLocale locale, long dateStyle, long timeStyle) {}

	/** Default constructor */
	CFDateFormatter() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFLocaleRef CFDateFormatterGetLocale(CFDateFormatterRef formatter) ;
	 */
	public CFLocale getLocale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDateFormatterStyle CFDateFormatterGetDateStyle(CFDateFormatterRef formatter) ;
	 */
	public long getDateStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDateFormatterStyle CFDateFormatterGetTimeStyle(CFDateFormatterRef formatter) ;
	 */
	public long getTimeStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFDateFormatterGetFormat(CFDateFormatterRef formatter) ;
	 */
	public String getFormat(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDateFormatterSetFormat(CFDateFormatterRef formatter, CFStringRef formatString) ;
	 */
	public void setFormat(String formatString){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFDateFormatterGetAbsoluteTimeFromString(CFDateFormatterRef formatter, CFStringRef string, CFRange *rangep, CFAbsoluteTime *atp) ;
	 */
	public byte getAbsoluteTimeFromString(String string, Reference<CFRange> rangep, double[] atp){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDateFormatterSetProperty(CFDateFormatterRef formatter, CFStringRef key, CFTypeRef value) ;
	 */
	public void setProperty(String key, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CFDateFormatterCopyProperty(CFDateFormatterRef formatter, CFStringRef key) ;
	 */
	public byte[] copyProperty(String key){
		throw new RuntimeException("Stub");
	}
}
