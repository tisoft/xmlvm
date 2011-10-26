package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSDate extends NSObject {

	/*
	 * Initialization enumerations
	 */

	public static enum ReferenceDate {
		SinceDate, SinceNow, Since1970;
	}

	/*
	 * Static methods
	 */

	/**
	 * + (NSTimeInterval)timeIntervalSinceReferenceDate;
	 */
	public static double timeIntervalSinceReferenceDateStatic(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)date;
	 */
	public static NSDate date(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dateWithTimeIntervalSinceNow:(NSTimeInterval)secs;
	 */
	public static NSDate dateWithTimeIntervalSinceNow(double secs){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dateWithTimeIntervalSinceReferenceDate:(NSTimeInterval)secs;
	 */
	public static NSDate dateWithTimeIntervalSinceReferenceDate(double secs){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dateWithTimeIntervalSince1970:(NSTimeInterval)secs;
	 */
	public static NSDate dateWithTimeIntervalSince1970(double secs){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dateWithTimeInterval:(NSTimeInterval)ti sinceDate:(NSDate *)date ;
	 */
	public static NSDate dateWithTimeInterval(double ti, NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)distantFuture;
	 */
	public static Object distantFuture(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)distantPast;
	 */
	public static Object distantPast(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)init;
	 */
	public NSDate() {}

	/**
	 * - (id)initWithTimeIntervalSinceNow:(NSTimeInterval)secs;
	 * - (id)initWithTimeIntervalSinceReferenceDate:(NSTimeInterval)secsToBeAdded;
	 * - (id)initWithTimeIntervalSince1970:(NSTimeInterval)ti ;
	 */
	public NSDate(double secs, NSDate.ReferenceDate referencedate) {}

	/**
	 * - (id)initWithTimeInterval:(NSTimeInterval)secsToBeAdded sinceDate:(NSDate *)anotherDate;
	 */
	public NSDate(double secsToBeAdded, NSDate anotherDate) {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSTimeInterval)timeIntervalSinceReferenceDate;
	 */
	public double timeIntervalSinceReferenceDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSTimeInterval)timeIntervalSinceDate:(NSDate *)anotherDate;
	 */
	public double timeIntervalSinceDate(NSDate anotherDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSTimeInterval)timeIntervalSinceNow;
	 */
	public double timeIntervalSinceNow(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSTimeInterval)timeIntervalSince1970;
	 */
	public double timeIntervalSince1970(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)addTimeInterval:(NSTimeInterval)seconds ;
	 */
	public Object addTimeInterval(double seconds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)dateByAddingTimeInterval:(NSTimeInterval)ti ;
	 */
	public Object dateByAddingTimeInterval(double ti){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)earlierDate:(NSDate *)anotherDate;
	 */
	public NSDate earlierDate(NSDate anotherDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)laterDate:(NSDate *)anotherDate;
	 */
	public NSDate laterDate(NSDate anotherDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonResult)compare:(NSDate *)other;
	 */
	public int compare(NSDate other){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isEqualToDate:(NSDate *)otherDate;
	 */
	public boolean isEqualToDate(NSDate otherDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)description;
	 */
	public String description(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)descriptionWithLocale:(id)locale;
	 */
	public String descriptionWithLocale(Object locale){
		throw new RuntimeException("Stub");
	}
}
