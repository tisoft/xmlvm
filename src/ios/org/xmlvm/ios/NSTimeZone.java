package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSTimeZone extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSTimeZone *)systemTimeZone;
	 */
	public static NSTimeZone systemTimeZone(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)resetSystemTimeZone;
	 */
	public static void resetSystemTimeZone(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTimeZone *)defaultTimeZone;
	 */
	public static NSTimeZone defaultTimeZone(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setDefaultTimeZone:(NSTimeZone *)aTimeZone;
	 */
	public static void setDefaultTimeZone(NSTimeZone aTimeZone){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTimeZone *)localTimeZone;
	 */
	public static NSTimeZone localTimeZone(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)knownTimeZoneNames;
	 */
	public static List knownTimeZoneNames(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDictionary *)abbreviationDictionary;
	 */
	public static Map abbreviationDictionary(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAbbreviationDictionary:(NSDictionary *)dict ;
	 */
	public static void setAbbreviationDictionary(Map dict){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSString *)timeZoneDataVersion ;
	 */
	public static String timeZoneDataVersion(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)timeZoneWithName:(NSString *)tzName;
	 */
	public static NSTimeZone timeZoneWithName(String tzName){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)timeZoneWithName:(NSString *)tzName data:(NSData *)aData;
	 */
	public static NSTimeZone timeZoneWithName(String tzName, NSData aData){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)timeZoneForSecondsFromGMT:(NSInteger)seconds;
	 */
	public static NSTimeZone timeZoneForSecondsFromGMT(int seconds){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)timeZoneWithAbbreviation:(NSString *)abbreviation;
	 */
	public static NSTimeZone timeZoneWithAbbreviation(String abbreviation){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithName:(NSString *)tzName;
	 */
	public NSTimeZone(String tzName) {}

	/**
	 * - (id)initWithName:(NSString *)tzName data:(NSData *)aData;
	 */
	public NSTimeZone(String tzName, NSData aData) {}

	/** Default constructor */
	public NSTimeZone() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)name;
	 */
	public String name(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)data;
	 */
	public NSData data(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)secondsFromGMTForDate:(NSDate *)aDate;
	 */
	public int secondsFromGMTForDate(NSDate aDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)abbreviationForDate:(NSDate *)aDate;
	 */
	public String abbreviationForDate(NSDate aDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isDaylightSavingTimeForDate:(NSDate *)aDate;
	 */
	public boolean isDaylightSavingTimeForDate(NSDate aDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSTimeInterval)daylightSavingTimeOffsetForDate:(NSDate *)aDate ;
	 */
	public double daylightSavingTimeOffsetForDate(NSDate aDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)nextDaylightSavingTimeTransitionAfterDate:(NSDate *)aDate ;
	 */
	public NSDate nextDaylightSavingTimeTransitionAfterDate(NSDate aDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)secondsFromGMT;
	 */
	public int secondsFromGMT(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)abbreviation;
	 */
	public String abbreviation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isDaylightSavingTime;
	 */
	public boolean isDaylightSavingTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSTimeInterval)daylightSavingTimeOffset ;
	 */
	public double daylightSavingTimeOffset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)nextDaylightSavingTimeTransition ;
	 */
	public NSDate nextDaylightSavingTimeTransition(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)description;
	 */
	public String description(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isEqualToTimeZone:(NSTimeZone *)aTimeZone;
	 */
	public boolean isEqualToTimeZone(NSTimeZone aTimeZone){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)localizedName:(NSTimeZoneNameStyle)style locale:(NSLocale *)locale ;
	 */
	public String localizedName(int style, NSLocale locale){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
