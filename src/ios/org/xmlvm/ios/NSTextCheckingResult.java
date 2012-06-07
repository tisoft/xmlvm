package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSTextCheckingResult extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSTextCheckingResult *)orthographyCheckingResultWithRange:(NSRange)range orthography:(NSOrthography *)orthography;
	 */
	public static NSTextCheckingResult orthographyCheckingResultWithRange(NSRange range, NSOrthography orthography){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTextCheckingResult *)spellCheckingResultWithRange:(NSRange)range;
	 */
	public static NSTextCheckingResult spellCheckingResultWithRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTextCheckingResult *)grammarCheckingResultWithRange:(NSRange)range details:(NSArray *)details;
	 */
	public static NSTextCheckingResult grammarCheckingResultWithRange(NSRange range, List details){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTextCheckingResult *)dateCheckingResultWithRange:(NSRange)range date:(NSDate *)date;
	 */
	public static NSTextCheckingResult dateCheckingResultWithRange(NSRange range, NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTextCheckingResult *)dateCheckingResultWithRange:(NSRange)range date:(NSDate *)date timeZone:(NSTimeZone *)timeZone duration:(NSTimeInterval)duration;
	 */
	public static NSTextCheckingResult dateCheckingResultWithRange(NSRange range, NSDate date, NSTimeZone timeZone, double duration){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTextCheckingResult *)addressCheckingResultWithRange:(NSRange)range components:(NSDictionary *)components;
	 */
	public static NSTextCheckingResult addressCheckingResultWithRange(NSRange range, Map components){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTextCheckingResult *)linkCheckingResultWithRange:(NSRange)range URL:(NSURL *)url;
	 */
	public static NSTextCheckingResult linkCheckingResultWithRange(NSRange range, NSURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTextCheckingResult *)quoteCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString;
	 */
	public static NSTextCheckingResult quoteCheckingResultWithRange(NSRange range, String replacementString){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTextCheckingResult *)dashCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString;
	 */
	public static NSTextCheckingResult dashCheckingResultWithRange(NSRange range, String replacementString){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTextCheckingResult *)replacementCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString;
	 */
	public static NSTextCheckingResult replacementCheckingResultWithRange(NSRange range, String replacementString){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTextCheckingResult *)correctionCheckingResultWithRange:(NSRange)range replacementString:(NSString *)replacementString;
	 */
	public static NSTextCheckingResult correctionCheckingResultWithRange(NSRange range, String replacementString){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTextCheckingResult *)regularExpressionCheckingResultWithRanges:(NSRangePointer)ranges count:(NSUInteger)count regularExpression:(NSRegularExpression *)regularExpression ;
	 */
	public static NSTextCheckingResult regularExpressionCheckingResultWithRanges(Reference<NSRange> ranges, int count, NSRegularExpression regularExpression){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTextCheckingResult *)phoneNumberCheckingResultWithRange:(NSRange)range phoneNumber:(NSString *)phoneNumber ;
	 */
	public static NSTextCheckingResult phoneNumberCheckingResultWithRange(NSRange range, String phoneNumber){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTextCheckingResult *)transitInformationCheckingResultWithRange:(NSRange)range components:(NSDictionary *)components ;
	 */
	public static NSTextCheckingResult transitInformationCheckingResultWithRange(NSRange range, Map components){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSTextCheckingResult() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly) NSTextCheckingType resultType;
	 */
	public long getResultType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSRange range;
	 */
	public NSRange getRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSOrthography *orthography;
	 */
	public NSOrthography getOrthography(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSArray *grammarDetails;
	 */
	public List getGrammarDetails(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSDate *date;
	 */
	public NSDate getDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSTimeZone *timeZone;
	 */
	public NSTimeZone getTimeZone(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSTimeInterval duration;
	 */
	public double getDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSURL *URL;
	 */
	public NSURL getURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSString *replacementString;
	 */
	public String getReplacementString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSDictionary *components ;
	 */
	public Map getComponents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSRegularExpression *regularExpression ;
	 */
	public NSRegularExpression getRegularExpression(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSString *phoneNumber ;
	 */
	public String getPhoneNumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSDictionary *addressComponents;
	 */
	public Map getAddressComponents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSUInteger numberOfRanges ;
	 */
	public int getNumberOfRanges(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSRange)rangeAtIndex:(NSUInteger)idx ;
	 */
	public NSRange rangeAtIndex(int idx){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
