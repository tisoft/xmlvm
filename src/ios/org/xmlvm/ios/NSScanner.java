package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSScanner extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)scannerWithString:(NSString *)string;
	 */
	public static NSScanner scannerWithString(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)localizedScannerWithString:(NSString *)string;
	 */
	public static Object localizedScannerWithString(String string){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithString:(NSString *)string;
	 */
	public NSScanner(String string) {}

	/** Default constructor */
	public NSScanner() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)scanDecimal:(NSDecimal *)dcm;
	 */
	public boolean scanDecimal(Reference<NSDecimal> dcm){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)string;
	 */
	public String string(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)scanLocation;
	 */
	public int scanLocation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setScanLocation:(NSUInteger)pos;
	 */
	public void setScanLocation(int pos){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCharactersToBeSkipped:(NSCharacterSet *)set;
	 */
	public void setCharactersToBeSkipped(NSCharacterSet set){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCaseSensitive:(BOOL)flag;
	 */
	public void setCaseSensitive(boolean flag){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setLocale:(id)locale;
	 */
	public void setLocale(Object locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSCharacterSet *)charactersToBeSkipped;
	 */
	public NSCharacterSet charactersToBeSkipped(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)caseSensitive;
	 */
	public boolean caseSensitive(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)locale;
	 */
	public Object locale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)scanInt:(int *)value;
	 */
	public boolean scanInt(int[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)scanInteger:(NSInteger *)value;
	 */
	public boolean scanInteger(int[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)scanHexLongLong:(unsigned long long *)result;
	 */
	public boolean scanHexLongLong(long[] result){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)scanHexFloat:(float *)result;
	 */
	public boolean scanHexFloat(float[] result){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)scanHexDouble:(double *)result;
	 */
	public boolean scanHexDouble(double[] result){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)scanHexInt:(unsigned *)value;
	 */
	public boolean scanHexInt(int[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)scanLongLong:(long long *)value;
	 */
	public boolean scanLongLong(long[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)scanFloat:(float *)value;
	 */
	public boolean scanFloat(float[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)scanDouble:(double *)value;
	 */
	public boolean scanDouble(double[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)scanString:(NSString *)string intoString:(NSString **)value;
	 */
	public boolean scanString(String string, Reference<String> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)scanCharactersFromSet:(NSCharacterSet *)set intoString:(NSString **)value;
	 */
	public boolean scanCharactersFromSet(NSCharacterSet set, Reference<String> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)scanUpToString:(NSString *)string intoString:(NSString **)value;
	 */
	public boolean scanUpToString(String string, Reference<String> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)scanUpToCharactersFromSet:(NSCharacterSet *)set intoString:(NSString **)value;
	 */
	public boolean scanUpToCharactersFromSet(NSCharacterSet set, Reference<String> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isAtEnd;
	 */
	public boolean isAtEnd(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
