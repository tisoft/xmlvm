package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSCalendar extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)currentCalendar;
	 */
	public static Object currentCalendar(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)autoupdatingCurrentCalendar ;
	 */
	public static Object autoupdatingCurrentCalendar(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithCalendarIdentifier:(NSString *)ident;
	 */
	public NSCalendar(String ident) {}

	/** Default constructor */
	public NSCalendar() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)calendarIdentifier;
	 */
	public String calendarIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setLocale:(NSLocale *)locale;
	 */
	public void setLocale(NSLocale locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSLocale *)locale;
	 */
	public NSLocale locale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTimeZone:(NSTimeZone *)tz;
	 */
	public void setTimeZone(NSTimeZone tz){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSTimeZone *)timeZone;
	 */
	public NSTimeZone timeZone(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setFirstWeekday:(NSUInteger)weekday;
	 */
	public void setFirstWeekday(int weekday){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)firstWeekday;
	 */
	public int firstWeekday(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMinimumDaysInFirstWeek:(NSUInteger)mdw;
	 */
	public void setMinimumDaysInFirstWeek(int mdw){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)minimumDaysInFirstWeek;
	 */
	public int minimumDaysInFirstWeek(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)minimumRangeOfUnit:(NSCalendarUnit)unit;
	 */
	public NSRange minimumRangeOfUnit(int unit){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)maximumRangeOfUnit:(NSCalendarUnit)unit;
	 */
	public NSRange maximumRangeOfUnit(int unit){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)rangeOfUnit:(NSCalendarUnit)smaller inUnit:(NSCalendarUnit)larger forDate:(NSDate *)date;
	 */
	public NSRange rangeOfUnit(int smaller, int larger, NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)ordinalityOfUnit:(NSCalendarUnit)smaller inUnit:(NSCalendarUnit)larger forDate:(NSDate *)date;
	 */
	public int ordinalityOfUnit(int smaller, int larger, NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)rangeOfUnit:(NSCalendarUnit)unit startDate:(NSDate **)datep interval:(NSTimeInterval *)tip forDate:(NSDate *)date ;
	 */
	public boolean rangeOfUnit(int unit, Reference<NSDate> datep, double[] tip, NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)dateFromComponents:(NSDateComponents *)comps;
	 */
	public NSDate dateFromComponents(NSDateComponents comps){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDateComponents *)components:(NSUInteger)unitFlags fromDate:(NSDate *)date;
	 */
	public NSDateComponents components(int unitFlags, NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)dateByAddingComponents:(NSDateComponents *)comps toDate:(NSDate *)date options:(NSUInteger)opts;
	 */
	public NSDate dateByAddingComponents(NSDateComponents comps, NSDate date, int opts){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDateComponents *)components:(NSUInteger)unitFlags fromDate:(NSDate *)startingDate toDate:(NSDate *)resultDate options:(NSUInteger)opts;
	 */
	public NSDateComponents components(int unitFlags, NSDate startingDate, NSDate resultDate, int opts){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
