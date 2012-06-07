package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={NSError.class})
public class NSString extends NSObject {

	/*
	 * Initialization enumerations
	 */

	public static enum CStringNullTerminated {
		UTF8, Default;
	}

	public static enum Type {
		String, File;
	}

	public static enum CString {
		UTF8, Default;
	}

	/*
	 * Static methods
	 */

	/**
	 * + (NSString *)pathWithComponents:(NSArray *)components;
	 */
	public static String pathWithComponents(List components){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSStringEncoding)defaultCStringEncoding;
	 */
	public static int defaultCStringEncoding(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (const NSStringEncoding *)availableStringEncodings;
	 */
	public static int[] availableStringEncodings(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSString *)localizedNameOfStringEncoding:(NSStringEncoding)encoding;
	 */
	public static String localizedNameOfStringEncoding(int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)string;
	 */
	public static String string(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)stringWithString:(NSString *)string;
	 */
	public static String stringWithString(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)stringWithCharacters:(const unichar *)characters length:(NSUInteger)length;
	 */
	public static String stringWithCharacters(short[] characters, int length){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)stringWithUTF8String:(const char *)nullTerminatedCString;
	 */
	public static String stringWithUTF8String(byte[] nullTerminatedCString){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)stringWithFormat:(NSString *)format, ... ;
	 */
	public static String stringWithFormat(String... format){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)localizedStringWithFormat:(NSString *)format, ... ;
	 */
	public static Object localizedStringWithFormat(String... format){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)stringWithCString:(const char *)cString encoding:(NSStringEncoding)enc;
	 */
	public static String stringWithCStringEncoding(byte[] cString, int enc){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)stringWithContentsOfURL:(NSURL *)url encoding:(NSStringEncoding)enc error:(NSError **)error;
	 */
	public static String stringWithContentsOfURL(NSURL url, int enc, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)stringWithContentsOfFile:(NSString *)path encoding:(NSStringEncoding)enc error:(NSError **)error;
	 */
	public static String stringWithContentsOfFile(String path, int enc, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)stringWithContentsOfURL:(NSURL *)url usedEncoding:(NSStringEncoding *)enc error:(NSError **)error;
	 */
	public static String stringWithContentsOfURL(NSURL url, int[] enc, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)stringWithContentsOfFile:(NSString *)path usedEncoding:(NSStringEncoding *)enc error:(NSError **)error;
	 */
	public static String stringWithContentsOfFile(String path, int[] enc, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)stringWithContentsOfFile:(NSString *)path ;
	 */
	public static String stringWithContentsOfFile(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)stringWithContentsOfURL:(NSURL *)url ;
	 */
	public static String stringWithContentsOfURL(NSURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)stringWithCString:(const char *)bytes length:(NSUInteger)length ;
	 */
	public static String stringWithCStringLength(byte[] bytes, int length){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)stringWithCString:(const char *)bytes ;
	 */
	public static String stringWithCString(byte[] bytes){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSString *NSStringFromSelector(SEL aSelector);
	 */
	public static String fromSelector(SEL aSelector){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSString *NSStringFromClass(Class aClass);
	 */
	public static String fromClass(Class aClass){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSString *NSStringFromProtocol(Protocol *proto) ;
	 */
	public static String fromProtocol(Protocol proto){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSString *NSStringFromRange(NSRange range);
	 */
	public static String fromRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSString *NSStringFromCGPoint(CGPoint point);
	 */
	public static String fromCGPoint(CGPoint point){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSString *NSStringFromCGSize(CGSize size);
	 */
	public static String fromCGSize(CGSize size){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSString *NSStringFromCGRect(CGRect rect);
	 */
	public static String fromCGRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSString *NSStringFromCGAffineTransform(CGAffineTransform transform);
	 */
	public static String fromCGAffineTransform(CGAffineTransform transform){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSString *NSStringFromUIEdgeInsets(UIEdgeInsets insets);
	 */
	public static String fromUIEdgeInsets(UIEdgeInsets insets){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)init;
	 */
	public NSString() {}

	/**
	 * - (id)initWithCharactersNoCopy:(unichar *)characters length:(NSUInteger)length freeWhenDone:(BOOL)freeBuffer;
	 */
	public NSString(short[] characters, int length, boolean freeBuffer) {}

	/**
	 * - (id)initWithCharacters:(const unichar *)characters length:(NSUInteger)length;
	 */
	public NSString(short[] characters, int length) {}

	/**
	 * - (id)initWithUTF8String:(const char *)nullTerminatedCString;
	 * - (id)initWithCString:(const char *)bytes ;
	 */
	public NSString(byte[] nullTerminatedCString, NSString.CStringNullTerminated cstringnullterminated) {}

	/**
	 * - (id)initWithString:(NSString *)aString;
	 * - (id)initWithContentsOfFile:(NSString *)path ;
	 */
	public NSString(String aString, NSString.Type type) {}

	/**
	 * - (id)initWithFormat:(NSString *)format, ... ;
	 */
	public NSString(String... format) {}

	/**
	 * - (id)initWithFormat:(NSString *)format arguments:(va_list)argList ;
	 */
	public NSString(String format, byte[] argList) {}

	/**
	 * - (id)initWithFormat:(NSString *)format locale:(id)locale, ... ;
	 */
	public NSString(String format, Object... locale) {}

	/**
	 * - (id)initWithFormat:(NSString *)format locale:(id)locale arguments:(va_list)argList ;
	 */
	public NSString(String format, Object locale, byte[] argList) {}

	/**
	 * - (id)initWithData:(NSData *)data encoding:(NSStringEncoding)encoding;
	 */
	public NSString(NSData data, int encoding) {}

	/**
	 * - (id)initWithBytes:(const void *)bytes length:(NSUInteger)len encoding:(NSStringEncoding)encoding;
	 */
	public NSString(byte[] bytes, int len, int encoding) {}

	/**
	 * - (id)initWithBytesNoCopy:(void *)bytes length:(NSUInteger)len encoding:(NSStringEncoding)encoding freeWhenDone:(BOOL)freeBuffer;
	 */
	public NSString(byte[] bytes, int len, int encoding, boolean freeBuffer) {}

	/**
	 * - (id)initWithCString:(const char *)nullTerminatedCString encoding:(NSStringEncoding)encoding;
	 * - (id)initWithCString:(const char *)bytes length:(NSUInteger)length ;
	 */
	public NSString(byte[] nullTerminatedCString, int encoding, NSString.CString cstring) {}

	/**
	 * - (id)initWithContentsOfURL:(NSURL *)url encoding:(NSStringEncoding)enc error:(NSError **)error;
	 */
	public NSString(NSURL url, int enc, Reference<NSError> error) {}

	/**
	 * - (id)initWithContentsOfFile:(NSString *)path encoding:(NSStringEncoding)enc error:(NSError **)error;
	 */
	public NSString(String path, int enc, Reference<NSError> error) {}

	/**
	 * - (id)initWithContentsOfURL:(NSURL *)url usedEncoding:(NSStringEncoding *)enc error:(NSError **)error;
	 */
	public NSString(NSURL url, int[] enc, Reference<NSError> error) {}

	/**
	 * - (id)initWithContentsOfFile:(NSString *)path usedEncoding:(NSStringEncoding *)enc error:(NSError **)error;
	 */
	public NSString(String path, int[] enc, Reference<NSError> error) {}

	/**
	 * - (id)initWithContentsOfURL:(NSURL *)url ;
	 */
	public NSString(NSURL url) {}

	/**
	 * - (id)initWithCStringNoCopy:(char *)bytes length:(NSUInteger)length freeWhenDone:(BOOL)freeBuffer ;
	 */
	public NSString(byte[] bytes, int length, boolean freeBuffer) {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSArray *)pathComponents;
	 */
	public List pathComponents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isAbsolutePath;
	 */
	public boolean isAbsolutePath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)lastPathComponent;
	 */
	public String lastPathComponent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByDeletingLastPathComponent;
	 */
	public String stringByDeletingLastPathComponent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByAppendingPathComponent:(NSString *)str;
	 */
	public String stringByAppendingPathComponent(String str){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)pathExtension;
	 */
	public String pathExtension(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByDeletingPathExtension;
	 */
	public String stringByDeletingPathExtension(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByAppendingPathExtension:(NSString *)str;
	 */
	public String stringByAppendingPathExtension(String str){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByAbbreviatingWithTildeInPath;
	 */
	public String stringByAbbreviatingWithTildeInPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByExpandingTildeInPath;
	 */
	public String stringByExpandingTildeInPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByStandardizingPath;
	 */
	public String stringByStandardizingPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByResolvingSymlinksInPath;
	 */
	public String stringByResolvingSymlinksInPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)stringsByAppendingPaths:(NSArray *)paths;
	 */
	public List stringsByAppendingPaths(List paths){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)completePathIntoString:(NSString **)outputName caseSensitive:(BOOL)flag matchesIntoArray:(NSArray **)outputArray filterTypes:(NSArray *)filterTypes;
	 */
	public int completePathIntoString(Reference<String> outputName, boolean flag, Reference<List> outputArray, List filterTypes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (__strong const char *)fileSystemRepresentation;
	 */
	public byte[] fileSystemRepresentation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)getFileSystemRepresentation:(char *)cname maxLength:(NSUInteger)max;
	 */
	public boolean getFileSystemRepresentation(byte[] cname, int max){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)length;
	 */
	public int length(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (unichar)characterAtIndex:(NSUInteger)index;
	 */
	public short characterAtIndex(int index){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getCharacters:(unichar *)buffer range:(NSRange)aRange;
	 */
	public void getCharacters(short[] buffer, NSRange aRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)substringFromIndex:(NSUInteger)from;
	 */
	public String substringFromIndex(int from){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)substringToIndex:(NSUInteger)to;
	 */
	public String substringToIndex(int to){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)substringWithRange:(NSRange)range;
	 */
	public String substringWithRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonResult)compare:(NSString *)string;
	 */
	public int compare(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask;
	 */
	public int compare(String string, int mask){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)compareRange;
	 */
	public int compare(String string, int mask, NSRange compareRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)compareRange locale:(id)locale;
	 */
	public int compare(String string, int mask, NSRange compareRange, Object locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonResult)caseInsensitiveCompare:(NSString *)string;
	 */
	public int caseInsensitiveCompare(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonResult)localizedCompare:(NSString *)string;
	 */
	public int localizedCompare(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonResult)localizedCaseInsensitiveCompare:(NSString *)string;
	 */
	public int localizedCaseInsensitiveCompare(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonResult)localizedStandardCompare:(NSString *)string ;
	 */
	public int localizedStandardCompare(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isEqualToString:(NSString *)aString;
	 */
	public boolean isEqualToString(String aString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)hasPrefix:(NSString *)aString;
	 */
	public boolean hasPrefix(String aString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)hasSuffix:(NSString *)aString;
	 */
	public boolean hasSuffix(String aString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)rangeOfString:(NSString *)aString;
	 */
	public NSRange rangeOfString(String aString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)rangeOfString:(NSString *)aString options:(NSStringCompareOptions)mask;
	 */
	public NSRange rangeOfString(String aString, int mask){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)rangeOfString:(NSString *)aString options:(NSStringCompareOptions)mask range:(NSRange)searchRange;
	 */
	public NSRange rangeOfString(String aString, int mask, NSRange searchRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)rangeOfString:(NSString *)aString options:(NSStringCompareOptions)mask range:(NSRange)searchRange locale:(NSLocale *)locale;
	 */
	public NSRange rangeOfString(String aString, int mask, NSRange searchRange, NSLocale locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)aSet;
	 */
	public NSRange rangeOfCharacterFromSet(NSCharacterSet aSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)aSet options:(NSStringCompareOptions)mask;
	 */
	public NSRange rangeOfCharacterFromSet(NSCharacterSet aSet, int mask){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)aSet options:(NSStringCompareOptions)mask range:(NSRange)searchRange;
	 */
	public NSRange rangeOfCharacterFromSet(NSCharacterSet aSet, int mask, NSRange searchRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)rangeOfComposedCharacterSequenceAtIndex:(NSUInteger)index;
	 */
	public NSRange rangeOfComposedCharacterSequenceAtIndex(int index){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)rangeOfComposedCharacterSequencesForRange:(NSRange)range;
	 */
	public NSRange rangeOfComposedCharacterSequencesForRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByAppendingString:(NSString *)aString;
	 */
	public String stringByAppendingString(String aString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByAppendingFormat:(NSString *)format, ... ;
	 */
	public String stringByAppendingFormat(String... format){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (double)doubleValue;
	 */
	public double doubleValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (float)floatValue;
	 */
	public float floatValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (int)intValue;
	 */
	public int intValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)integerValue;
	 */
	public int integerValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (long long)longLongValue;
	 */
	public long longLongValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)boolValue;
	 */
	public boolean boolValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)componentsSeparatedByString:(NSString *)separator;
	 */
	public List componentsSeparatedByString(String separator){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)componentsSeparatedByCharactersInSet:(NSCharacterSet *)separator;
	 */
	public List componentsSeparatedByCharactersInSet(NSCharacterSet separator){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)commonPrefixWithString:(NSString *)aString options:(NSStringCompareOptions)mask;
	 */
	public String commonPrefixWithString(String aString, int mask){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)uppercaseString;
	 */
	public String uppercaseString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)lowercaseString;
	 */
	public String lowercaseString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)capitalizedString;
	 */
	public String capitalizedString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByTrimmingCharactersInSet:(NSCharacterSet *)set;
	 */
	public String stringByTrimmingCharactersInSet(NSCharacterSet set){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByPaddingToLength:(NSUInteger)newLength withString:(NSString *)padString startingAtIndex:(NSUInteger)padIndex;
	 */
	public String stringByPaddingToLength(int newLength, String padString, int padIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getLineStart:(NSUInteger *)startPtr end:(NSUInteger *)lineEndPtr contentsEnd:(NSUInteger *)contentsEndPtr forRange:(NSRange)range;
	 */
	public void getLineStart(int[] startPtr, int[] lineEndPtr, int[] contentsEndPtr, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)lineRangeForRange:(NSRange)range;
	 */
	public NSRange lineRangeForRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getParagraphStart:(NSUInteger *)startPtr end:(NSUInteger *)parEndPtr contentsEnd:(NSUInteger *)contentsEndPtr forRange:(NSRange)range;
	 */
	public void getParagraphStart(int[] startPtr, int[] parEndPtr, int[] contentsEndPtr, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSRange)paragraphRangeForRange:(NSRange)range;
	 */
	public NSRange paragraphRangeForRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateSubstringsInRange:(NSRange)range options:(NSStringEnumerationOptions)opts usingBlock:(void (^)(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop))block ;
	 */
	public void enumerateSubstringsInRange(NSRange range, int opts, Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateLinesUsingBlock:(void (^)(NSString *line, BOOL *stop))block ;
	 */
	public void enumerateLinesUsingBlock(Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)description;
	 */
	public String description(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)hash;
	 */
	public int hash(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSStringEncoding)fastestEncoding;
	 */
	public int fastestEncoding(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSStringEncoding)smallestEncoding;
	 */
	public int smallestEncoding(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)dataUsingEncoding:(NSStringEncoding)encoding allowLossyConversion:(BOOL)lossy;
	 */
	public NSData dataUsingEncoding(int encoding, boolean lossy){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)dataUsingEncoding:(NSStringEncoding)encoding;
	 */
	public NSData dataUsingEncoding(int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canBeConvertedToEncoding:(NSStringEncoding)encoding;
	 */
	public boolean canBeConvertedToEncoding(int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (__strong const char *)cStringUsingEncoding:(NSStringEncoding)encoding;
	 */
	public byte[] cStringUsingEncoding(int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)getCString:(char *)buffer maxLength:(NSUInteger)maxBufferCount encoding:(NSStringEncoding)encoding;
	 */
	public boolean getCString(byte[] buffer, int maxBufferCount, int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)getBytes:(void *)buffer maxLength:(NSUInteger)maxBufferCount usedLength:(NSUInteger *)usedBufferCount encoding:(NSStringEncoding)encoding options:(NSStringEncodingConversionOptions)options range:(NSRange)range remainingRange:(NSRangePointer)leftover;
	 */
	public boolean getBytes(byte[] buffer, int maxBufferCount, int[] usedBufferCount, int encoding, int options, NSRange range, Reference<NSRange> leftover){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)maximumLengthOfBytesUsingEncoding:(NSStringEncoding)enc;
	 */
	public int maximumLengthOfBytesUsingEncoding(int enc){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)lengthOfBytesUsingEncoding:(NSStringEncoding)enc;
	 */
	public int lengthOfBytesUsingEncoding(int enc){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)decomposedStringWithCanonicalMapping;
	 */
	public String decomposedStringWithCanonicalMapping(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)precomposedStringWithCanonicalMapping;
	 */
	public String precomposedStringWithCanonicalMapping(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)decomposedStringWithCompatibilityMapping;
	 */
	public String decomposedStringWithCompatibilityMapping(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)precomposedStringWithCompatibilityMapping;
	 */
	public String precomposedStringWithCompatibilityMapping(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByFoldingWithOptions:(NSStringCompareOptions)options locale:(NSLocale *)locale;
	 */
	public String stringByFoldingWithOptions(int options, NSLocale locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange;
	 */
	public String stringByReplacingOccurrencesOfString(String target, String replacement, int options, NSRange searchRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement;
	 */
	public String stringByReplacingOccurrencesOfString(String target, String replacement){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByReplacingCharactersInRange:(NSRange)range withString:(NSString *)replacement;
	 */
	public String stringByReplacingCharactersInRange(NSRange range, String replacement){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (__strong const char *)UTF8String;
	 */
	public byte[] UTF8String(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)writeToURL:(NSURL *)url atomically:(BOOL)useAuxiliaryFile encoding:(NSStringEncoding)enc error:(NSError **)error;
	 */
	public boolean writeToURL(NSURL url, boolean useAuxiliaryFile, int enc, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile encoding:(NSStringEncoding)enc error:(NSError **)error;
	 */
	public boolean writeToFile(String path, boolean useAuxiliaryFile, int enc, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)propertyList;
	 */
	public Object propertyList(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)propertyListFromStringsFileFormat;
	 */
	public Map propertyListFromStringsFileFormat(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (const char *)cString ;
	 */
	public byte[] cString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (const char *)lossyCString ;
	 */
	public byte[] lossyCString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)cStringLength ;
	 */
	public int cStringLength(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getCString:(char *)bytes ;
	 */
	public void getCString(byte[] bytes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getCString:(char *)bytes maxLength:(NSUInteger)maxLength ;
	 */
	public void getCString(byte[] bytes, int maxLength){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getCString:(char *)bytes maxLength:(NSUInteger)maxLength range:(NSRange)aRange remainingRange:(NSRangePointer)leftoverRange ;
	 */
	public void getCString(byte[] bytes, int maxLength, NSRange aRange, Reference<NSRange> leftoverRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile ;
	 */
	public boolean writeToFile(String path, boolean useAuxiliaryFile){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)writeToURL:(NSURL *)url atomically:(BOOL)atomically ;
	 */
	public boolean writeToURL(NSURL url, boolean atomically){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getCharacters:(unichar *)buffer;
	 */
	public void getCharacters(short[] buffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByAddingPercentEscapesUsingEncoding:(NSStringEncoding)enc ;
	 */
	public String stringByAddingPercentEscapesUsingEncoding(int enc){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringByReplacingPercentEscapesUsingEncoding:(NSStringEncoding)enc ;
	 */
	public String stringByReplacingPercentEscapesUsingEncoding(int enc){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)sizeWithFont:(UIFont *)font;
	 */
	public CGSize sizeWithFont(UIFont font){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)sizeWithFont:(UIFont *)font forWidth:(CGFloat)width lineBreakMode:(UILineBreakMode)lineBreakMode;
	 */
	public CGSize sizeWithFont(UIFont font, float width, int lineBreakMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)drawAtPoint:(CGPoint)point withFont:(UIFont *)font;
	 */
	public CGSize drawAtPoint(CGPoint point, UIFont font){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)drawAtPoint:(CGPoint)point forWidth:(CGFloat)width withFont:(UIFont *)font lineBreakMode:(UILineBreakMode)lineBreakMode;
	 */
	public CGSize drawAtPoint(CGPoint point, float width, UIFont font, int lineBreakMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size;
	 */
	public CGSize sizeWithFont(UIFont font, CGSize size){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(UILineBreakMode)lineBreakMode;
	 */
	public CGSize sizeWithFont(UIFont font, CGSize size, int lineBreakMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)drawInRect:(CGRect)rect withFont:(UIFont *)font;
	 */
	public CGSize drawInRect(CGRect rect, UIFont font){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)drawInRect:(CGRect)rect withFont:(UIFont *)font lineBreakMode:(UILineBreakMode)lineBreakMode;
	 */
	public CGSize drawInRect(CGRect rect, UIFont font, int lineBreakMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)drawInRect:(CGRect)rect withFont:(UIFont *)font lineBreakMode:(UILineBreakMode)lineBreakMode alignment:(UITextAlignment)alignment;
	 */
	public CGSize drawInRect(CGRect rect, UIFont font, int lineBreakMode, int alignment){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)sizeWithFont:(UIFont *)font minFontSize:(CGFloat)minFontSize actualFontSize:(CGFloat *)actualFontSize forWidth:(CGFloat)width lineBreakMode:(UILineBreakMode)lineBreakMode;
	 */
	public CGSize sizeWithFont(UIFont font, float minFontSize, float[] actualFontSize, float width, int lineBreakMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)drawAtPoint:(CGPoint)point forWidth:(CGFloat)width withFont:(UIFont *)font fontSize:(CGFloat)fontSize lineBreakMode:(UILineBreakMode)lineBreakMode baselineAdjustment:(UIBaselineAdjustment)baselineAdjustment;
	 */
	public CGSize drawAtPoint(CGPoint point, float width, UIFont font, float fontSize, int lineBreakMode, int baselineAdjustment){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)drawAtPoint:(CGPoint)point forWidth:(CGFloat)width withFont:(UIFont *)font minFontSize:(CGFloat)minFontSize actualFontSize:(CGFloat *)actualFontSize lineBreakMode:(UILineBreakMode)lineBreakMode baselineAdjustment:(UIBaselineAdjustment)baselineAdjustment;
	 */
	public CGSize drawAtPoint(CGPoint point, float width, UIFont font, float minFontSize, float[] actualFontSize, int lineBreakMode, int baselineAdjustment){
		throw new RuntimeException("Stub");
	}

	/*
	 * Injected methods
	 */
	public String toString(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
