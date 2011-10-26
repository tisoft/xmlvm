package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMTimeRange {

	/*
	 * Variables
	 */
	 public CMTime start;
	 public CMTime duration;

	/*
	 * Static methods
	 */

	/**
	 * CMTimeRange CMTimeRangeFromTimeToTime( CMTime start, CMTime end ) ;
	 */
	public static CMTimeRange fromTimeToTime(CMTime start, CMTime end){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTimeRange CMTimeRangeMakeFromDictionary( CFDictionaryRef dict) ;
	 */
	public static CMTimeRange makeFromDictionary(CFDictionary dict){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CMTimeRangeCopyDescription( CFAllocatorRef allocator, CMTimeRange range) ;
	 */
	public static String copyDescription(CFAllocator allocator, CMTimeRange range){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CMTimeRange CMTimeRangeMake( CMTime start, CMTime duration) ;
	 */
	public CMTimeRange(CMTime start, CMTime duration) {}

	/** Default constructor */
	CMTimeRange() {}

	/*
	 * Instance methods
	 */

	/**
	 * CMTimeRange CMTimeRangeGetUnion( CMTimeRange range1, CMTimeRange range2) ;
	 */
	public CMTimeRange getUnion(CMTimeRange range2){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTimeRange CMTimeRangeGetIntersection( CMTimeRange range1, CMTimeRange range2) ;
	 */
	public CMTimeRange getIntersection(CMTimeRange range2){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CMTimeRangeEqual( CMTimeRange range1, CMTimeRange range2) ;
	 */
	public byte equal(CMTimeRange range2){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CMTimeRangeContainsTime( CMTimeRange range, CMTime time) ;
	 */
	public byte containsTime(CMTime time){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CMTimeRangeContainsTimeRange( CMTimeRange range1, CMTimeRange range2) ;
	 */
	public byte containsTimeRange(CMTimeRange range2){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeRangeGetEnd( CMTimeRange range) ;
	 */
	public CMTime getEnd(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CMTimeRangeCopyAsDictionary( CMTimeRange range, CFAllocatorRef allocator) ;
	 */
	public CFDictionary copyAsDictionary(CFAllocator allocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CMTimeRangeShow( CMTimeRange range) ;
	 */
	public void show(){
		throw new RuntimeException("Stub");
	}
}
