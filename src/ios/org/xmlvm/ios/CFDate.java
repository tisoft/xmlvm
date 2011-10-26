package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFDate {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFDateGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFDateRef CFDateCreate(CFAllocatorRef allocator, CFAbsoluteTime at);
	 */
	public CFDate(CFAllocator allocator, double at) {}

	/** Default constructor */
	CFDate() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFAbsoluteTime CFDateGetAbsoluteTime(CFDateRef theDate);
	 */
	public double getAbsoluteTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTimeInterval CFDateGetTimeIntervalSinceDate(CFDateRef theDate, CFDateRef otherDate);
	 */
	public double getTimeIntervalSinceDate(NSDate otherDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFComparisonResult CFDateCompare(CFDateRef theDate, CFDateRef otherDate, void *context);
	 */
	public long compare(NSDate otherDate, byte[] context){
		throw new RuntimeException("Stub");
	}
}
