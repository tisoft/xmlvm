package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMTime {

	/*
	 * Variables
	 */
	 public long value;
	 public int timescale;
	 public int flags;
	 public long epoch;

	/*
	 * Static methods
	 */

	/**
	 * CMTime CMTimeMakeWithEpoch( int64_t value, int32_t timescale, int64_t epoch) ;
	 */
	public static CMTime makeWithEpoch(long value, int timescale, long epoch){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeMakeWithSeconds( Float64 seconds, int32_t preferredTimeScale) ;
	 */
	public static CMTime makeWithSeconds(double seconds, int preferredTimeScale){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeMakeFromDictionary( CFDictionaryRef dict) ;
	 */
	public static CMTime makeFromDictionary(CFDictionary dict){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CMTimeCopyDescription( CFAllocatorRef allocator, CMTime time) ;
	 */
	public static String copyDescription(CFAllocator allocator, CMTime time){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CMTime CMTimeMake( int64_t value, int32_t timescale) ;
	 */
	public CMTime(long value, int timescale) {}

	/** Default constructor */
	public CMTime() {}

	/*
	 * Instance methods
	 */

	/**
	 * Float64 CMTimeGetSeconds( CMTime time) ;
	 */
	public double getSeconds(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeConvertScale( CMTime time, int32_t newTimescale, CMTimeRoundingMethod method) ;
	 */
	public CMTime convertScale(int newTimescale, int method){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeAdd( CMTime addend1, CMTime addend2) ;
	 */
	public CMTime add(CMTime addend2){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeSubtract( CMTime minuend, CMTime subtrahend) ;
	 */
	public CMTime subtract(CMTime subtrahend){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeMultiply( CMTime time, int32_t multiplier) ;
	 */
	public CMTime multiply(int multiplier){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeMultiplyByFloat64( CMTime time, Float64 multiplier) ;
	 */
	public CMTime multiplyByFloat64(double multiplier){
		throw new RuntimeException("Stub");
	}

	/**
	 * int32_t CMTimeCompare( CMTime time1, CMTime time2) ;
	 */
	public int compare(CMTime time2){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeMinimum( CMTime time1, CMTime time2) ;
	 */
	public CMTime minimum(CMTime time2){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeMaximum( CMTime time1, CMTime time2) ;
	 */
	public CMTime maximum(CMTime time2){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeAbsoluteValue( CMTime time) ;
	 */
	public CMTime absoluteValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CMTimeCopyAsDictionary( CMTime time, CFAllocatorRef allocator) ;
	 */
	public CFDictionary copyAsDictionary(CFAllocator allocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CMTimeShow( CMTime time) ;
	 */
	public void show(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeMapTimeFromRangeToRange( CMTime t, CMTimeRange fromRange, CMTimeRange toRange ) ;
	 */
	public CMTime mapTimeFromRangeToRange(CMTimeRange fromRange, CMTimeRange toRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeClampToRange( CMTime time, CMTimeRange range ) ;
	 */
	public CMTime clampToRange(CMTimeRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMTimeMapDurationFromRangeToRange( CMTime dur, CMTimeRange fromRange, CMTimeRange toRange ) ;
	 */
	public CMTime mapDurationFromRangeToRange(CMTimeRange fromRange, CMTimeRange toRange){
		throw new RuntimeException("Stub");
	}
}
