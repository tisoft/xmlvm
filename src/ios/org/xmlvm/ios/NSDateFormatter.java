package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSDateFormatter extends NSFormatter {

	/*
	 * Static methods
	 */

	/**
	 * + (NSString *)localizedStringFromDate:(NSDate *)date dateStyle:(NSDateFormatterStyle)dstyle timeStyle:(NSDateFormatterStyle)tstyle ;
	 */
	public static String localizedStringFromDate(NSDate date, int dstyle, int tstyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSString *)dateFormatFromTemplate:(NSString *)tmplate options:(NSUInteger)opts locale:(NSLocale *)locale ;
	 */
	public static String dateFormatFromTemplate(String tmplate, int opts, NSLocale locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDateFormatterBehavior)defaultFormatterBehavior ;
	 */
	public static int defaultFormatterBehavior(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setDefaultFormatterBehavior:(NSDateFormatterBehavior)behavior ;
	 */
	public static void setDefaultFormatterBehavior(int behavior){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithDateFormat:(NSString *)format allowNaturalLanguage:(BOOL)flag;
	 */
	public NSDateFormatter(String format, boolean flag) {}

	/** Default constructor */
	NSDateFormatter() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)getObjectValue:(out id *)obj forString:(NSString *)string range:(inout NSRange *)rangep error:(out NSError **)error ;
	 */
	public boolean getObjectValue(Object[] obj, String string, Reference<NSRange> rangep, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringFromDate:(NSDate *)date ;
	 */
	public String stringFromDate(NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)dateFromString:(NSString *)string ;
	 */
	public NSDate dateFromString(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)dateFormat;
	 */
	public String dateFormat(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDateFormatterStyle)dateStyle ;
	 */
	public int dateStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDateStyle:(NSDateFormatterStyle)style ;
	 */
	public void setDateStyle(int style){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDateFormatterStyle)timeStyle ;
	 */
	public int timeStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTimeStyle:(NSDateFormatterStyle)style ;
	 */
	public void setTimeStyle(int style){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSLocale *)locale ;
	 */
	public NSLocale locale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setLocale:(NSLocale *)locale ;
	 */
	public void setLocale(NSLocale locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)generatesCalendarDates ;
	 */
	public boolean generatesCalendarDates(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setGeneratesCalendarDates:(BOOL)b ;
	 */
	public void setGeneratesCalendarDates(boolean b){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDateFormatterBehavior)formatterBehavior ;
	 */
	public int formatterBehavior(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setFormatterBehavior:(NSDateFormatterBehavior)behavior ;
	 */
	public void setFormatterBehavior(int behavior){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDateFormat:(NSString *)string ;
	 */
	public void setDateFormat(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSTimeZone *)timeZone ;
	 */
	public NSTimeZone timeZone(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTimeZone:(NSTimeZone *)tz ;
	 */
	public void setTimeZone(NSTimeZone tz){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSCalendar *)calendar ;
	 */
	public NSCalendar calendar(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCalendar:(NSCalendar *)calendar ;
	 */
	public void setCalendar(NSCalendar calendar){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isLenient ;
	 */
	public boolean isLenient(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setLenient:(BOOL)b ;
	 */
	public void setLenient(boolean b){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)twoDigitStartDate ;
	 */
	public NSDate twoDigitStartDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTwoDigitStartDate:(NSDate *)date ;
	 */
	public void setTwoDigitStartDate(NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)defaultDate ;
	 */
	public NSDate defaultDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDefaultDate:(NSDate *)date ;
	 */
	public void setDefaultDate(NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)eraSymbols ;
	 */
	public List eraSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setEraSymbols:(NSArray *)array ;
	 */
	public void setEraSymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)monthSymbols ;
	 */
	public List monthSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMonthSymbols:(NSArray *)array ;
	 */
	public void setMonthSymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)shortMonthSymbols ;
	 */
	public List shortMonthSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setShortMonthSymbols:(NSArray *)array ;
	 */
	public void setShortMonthSymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)weekdaySymbols ;
	 */
	public List weekdaySymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setWeekdaySymbols:(NSArray *)array ;
	 */
	public void setWeekdaySymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)shortWeekdaySymbols ;
	 */
	public List shortWeekdaySymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setShortWeekdaySymbols:(NSArray *)array ;
	 */
	public void setShortWeekdaySymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)AMSymbol ;
	 */
	public String AMSymbol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setAMSymbol:(NSString *)string ;
	 */
	public void setAMSymbol(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)PMSymbol ;
	 */
	public String PMSymbol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPMSymbol:(NSString *)string ;
	 */
	public void setPMSymbol(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)longEraSymbols ;
	 */
	public List longEraSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setLongEraSymbols:(NSArray *)array ;
	 */
	public void setLongEraSymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)veryShortMonthSymbols ;
	 */
	public List veryShortMonthSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setVeryShortMonthSymbols:(NSArray *)array ;
	 */
	public void setVeryShortMonthSymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)standaloneMonthSymbols ;
	 */
	public List standaloneMonthSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setStandaloneMonthSymbols:(NSArray *)array ;
	 */
	public void setStandaloneMonthSymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)shortStandaloneMonthSymbols ;
	 */
	public List shortStandaloneMonthSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setShortStandaloneMonthSymbols:(NSArray *)array ;
	 */
	public void setShortStandaloneMonthSymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)veryShortStandaloneMonthSymbols ;
	 */
	public List veryShortStandaloneMonthSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setVeryShortStandaloneMonthSymbols:(NSArray *)array ;
	 */
	public void setVeryShortStandaloneMonthSymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)veryShortWeekdaySymbols ;
	 */
	public List veryShortWeekdaySymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setVeryShortWeekdaySymbols:(NSArray *)array ;
	 */
	public void setVeryShortWeekdaySymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)standaloneWeekdaySymbols ;
	 */
	public List standaloneWeekdaySymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setStandaloneWeekdaySymbols:(NSArray *)array ;
	 */
	public void setStandaloneWeekdaySymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)shortStandaloneWeekdaySymbols ;
	 */
	public List shortStandaloneWeekdaySymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setShortStandaloneWeekdaySymbols:(NSArray *)array ;
	 */
	public void setShortStandaloneWeekdaySymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)veryShortStandaloneWeekdaySymbols ;
	 */
	public List veryShortStandaloneWeekdaySymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setVeryShortStandaloneWeekdaySymbols:(NSArray *)array ;
	 */
	public void setVeryShortStandaloneWeekdaySymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)quarterSymbols ;
	 */
	public List quarterSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setQuarterSymbols:(NSArray *)array ;
	 */
	public void setQuarterSymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)shortQuarterSymbols ;
	 */
	public List shortQuarterSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setShortQuarterSymbols:(NSArray *)array ;
	 */
	public void setShortQuarterSymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)standaloneQuarterSymbols ;
	 */
	public List standaloneQuarterSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setStandaloneQuarterSymbols:(NSArray *)array ;
	 */
	public void setStandaloneQuarterSymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)shortStandaloneQuarterSymbols ;
	 */
	public List shortStandaloneQuarterSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setShortStandaloneQuarterSymbols:(NSArray *)array ;
	 */
	public void setShortStandaloneQuarterSymbols(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)gregorianStartDate ;
	 */
	public NSDate gregorianStartDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setGregorianStartDate:(NSDate *)date ;
	 */
	public void setGregorianStartDate(NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)doesRelativeDateFormatting ;
	 */
	public boolean doesRelativeDateFormatting(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDoesRelativeDateFormatting:(BOOL)b ;
	 */
	public void setDoesRelativeDateFormatting(boolean b){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)allowsNaturalLanguage;
	 */
	public boolean allowsNaturalLanguage(){
		throw new RuntimeException("Stub");
	}
}
