package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFStringTokenizer {

	/*
	 * Static methods
	 */

	/**
	 * CFStringRef CFStringTokenizerCopyBestStringLanguage(CFStringRef string, CFRange range) ;
	 */
	public static String copyBestStringLanguage(String string, CFRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CFStringTokenizerGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFStringTokenizerRef CFStringTokenizerCreate(CFAllocatorRef alloc, CFStringRef string, CFRange range, CFOptionFlags options, CFLocaleRef locale) ;
	 */
	public CFStringTokenizer(CFAllocator alloc, String string, CFRange range, long options, CFLocale locale) {}

	/** Default constructor */
	CFStringTokenizer() {}

	/*
	 * Instance methods
	 */

	/**
	 * void CFStringTokenizerSetString(CFStringTokenizerRef tokenizer, CFStringRef string, CFRange range) ;
	 */
	public void setString(String string, CFRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringTokenizerTokenType CFStringTokenizerGoToTokenAtIndex(CFStringTokenizerRef tokenizer, CFIndex index) ;
	 */
	public long goToTokenAtIndex(long index){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringTokenizerTokenType CFStringTokenizerAdvanceToNextToken(CFStringTokenizerRef tokenizer) ;
	 */
	public long advanceToNextToken(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer) ;
	 */
	public CFRange getCurrentTokenRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CFStringTokenizerCopyCurrentTokenAttribute(CFStringTokenizerRef tokenizer, CFOptionFlags attribute) ;
	 */
	public byte[] copyCurrentTokenAttribute(long attribute){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFStringTokenizerGetCurrentSubTokens(CFStringTokenizerRef tokenizer, CFRange *ranges, CFIndex maxRangeLength, CFMutableArrayRef derivedSubTokens) ;
	 */
	public long getCurrentSubTokens(Reference<CFRange> ranges, long maxRangeLength, CFArray derivedSubTokens){
		throw new RuntimeException("Stub");
	}
}
