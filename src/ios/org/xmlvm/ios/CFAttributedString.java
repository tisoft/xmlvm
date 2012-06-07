package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFAttributedString {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFAttributedStringGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFAttributedStringRef CFAttributedStringCreateWithSubstring(CFAllocatorRef alloc, CFAttributedStringRef aStr, CFRange range) ;
	 */
	public static CFAttributedString createWithSubstring(CFAllocator alloc, CFAttributedString aStr, CFRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFAttributedStringRef CFAttributedStringCreateCopy(CFAllocatorRef alloc, CFAttributedStringRef aStr) ;
	 */
	public static CFAttributedString createCopy(CFAllocator alloc, CFAttributedString aStr){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableAttributedStringRef CFAttributedStringCreateMutableCopy(CFAllocatorRef alloc, CFIndex maxLength, CFAttributedStringRef aStr) ;
	 */
	public static CFAttributedString createMutableCopy(CFAllocator alloc, long maxLength, CFAttributedString aStr){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableAttributedStringRef CFAttributedStringCreateMutable(CFAllocatorRef alloc, CFIndex maxLength) ;
	 */
	public static CFAttributedString createMutable(CFAllocator alloc, long maxLength){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFAttributedStringReplaceString(CFMutableAttributedStringRef aStr, CFRange range, CFStringRef replacement) ;
	 */
	public static void replaceString(CFAttributedString aStr, CFRange range, String replacement){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableStringRef CFAttributedStringGetMutableString(CFMutableAttributedStringRef aStr) ;
	 */
	public static CFString getMutableString(CFAttributedString aStr){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFAttributedStringSetAttributes(CFMutableAttributedStringRef aStr, CFRange range, CFDictionaryRef replacement, Boolean clearOtherAttributes) ;
	 */
	public static void setAttributes(CFAttributedString aStr, CFRange range, CFDictionary replacement, byte clearOtherAttributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFAttributedStringSetAttribute(CFMutableAttributedStringRef aStr, CFRange range, CFStringRef attrName, CFTypeRef value) ;
	 */
	public static void setAttribute(CFAttributedString aStr, CFRange range, String attrName, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFAttributedStringRemoveAttribute(CFMutableAttributedStringRef aStr, CFRange range, CFStringRef attrName) ;
	 */
	public static void removeAttribute(CFAttributedString aStr, CFRange range, String attrName){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFAttributedStringReplaceAttributedString(CFMutableAttributedStringRef aStr, CFRange range, CFAttributedStringRef replacement) ;
	 */
	public static void replaceAttributedString(CFAttributedString aStr, CFRange range, CFAttributedString replacement){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFAttributedStringBeginEditing(CFMutableAttributedStringRef aStr) ;
	 */
	public static void beginEditing(CFAttributedString aStr){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFAttributedStringEndEditing(CFMutableAttributedStringRef aStr) ;
	 */
	public static void endEditing(CFAttributedString aStr){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFAttributedStringRef CFAttributedStringCreate(CFAllocatorRef alloc, CFStringRef str, CFDictionaryRef attributes) ;
	 */
	public CFAttributedString(CFAllocator alloc, String str, CFDictionary attributes) {}

	/** Default constructor */
	public CFAttributedString() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFStringRef CFAttributedStringGetString(CFAttributedStringRef aStr) ;
	 */
	public String getString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFAttributedStringGetLength(CFAttributedStringRef aStr) ;
	 */
	public long getLength(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFAttributedStringGetAttributes(CFAttributedStringRef aStr, CFIndex loc, CFRange *effectiveRange) ;
	 */
	public CFDictionary getAttributes(long loc, Reference<CFRange> effectiveRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CFAttributedStringGetAttribute(CFAttributedStringRef aStr, CFIndex loc, CFStringRef attrName, CFRange *effectiveRange) ;
	 */
	public byte[] getAttribute(long loc, String attrName, Reference<CFRange> effectiveRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFAttributedStringGetAttributesAndLongestEffectiveRange(CFAttributedStringRef aStr, CFIndex loc, CFRange inRange, CFRange *longestEffectiveRange) ;
	 */
	public CFDictionary getAttributesAndLongestEffectiveRange(long loc, CFRange inRange, Reference<CFRange> longestEffectiveRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CFAttributedStringGetAttributeAndLongestEffectiveRange(CFAttributedStringRef aStr, CFIndex loc, CFStringRef attrName, CFRange inRange, CFRange *longestEffectiveRange) ;
	 */
	public byte[] getAttributeAndLongestEffectiveRange(long loc, String attrName, CFRange inRange, Reference<CFRange> longestEffectiveRange){
		throw new RuntimeException("Stub");
	}
}
