package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFTimeZone {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFTimeZoneGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTimeZoneRef CFTimeZoneCopySystem(void);
	 */
	public static NSTimeZone copySystem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFTimeZoneResetSystem(void);
	 */
	public static void resetSystem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTimeZoneRef CFTimeZoneCopyDefault(void);
	 */
	public static NSTimeZone copyDefault(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFTimeZoneCopyKnownNames(void);
	 */
	public static CFArray copyKnownNames(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFTimeZoneCopyAbbreviationDictionary(void);
	 */
	public static CFDictionary copyAbbreviationDictionary(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFTimeZoneSetAbbreviationDictionary(CFDictionaryRef dict);
	 */
	public static void setAbbreviationDictionary(CFDictionary dict){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTimeZoneRef CFTimeZoneCreateWithTimeIntervalFromGMT(CFAllocatorRef allocator, CFTimeInterval ti);
	 */
	public static NSTimeZone createWithTimeIntervalFromGMT(CFAllocator allocator, double ti){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTimeZoneRef CFTimeZoneCreateWithName(CFAllocatorRef allocator, CFStringRef name, Boolean tryAbbrev);
	 */
	public static NSTimeZone createWithName(CFAllocator allocator, String name, byte tryAbbrev){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFTimeZoneRef CFTimeZoneCreate(CFAllocatorRef allocator, CFStringRef name, CFDataRef data);
	 */
	public CFTimeZone(CFAllocator allocator, String name, CFData data) {}

	/** Default constructor */
	CFTimeZone() {}

	/*
	 * Instance methods
	 */

	/**
	 * void CFTimeZoneSetDefault(CFTimeZoneRef tz);
	 */
	public void setDefault(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFTimeZoneGetName(CFTimeZoneRef tz);
	 */
	public String getName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFTimeZoneGetData(CFTimeZoneRef tz);
	 */
	public CFData getData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTimeInterval CFTimeZoneGetSecondsFromGMT(CFTimeZoneRef tz, CFAbsoluteTime at);
	 */
	public double getSecondsFromGMT(double at){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFTimeZoneCopyAbbreviation(CFTimeZoneRef tz, CFAbsoluteTime at);
	 */
	public String copyAbbreviation(double at){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFTimeZoneIsDaylightSavingTime(CFTimeZoneRef tz, CFAbsoluteTime at);
	 */
	public byte isDaylightSavingTime(double at){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTimeInterval CFTimeZoneGetDaylightSavingTimeOffset(CFTimeZoneRef tz, CFAbsoluteTime at) ;
	 */
	public double getDaylightSavingTimeOffset(double at){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFAbsoluteTime CFTimeZoneGetNextDaylightSavingTimeTransition(CFTimeZoneRef tz, CFAbsoluteTime at) ;
	 */
	public double getNextDaylightSavingTimeTransition(double at){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFTimeZoneCopyLocalizedName(CFTimeZoneRef tz, CFTimeZoneNameStyle style, CFLocaleRef locale) ;
	 */
	public String copyLocalizedName(long style, CFLocale locale){
		throw new RuntimeException("Stub");
	}
}
