package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSNumberFormatter extends NSFormatter {

	/*
	 * Static methods
	 */

	/**
	 * + (NSString *)localizedStringFromNumber:(NSNumber *)num numberStyle:(NSNumberFormatterStyle)nstyle ;
	 */
	public static String localizedStringFromNumber(NSNumber num, int nstyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSNumberFormatterBehavior)defaultFormatterBehavior ;
	 */
	public static int defaultFormatterBehavior(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setDefaultFormatterBehavior:(NSNumberFormatterBehavior)behavior ;
	 */
	public static void setDefaultFormatterBehavior(int behavior){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSNumberFormatter() {}

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
	 * - (NSString *)stringFromNumber:(NSNumber *)number ;
	 */
	public String stringFromNumber(NSNumber number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSNumber *)numberFromString:(NSString *)string ;
	 */
	public NSNumber numberFromString(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSNumberFormatterStyle)numberStyle ;
	 */
	public int numberStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNumberStyle:(NSNumberFormatterStyle)style ;
	 */
	public void setNumberStyle(int style){
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
	 * - (BOOL)generatesDecimalNumbers ;
	 */
	public boolean generatesDecimalNumbers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setGeneratesDecimalNumbers:(BOOL)b ;
	 */
	public void setGeneratesDecimalNumbers(boolean b){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSNumberFormatterBehavior)formatterBehavior ;
	 */
	public int formatterBehavior(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setFormatterBehavior:(NSNumberFormatterBehavior)behavior ;
	 */
	public void setFormatterBehavior(int behavior){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)negativeFormat;
	 */
	public String negativeFormat(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNegativeFormat:(NSString *)format;
	 */
	public void setNegativeFormat(String format){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)textAttributesForNegativeValues;
	 */
	public Map textAttributesForNegativeValues(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTextAttributesForNegativeValues:(NSDictionary *)newAttributes;
	 */
	public void setTextAttributesForNegativeValues(Map newAttributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)positiveFormat;
	 */
	public String positiveFormat(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPositiveFormat:(NSString *)format;
	 */
	public void setPositiveFormat(String format){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)textAttributesForPositiveValues;
	 */
	public Map textAttributesForPositiveValues(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTextAttributesForPositiveValues:(NSDictionary *)newAttributes;
	 */
	public void setTextAttributesForPositiveValues(Map newAttributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)allowsFloats;
	 */
	public boolean allowsFloats(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setAllowsFloats:(BOOL)flag;
	 */
	public void setAllowsFloats(boolean flag){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)decimalSeparator;
	 */
	public String decimalSeparator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDecimalSeparator:(NSString *)string;
	 */
	public void setDecimalSeparator(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)alwaysShowsDecimalSeparator ;
	 */
	public boolean alwaysShowsDecimalSeparator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setAlwaysShowsDecimalSeparator:(BOOL)b ;
	 */
	public void setAlwaysShowsDecimalSeparator(boolean b){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)currencyDecimalSeparator ;
	 */
	public String currencyDecimalSeparator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCurrencyDecimalSeparator:(NSString *)string ;
	 */
	public void setCurrencyDecimalSeparator(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)usesGroupingSeparator ;
	 */
	public boolean usesGroupingSeparator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setUsesGroupingSeparator:(BOOL)b ;
	 */
	public void setUsesGroupingSeparator(boolean b){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)groupingSeparator ;
	 */
	public String groupingSeparator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setGroupingSeparator:(NSString *)string ;
	 */
	public void setGroupingSeparator(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)zeroSymbol ;
	 */
	public String zeroSymbol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setZeroSymbol:(NSString *)string ;
	 */
	public void setZeroSymbol(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)textAttributesForZero ;
	 */
	public Map textAttributesForZero(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTextAttributesForZero:(NSDictionary *)newAttributes ;
	 */
	public void setTextAttributesForZero(Map newAttributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)nilSymbol ;
	 */
	public String nilSymbol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNilSymbol:(NSString *)string ;
	 */
	public void setNilSymbol(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)textAttributesForNil ;
	 */
	public Map textAttributesForNil(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTextAttributesForNil:(NSDictionary *)newAttributes ;
	 */
	public void setTextAttributesForNil(Map newAttributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)notANumberSymbol ;
	 */
	public String notANumberSymbol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNotANumberSymbol:(NSString *)string ;
	 */
	public void setNotANumberSymbol(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)textAttributesForNotANumber ;
	 */
	public Map textAttributesForNotANumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTextAttributesForNotANumber:(NSDictionary *)newAttributes ;
	 */
	public void setTextAttributesForNotANumber(Map newAttributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)positiveInfinitySymbol ;
	 */
	public String positiveInfinitySymbol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPositiveInfinitySymbol:(NSString *)string ;
	 */
	public void setPositiveInfinitySymbol(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)textAttributesForPositiveInfinity ;
	 */
	public Map textAttributesForPositiveInfinity(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTextAttributesForPositiveInfinity:(NSDictionary *)newAttributes ;
	 */
	public void setTextAttributesForPositiveInfinity(Map newAttributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)negativeInfinitySymbol ;
	 */
	public String negativeInfinitySymbol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNegativeInfinitySymbol:(NSString *)string ;
	 */
	public void setNegativeInfinitySymbol(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)textAttributesForNegativeInfinity ;
	 */
	public Map textAttributesForNegativeInfinity(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTextAttributesForNegativeInfinity:(NSDictionary *)newAttributes ;
	 */
	public void setTextAttributesForNegativeInfinity(Map newAttributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)positivePrefix ;
	 */
	public String positivePrefix(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPositivePrefix:(NSString *)string ;
	 */
	public void setPositivePrefix(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)positiveSuffix ;
	 */
	public String positiveSuffix(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPositiveSuffix:(NSString *)string ;
	 */
	public void setPositiveSuffix(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)negativePrefix ;
	 */
	public String negativePrefix(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNegativePrefix:(NSString *)string ;
	 */
	public void setNegativePrefix(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)negativeSuffix ;
	 */
	public String negativeSuffix(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNegativeSuffix:(NSString *)string ;
	 */
	public void setNegativeSuffix(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)currencyCode ;
	 */
	public String currencyCode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCurrencyCode:(NSString *)string ;
	 */
	public void setCurrencyCode(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)currencySymbol ;
	 */
	public String currencySymbol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCurrencySymbol:(NSString *)string ;
	 */
	public void setCurrencySymbol(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)internationalCurrencySymbol ;
	 */
	public String internationalCurrencySymbol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setInternationalCurrencySymbol:(NSString *)string ;
	 */
	public void setInternationalCurrencySymbol(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)percentSymbol ;
	 */
	public String percentSymbol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPercentSymbol:(NSString *)string ;
	 */
	public void setPercentSymbol(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)perMillSymbol ;
	 */
	public String perMillSymbol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPerMillSymbol:(NSString *)string ;
	 */
	public void setPerMillSymbol(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)minusSign ;
	 */
	public String minusSign(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMinusSign:(NSString *)string ;
	 */
	public void setMinusSign(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)plusSign ;
	 */
	public String plusSign(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPlusSign:(NSString *)string ;
	 */
	public void setPlusSign(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)exponentSymbol ;
	 */
	public String exponentSymbol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setExponentSymbol:(NSString *)string ;
	 */
	public void setExponentSymbol(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)groupingSize ;
	 */
	public int groupingSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setGroupingSize:(NSUInteger)number ;
	 */
	public void setGroupingSize(int number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)secondaryGroupingSize ;
	 */
	public int secondaryGroupingSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setSecondaryGroupingSize:(NSUInteger)number ;
	 */
	public void setSecondaryGroupingSize(int number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSNumber *)multiplier ;
	 */
	public NSNumber multiplier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMultiplier:(NSNumber *)number ;
	 */
	public void setMultiplier(NSNumber number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)formatWidth ;
	 */
	public int formatWidth(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setFormatWidth:(NSUInteger)number ;
	 */
	public void setFormatWidth(int number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)paddingCharacter ;
	 */
	public String paddingCharacter(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPaddingCharacter:(NSString *)string ;
	 */
	public void setPaddingCharacter(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSNumberFormatterPadPosition)paddingPosition ;
	 */
	public int paddingPosition(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPaddingPosition:(NSNumberFormatterPadPosition)position ;
	 */
	public void setPaddingPosition(int position){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSNumberFormatterRoundingMode)roundingMode ;
	 */
	public int roundingMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setRoundingMode:(NSNumberFormatterRoundingMode)mode ;
	 */
	public void setRoundingMode(int mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSNumber *)roundingIncrement ;
	 */
	public NSNumber roundingIncrement(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setRoundingIncrement:(NSNumber *)number ;
	 */
	public void setRoundingIncrement(NSNumber number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)minimumIntegerDigits ;
	 */
	public int minimumIntegerDigits(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMinimumIntegerDigits:(NSUInteger)number ;
	 */
	public void setMinimumIntegerDigits(int number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)maximumIntegerDigits ;
	 */
	public int maximumIntegerDigits(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMaximumIntegerDigits:(NSUInteger)number ;
	 */
	public void setMaximumIntegerDigits(int number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)minimumFractionDigits ;
	 */
	public int minimumFractionDigits(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMinimumFractionDigits:(NSUInteger)number ;
	 */
	public void setMinimumFractionDigits(int number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)maximumFractionDigits ;
	 */
	public int maximumFractionDigits(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMaximumFractionDigits:(NSUInteger)number ;
	 */
	public void setMaximumFractionDigits(int number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSNumber *)minimum;
	 */
	public NSNumber minimum(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMinimum:(NSNumber *)number;
	 */
	public void setMinimum(NSNumber number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSNumber *)maximum;
	 */
	public NSNumber maximum(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMaximum:(NSNumber *)number;
	 */
	public void setMaximum(NSNumber number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)currencyGroupingSeparator ;
	 */
	public String currencyGroupingSeparator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCurrencyGroupingSeparator:(NSString *)string ;
	 */
	public void setCurrencyGroupingSeparator(String string){
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
	 * - (BOOL)usesSignificantDigits ;
	 */
	public boolean usesSignificantDigits(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setUsesSignificantDigits:(BOOL)b ;
	 */
	public void setUsesSignificantDigits(boolean b){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)minimumSignificantDigits ;
	 */
	public int minimumSignificantDigits(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMinimumSignificantDigits:(NSUInteger)number ;
	 */
	public void setMinimumSignificantDigits(int number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)maximumSignificantDigits ;
	 */
	public int maximumSignificantDigits(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMaximumSignificantDigits:(NSUInteger)number ;
	 */
	public void setMaximumSignificantDigits(int number){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isPartialStringValidationEnabled ;
	 */
	public boolean isPartialStringValidationEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPartialStringValidationEnabled:(BOOL)b ;
	 */
	public void setPartialStringValidationEnabled(boolean b){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)hasThousandSeparators;
	 */
	public boolean hasThousandSeparators(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setHasThousandSeparators:(BOOL)flag;
	 */
	public void setHasThousandSeparators(boolean flag){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)thousandSeparator;
	 */
	public String thousandSeparator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setThousandSeparator:(NSString *)newSeparator;
	 */
	public void setThousandSeparator(String newSeparator){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)localizesFormat;
	 */
	public boolean localizesFormat(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setLocalizesFormat:(BOOL)flag;
	 */
	public void setLocalizesFormat(boolean flag){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)format;
	 */
	public String format(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setFormat:(NSString *)string;
	 */
	public void setFormat(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSAttributedString *)attributedStringForZero;
	 */
	public NSAttributedString attributedStringForZero(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setAttributedStringForZero:(NSAttributedString *)newAttributedString;
	 */
	public void setAttributedStringForZero(NSAttributedString newAttributedString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSAttributedString *)attributedStringForNil;
	 */
	public NSAttributedString attributedStringForNil(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setAttributedStringForNil:(NSAttributedString *)newAttributedString;
	 */
	public void setAttributedStringForNil(NSAttributedString newAttributedString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSAttributedString *)attributedStringForNotANumber;
	 */
	public NSAttributedString attributedStringForNotANumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setAttributedStringForNotANumber:(NSAttributedString *)newAttributedString;
	 */
	public void setAttributedStringForNotANumber(NSAttributedString newAttributedString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumberHandler *)roundingBehavior;
	 */
	public NSDecimalNumberHandler roundingBehavior(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setRoundingBehavior:(NSDecimalNumberHandler *)newRoundingBehavior;
	 */
	public void setRoundingBehavior(NSDecimalNumberHandler newRoundingBehavior){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMinimum:(NSDecimalNumber *)aMinimum;
	 */
	public void setMinimum(NSDecimalNumber aMinimum){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMaximum:(NSDecimalNumber *)aMaximum;
	 */
	public void setMaximum(NSDecimalNumber aMaximum){
		throw new RuntimeException("Stub");
	}
}
