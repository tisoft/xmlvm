package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFCalendar {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFCalendarGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFCalendarRef CFCalendarCopyCurrent(void) ;
	 */
	public static CFCalendar copyCurrent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFCalendarRef CFCalendarCreateWithIdentifier(CFAllocatorRef allocator, CFStringRef identifier) ;
	 */
	public static CFCalendar createWithIdentifier(CFAllocator allocator, String identifier){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CFCalendar() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFStringRef CFCalendarGetIdentifier(CFCalendarRef calendar) ;
	 */
	public String getIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFLocaleRef CFCalendarCopyLocale(CFCalendarRef calendar) ;
	 */
	public CFLocale copyLocale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFCalendarSetLocale(CFCalendarRef calendar, CFLocaleRef locale) ;
	 */
	public void setLocale(CFLocale locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTimeZoneRef CFCalendarCopyTimeZone(CFCalendarRef calendar) ;
	 */
	public NSTimeZone copyTimeZone(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFCalendarSetTimeZone(CFCalendarRef calendar, CFTimeZoneRef tz) ;
	 */
	public void setTimeZone(NSTimeZone tz){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFCalendarGetFirstWeekday(CFCalendarRef calendar) ;
	 */
	public long getFirstWeekday(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFCalendarSetFirstWeekday(CFCalendarRef calendar, CFIndex wkdy) ;
	 */
	public void setFirstWeekday(long wkdy){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFCalendarGetMinimumDaysInFirstWeek(CFCalendarRef calendar) ;
	 */
	public long getMinimumDaysInFirstWeek(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFCalendarSetMinimumDaysInFirstWeek(CFCalendarRef calendar, CFIndex mwd) ;
	 */
	public void setMinimumDaysInFirstWeek(long mwd){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRange CFCalendarGetMinimumRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit unit) ;
	 */
	public CFRange getMinimumRangeOfUnit(long unit){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRange CFCalendarGetMaximumRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit unit) ;
	 */
	public CFRange getMaximumRangeOfUnit(long unit){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRange CFCalendarGetRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit smallerUnit, CFCalendarUnit biggerUnit, CFAbsoluteTime at) ;
	 */
	public CFRange getRangeOfUnit(long smallerUnit, long biggerUnit, double at){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFCalendarGetOrdinalityOfUnit(CFCalendarRef calendar, CFCalendarUnit smallerUnit, CFCalendarUnit biggerUnit, CFAbsoluteTime at) ;
	 */
	public long getOrdinalityOfUnit(long smallerUnit, long biggerUnit, double at){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFCalendarGetTimeRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit unit, CFAbsoluteTime at, CFAbsoluteTime *startp, CFTimeInterval *tip) ;
	 */
	public byte getTimeRangeOfUnit(long unit, double at, double[] startp, double[] tip){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFCalendarComposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime *at, const char *componentDesc, ...) ;
	 */
	public byte composeAbsoluteTime(double[] at, byte[]... componentDesc){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...) ;
	 */
	public byte decomposeAbsoluteTime(double at, byte[]... componentDesc){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFCalendarAddComponents(CFCalendarRef calendar, CFAbsoluteTime *at, CFOptionFlags options, const char *componentDesc, ...) ;
	 */
	public byte addComponents(double[] at, long options, byte[]... componentDesc){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFCalendarGetComponentDifference(CFCalendarRef calendar, CFAbsoluteTime startingAT, CFAbsoluteTime resultAT, CFOptionFlags options, const char *componentDesc, ...) ;
	 */
	public byte getComponentDifference(double startingAT, double resultAT, long options, byte[]... componentDesc){
		throw new RuntimeException("Stub");
	}
}
