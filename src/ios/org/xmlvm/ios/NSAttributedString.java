package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSAttributedString extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithString:(NSString *)str;
	 */
	public NSAttributedString(String str) {}

	/**
	 * - (id)initWithString:(NSString *)str attributes:(NSDictionary *)attrs;
	 */
	public NSAttributedString(String str, Map attrs) {}

	/**
	 * - (id)initWithAttributedString:(NSAttributedString *)attrStr;
	 */
	public NSAttributedString(NSAttributedString attrStr) {}

	/** Default constructor */
	public NSAttributedString() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)string;
	 */
	public String string(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)attributesAtIndex:(NSUInteger)location effectiveRange:(NSRangePointer)range;
	 */
	public Map attributesAtIndex(int location, Reference<NSRange> range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)length;
	 */
	public int length(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)attribute:(NSString *)attrName atIndex:(NSUInteger)location effectiveRange:(NSRangePointer)range;
	 */
	public Object attribute(String attrName, int location, Reference<NSRange> range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSAttributedString *)attributedSubstringFromRange:(NSRange)range;
	 */
	public NSAttributedString attributedSubstringFromRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)attributesAtIndex:(NSUInteger)location longestEffectiveRange:(NSRangePointer)range inRange:(NSRange)rangeLimit;
	 */
	public Map attributesAtIndex(int location, Reference<NSRange> range, NSRange rangeLimit){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)attribute:(NSString *)attrName atIndex:(NSUInteger)location longestEffectiveRange:(NSRangePointer)range inRange:(NSRange)rangeLimit;
	 */
	public Object attribute(String attrName, int location, Reference<NSRange> range, NSRange rangeLimit){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isEqualToAttributedString:(NSAttributedString *)other;
	 */
	public boolean isEqualToAttributedString(NSAttributedString other){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateAttributesInRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void (^)(NSDictionary *attrs, NSRange range, BOOL *stop))block ;
	 */
	public void enumerateAttributesInRange(NSRange enumerationRange, int opts, Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateAttribute:(NSString *)attrName inRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void (^)(id value, NSRange range, BOOL *stop))block ;
	 */
	public void enumerateAttribute(String attrName, NSRange enumerationRange, int opts, Object block){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
