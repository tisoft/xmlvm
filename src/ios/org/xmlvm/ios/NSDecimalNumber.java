package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSDecimalNumber extends NSNumber {

	/*
	 * Static methods
	 */

	/**
	 * + (NSDecimalNumber *)decimalNumberWithMantissa:(unsigned long long)mantissa exponent:(short)exponent isNegative:(BOOL)flag;
	 */
	public static NSDecimalNumber decimalNumberWithMantissa(long mantissa, short exponent, boolean flag){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDecimalNumber *)decimalNumberWithDecimal:(NSDecimal)dcm;
	 */
	public static NSDecimalNumber decimalNumberWithDecimal(NSDecimal dcm){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDecimalNumber *)decimalNumberWithString:(NSString *)numberValue;
	 */
	public static NSDecimalNumber decimalNumberWithString(String numberValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDecimalNumber *)decimalNumberWithString:(NSString *)numberValue locale:(id)locale;
	 */
	public static NSDecimalNumber decimalNumberWithString(String numberValue, Object locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDecimalNumber *)zero;
	 */
	public static NSDecimalNumber zero(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDecimalNumber *)one;
	 */
	public static NSDecimalNumber one(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDecimalNumber *)minimumDecimalNumber;
	 */
	public static NSDecimalNumber minimumDecimalNumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDecimalNumber *)maximumDecimalNumber;
	 */
	public static NSDecimalNumber maximumDecimalNumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDecimalNumber *)notANumber;
	 */
	public static NSDecimalNumber notANumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setDefaultBehavior:(id <NSDecimalNumberBehaviors>)behavior;
	 */
	public static void setDefaultBehavior(NSDecimalNumberBehaviors behavior){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id <NSDecimalNumberBehaviors>)defaultBehavior;
	 */
	public static NSDecimalNumberBehaviors defaultBehavior(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithMantissa:(unsigned long long)mantissa exponent:(short)exponent isNegative:(BOOL)flag;
	 */
	public NSDecimalNumber(long mantissa, short exponent, boolean flag) {}

	/**
	 * - (id)initWithDecimal:(NSDecimal)dcm;
	 */
	public NSDecimalNumber(NSDecimal dcm) {}

	/**
	 * - (id)initWithString:(NSString *)numberValue;
	 */
	public NSDecimalNumber(String numberValue) {}

	/**
	 * - (id)initWithString:(NSString *)numberValue locale:(id)locale;
	 */
	public NSDecimalNumber(String numberValue, Object locale) {}

	/** Default constructor */
	NSDecimalNumber() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)descriptionWithLocale:(id)locale;
	 */
	public String descriptionWithLocale(Object locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimal)decimalValue;
	 */
	public NSDecimal decimalValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumber *)decimalNumberByAdding:(NSDecimalNumber *)decimalNumber;
	 */
	public NSDecimalNumber decimalNumberByAdding(NSDecimalNumber decimalNumber){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumber *)decimalNumberByAdding:(NSDecimalNumber *)decimalNumber withBehavior:(id <NSDecimalNumberBehaviors>)behavior;
	 */
	public NSDecimalNumber decimalNumberByAdding(NSDecimalNumber decimalNumber, NSDecimalNumberBehaviors behavior){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumber *)decimalNumberBySubtracting:(NSDecimalNumber *)decimalNumber;
	 */
	public NSDecimalNumber decimalNumberBySubtracting(NSDecimalNumber decimalNumber){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumber *)decimalNumberBySubtracting:(NSDecimalNumber *)decimalNumber withBehavior:(id <NSDecimalNumberBehaviors>)behavior;
	 */
	public NSDecimalNumber decimalNumberBySubtracting(NSDecimalNumber decimalNumber, NSDecimalNumberBehaviors behavior){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumber *)decimalNumberByMultiplyingBy:(NSDecimalNumber *)decimalNumber;
	 */
	public NSDecimalNumber decimalNumberByMultiplyingBy(NSDecimalNumber decimalNumber){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumber *)decimalNumberByMultiplyingBy:(NSDecimalNumber *)decimalNumber withBehavior:(id <NSDecimalNumberBehaviors>)behavior;
	 */
	public NSDecimalNumber decimalNumberByMultiplyingBy(NSDecimalNumber decimalNumber, NSDecimalNumberBehaviors behavior){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumber *)decimalNumberByDividingBy:(NSDecimalNumber *)decimalNumber;
	 */
	public NSDecimalNumber decimalNumberByDividingBy(NSDecimalNumber decimalNumber){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumber *)decimalNumberByDividingBy:(NSDecimalNumber *)decimalNumber withBehavior:(id <NSDecimalNumberBehaviors>)behavior;
	 */
	public NSDecimalNumber decimalNumberByDividingBy(NSDecimalNumber decimalNumber, NSDecimalNumberBehaviors behavior){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumber *)decimalNumberByRaisingToPower:(NSUInteger)power;
	 */
	public NSDecimalNumber decimalNumberByRaisingToPower(int power){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumber *)decimalNumberByRaisingToPower:(NSUInteger)power withBehavior:(id <NSDecimalNumberBehaviors>)behavior;
	 */
	public NSDecimalNumber decimalNumberByRaisingToPower(int power, NSDecimalNumberBehaviors behavior){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumber *)decimalNumberByMultiplyingByPowerOf10:(short)power;
	 */
	public NSDecimalNumber decimalNumberByMultiplyingByPowerOf10(short power){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumber *)decimalNumberByMultiplyingByPowerOf10:(short)power withBehavior:(id <NSDecimalNumberBehaviors>)behavior;
	 */
	public NSDecimalNumber decimalNumberByMultiplyingByPowerOf10(short power, NSDecimalNumberBehaviors behavior){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDecimalNumber *)decimalNumberByRoundingAccordingToBehavior:(id <NSDecimalNumberBehaviors>)behavior;
	 */
	public NSDecimalNumber decimalNumberByRoundingAccordingToBehavior(NSDecimalNumberBehaviors behavior){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonResult)compare:(NSNumber *)decimalNumber;
	 */
	public int compare(NSNumber decimalNumber){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (const char *)objCType;
	 */
	public byte[] objCType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (double)doubleValue;
	 */
	public double doubleValue(){
		throw new RuntimeException("Stub");
	}
}
