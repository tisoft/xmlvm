package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSRegularExpression extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSRegularExpression *)regularExpressionWithPattern:(NSString *)pattern options:(NSRegularExpressionOptions)options error:(NSError **)error;
	 */
	public static NSRegularExpression regularExpressionWithPattern(String pattern, int options, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSString *)escapedPatternForString:(NSString *)string;
	 */
	public static String escapedPatternForString(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSString *)escapedTemplateForString:(NSString *)string;
	 */
	public static String escapedTemplateForString(String string){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithPattern:(NSString *)pattern options:(NSRegularExpressionOptions)options error:(NSError **)error;
	 */
	public NSRegularExpression(String pattern, int options, Reference<NSError> error) {}

	/** Default constructor */
	NSRegularExpression() {}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly) NSString *pattern;
	 */
	public String getPattern(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSRegularExpressionOptions options;
	 */
	public int getOptions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSUInteger numberOfCaptureGroups;
	 */
	public int getNumberOfCaptureGroups(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)enumerateMatchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range usingBlock:(void (^)(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop))block;
	 */
	public void enumerateMatchesInString(String string, int options, NSRange range, Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)matchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range;
	 */
	public List matchesInString(String string, int options, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)numberOfMatchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range;
	 */
	public int numberOfMatchesInString(String string, int options, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSTextCheckingResult *)firstMatchInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range;
	 */
	public NSTextCheckingResult firstMatchInString(String string, int options, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)rangeOfFirstMatchInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range;
	 */
	public NSRange rangeOfFirstMatchInString(String string, int options, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByReplacingMatchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range withTemplate:(NSString *)templ;
	 */
	public String stringByReplacingMatchesInString(String string, int options, NSRange range, String templ){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)replaceMatchesInString:(NSMutableString *)string options:(NSMatchingOptions)options range:(NSRange)range withTemplate:(NSString *)templ;
	 */
	public int replaceMatchesInString(NSMutableString string, int options, NSRange range, String templ){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)replacementStringForResult:(NSTextCheckingResult *)result inString:(NSString *)string offset:(NSInteger)offset template:(NSString *)templ;
	 */
	public String replacementStringForResult(NSTextCheckingResult result, String string, int offset, String templ){
		throw new RuntimeException("Stub");
	}
}
