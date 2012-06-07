package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSMutableString extends NSString {

	/*
	 * Static methods
	 */

	/**
	 * + (id)stringWithCapacity:(NSUInteger)capacity;
	 */
	public static NSMutableString stringWithCapacity(int capacity){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */
	public NSMutableString(short[] characters, int length, boolean freeBuffer) {
		super(characters, length, freeBuffer);
	}
	public NSMutableString(short[] characters, int length) {
		super(characters, length);
	}
	public NSMutableString(byte[] nullTerminatedCString, NSString.CStringNullTerminated cstringnullterminated) {
		super(nullTerminatedCString, cstringnullterminated);
	}
	public NSMutableString(String aString, NSString.Type type) {
		super(aString, type);
	}
	public NSMutableString(String... format) {
		super(format);
	}
	public NSMutableString(String format, byte[] argList) {
		super(format, argList);
	}
	public NSMutableString(String format, Object... locale) {
		super(format, locale);
	}
	public NSMutableString(String format, Object locale, byte[] argList) {
		super(format, locale, argList);
	}
	public NSMutableString(NSData data, int encoding) {
		super(data, encoding);
	}
	public NSMutableString(byte[] bytes, int len, int encoding) {
		super(bytes, len, encoding);
	}
	public NSMutableString(byte[] bytes, int len, int encoding, boolean freeBuffer) {
		super(bytes, len, encoding, freeBuffer);
	}
	public NSMutableString(byte[] nullTerminatedCString, int encoding, NSString.CString cstring) {
		super(nullTerminatedCString, encoding, cstring);
	}
	public NSMutableString(NSURL url, int enc, Reference<NSError> error) {
		super(url, enc, error);
	}
	public NSMutableString(String path, int enc, Reference<NSError> error) {
		super(path, enc, error);
	}
	public NSMutableString(NSURL url, int[] enc, Reference<NSError> error) {
		super(url, enc, error);
	}
	public NSMutableString(String path, int[] enc, Reference<NSError> error) {
		super(path, enc, error);
	}
	public NSMutableString(NSURL url) {
		super(url);
	}
	public NSMutableString(byte[] bytes, int length, boolean freeBuffer) {
		super(bytes, length, freeBuffer);
	}

	/**
	 * - (id)initWithCapacity:(NSUInteger)capacity;
	 */
	public NSMutableString(int capacity) {}

	/** Default constructor */
	public NSMutableString() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)replaceCharactersInRange:(NSRange)range withString:(NSString *)aString;
	 */
	public void replaceCharactersInRange(NSRange range, String aString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertString:(NSString *)aString atIndex:(NSUInteger)loc;
	 */
	public void insertString(String aString, int loc){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)deleteCharactersInRange:(NSRange)range;
	 */
	public void deleteCharactersInRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)appendString:(NSString *)aString;
	 */
	public void appendString(String aString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)appendFormat:(NSString *)format, ... ;
	 */
	public void appendFormat(String... format){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setString:(NSString *)aString;
	 */
	public void setString(String aString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)replaceOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange;
	 */
	public int replaceOccurrencesOfString(String target, String replacement, int options, NSRange searchRange){
		throw new RuntimeException("Stub");
	}
}
