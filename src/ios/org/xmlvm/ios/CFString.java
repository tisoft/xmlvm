package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFString {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFStringGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateWithPascalString(CFAllocatorRef alloc, ConstStr255Param pStr, CFStringEncoding encoding);
	 */
	public static String createWithPascalString(CFAllocator alloc, byte[] pStr, int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateWithCString(CFAllocatorRef alloc, const char *cStr, CFStringEncoding encoding);
	 */
	public static String createWithCString(CFAllocator alloc, byte[] cStr, int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateWithBytes(CFAllocatorRef alloc, const UInt8 *bytes, CFIndex numBytes, CFStringEncoding encoding, Boolean isExternalRepresentation);
	 */
	public static String createWithBytes(CFAllocator alloc, byte[] bytes, long numBytes, int encoding, byte isExternalRepresentation){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateWithCharacters(CFAllocatorRef alloc, const UniChar *chars, CFIndex numChars);
	 */
	public static String createWithCharacters(CFAllocator alloc, short[] chars, long numChars){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateWithPascalStringNoCopy(CFAllocatorRef alloc, ConstStr255Param pStr, CFStringEncoding encoding, CFAllocatorRef contentsDeallocator);
	 */
	public static String createWithPascalStringNoCopy(CFAllocator alloc, byte[] pStr, int encoding, CFAllocator contentsDeallocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateWithCStringNoCopy(CFAllocatorRef alloc, const char *cStr, CFStringEncoding encoding, CFAllocatorRef contentsDeallocator);
	 */
	public static String createWithCStringNoCopy(CFAllocator alloc, byte[] cStr, int encoding, CFAllocator contentsDeallocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateWithBytesNoCopy(CFAllocatorRef alloc, const UInt8 *bytes, CFIndex numBytes, CFStringEncoding encoding, Boolean isExternalRepresentation, CFAllocatorRef contentsDeallocator) ;
	 */
	public static String createWithBytesNoCopy(CFAllocator alloc, byte[] bytes, long numBytes, int encoding, byte isExternalRepresentation, CFAllocator contentsDeallocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateWithCharactersNoCopy(CFAllocatorRef alloc, const UniChar *chars, CFIndex numChars, CFAllocatorRef contentsDeallocator);
	 */
	public static String createWithCharactersNoCopy(CFAllocator alloc, short[] chars, long numChars, CFAllocator contentsDeallocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateWithSubstring(CFAllocatorRef alloc, CFStringRef str, CFRange range);
	 */
	public static String createWithSubstring(CFAllocator alloc, String str, CFRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateCopy(CFAllocatorRef alloc, CFStringRef theString);
	 */
	public static String createCopy(CFAllocator alloc, String theString){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateWithFormat(CFAllocatorRef alloc, CFDictionaryRef formatOptions, CFStringRef format, ...) ;
	 */
	public static String createWithFormat(CFAllocator alloc, CFDictionary formatOptions, String... format){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateWithFormatAndArguments(CFAllocatorRef alloc, CFDictionaryRef formatOptions, CFStringRef format, va_list arguments) ;
	 */
	public static String createWithFormatAndArguments(CFAllocator alloc, CFDictionary formatOptions, String format, byte[] arguments){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableStringRef CFStringCreateMutable(CFAllocatorRef alloc, CFIndex maxLength);
	 */
	public static CFString createMutable(CFAllocator alloc, long maxLength){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableStringRef CFStringCreateMutableCopy(CFAllocatorRef alloc, CFIndex maxLength, CFStringRef theString);
	 */
	public static CFString createMutableCopy(CFAllocator alloc, long maxLength, String theString){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableStringRef CFStringCreateMutableWithExternalCharactersNoCopy(CFAllocatorRef alloc, UniChar *chars, CFIndex numChars, CFIndex capacity, CFAllocatorRef alCharactersAllocator);
	 */
	public static CFString createMutableWithExternalCharactersNoCopy(CFAllocator alloc, short[] chars, long numChars, long capacity, CFAllocator alCharactersAllocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateFromExternalRepresentation(CFAllocatorRef alloc, CFDataRef data, CFStringEncoding encoding);
	 */
	public static String createFromExternalRepresentation(CFAllocator alloc, CFData data, int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFStringCreateExternalRepresentation(CFAllocatorRef alloc, CFStringRef theString, CFStringEncoding encoding, UInt8 lossByte);
	 */
	public static CFData createExternalRepresentation(CFAllocator alloc, String theString, int encoding, byte lossByte){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringEncoding CFStringGetSystemEncoding(void);
	 */
	public static int getSystemEncoding(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFStringGetMaximumSizeForEncoding(CFIndex length, CFStringEncoding encoding);
	 */
	public static long getMaximumSizeForEncoding(long length, int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateWithFileSystemRepresentation(CFAllocatorRef alloc, const char *buffer) ;
	 */
	public static String createWithFileSystemRepresentation(CFAllocator alloc, byte[] buffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFStringCreateArrayWithFindResults(CFAllocatorRef alloc, CFStringRef theString, CFStringRef stringToFind, CFRange rangeToSearch, CFStringCompareFlags compareOptions);
	 */
	public static CFArray createArrayWithFindResults(CFAllocator alloc, String theString, String stringToFind, CFRange rangeToSearch, long compareOptions){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringIsHyphenationAvailableForLocale(CFLocaleRef locale) ;
	 */
	public static byte isHyphenationAvailableForLocale(CFLocale locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringCreateByCombiningStrings(CFAllocatorRef alloc, CFArrayRef theArray, CFStringRef separatorString);
	 */
	public static String createByCombiningStrings(CFAllocator alloc, CFArray theArray, String separatorString){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFStringCreateArrayBySeparatingStrings(CFAllocatorRef alloc, CFStringRef theString, CFStringRef separatorString);
	 */
	public static CFArray createArrayBySeparatingStrings(CFAllocator alloc, String theString, String separatorString){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringAppend(CFMutableStringRef theString, CFStringRef appendedString);
	 */
	public static void append(CFString theString, String appendedString){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringAppendCharacters(CFMutableStringRef theString, const UniChar *chars, CFIndex numChars);
	 */
	public static void appendCharacters(CFString theString, short[] chars, long numChars){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringAppendPascalString(CFMutableStringRef theString, ConstStr255Param pStr, CFStringEncoding encoding);
	 */
	public static void appendPascalString(CFString theString, byte[] pStr, int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringAppendCString(CFMutableStringRef theString, const char *cStr, CFStringEncoding encoding);
	 */
	public static void appendCString(CFString theString, byte[] cStr, int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringAppendFormat(CFMutableStringRef theString, CFDictionaryRef formatOptions, CFStringRef format, ...) ;
	 */
	public static void appendFormat(CFString theString, CFDictionary formatOptions, String... format){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringAppendFormatAndArguments(CFMutableStringRef theString, CFDictionaryRef formatOptions, CFStringRef format, va_list arguments) ;
	 */
	public static void appendFormatAndArguments(CFString theString, CFDictionary formatOptions, String format, byte[] arguments){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringInsert(CFMutableStringRef str, CFIndex idx, CFStringRef insertedStr);
	 */
	public static void insert(CFString str, long idx, String insertedStr){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringDelete(CFMutableStringRef theString, CFRange range);
	 */
	public static void delete(CFString theString, CFRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringReplace(CFMutableStringRef theString, CFRange range, CFStringRef replacement);
	 */
	public static void replace(CFString theString, CFRange range, String replacement){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringReplaceAll(CFMutableStringRef theString, CFStringRef replacement);
	 */
	public static void replaceAll(CFString theString, String replacement){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFStringFindAndReplace(CFMutableStringRef theString, CFStringRef stringToFind, CFStringRef replacementString, CFRange rangeToSearch, CFStringCompareFlags compareOptions);
	 */
	public static long findAndReplace(CFString theString, String stringToFind, String replacementString, CFRange rangeToSearch, long compareOptions){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringSetExternalCharactersNoCopy(CFMutableStringRef theString, UniChar *chars, CFIndex length, CFIndex capacity);
	 */
	public static void setExternalCharactersNoCopy(CFString theString, short[] chars, long length, long capacity){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringPad(CFMutableStringRef theString, CFStringRef padString, CFIndex length, CFIndex indexIntoPad);
	 */
	public static void pad(CFString theString, String padString, long length, long indexIntoPad){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringTrim(CFMutableStringRef theString, CFStringRef trimString);
	 */
	public static void trim(CFString theString, String trimString){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringTrimWhitespace(CFMutableStringRef theString);
	 */
	public static void trimWhitespace(CFString theString){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringLowercase(CFMutableStringRef theString, CFLocaleRef locale);
	 */
	public static void lowercase(CFString theString, CFLocale locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringUppercase(CFMutableStringRef theString, CFLocaleRef locale);
	 */
	public static void uppercase(CFString theString, CFLocale locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringCapitalize(CFMutableStringRef theString, CFLocaleRef locale);
	 */
	public static void capitalize(CFString theString, CFLocale locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringLowercase(CFMutableStringRef theString, const void *localeTBD);
	 */
	public static void lowercase(CFString theString, byte[] localeTBD){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringUppercase(CFMutableStringRef theString, const void *localeTBD);
	 */
	public static void uppercase(CFString theString, byte[] localeTBD){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringCapitalize(CFMutableStringRef theString, const void *localeTBD);
	 */
	public static void capitalize(CFString theString, byte[] localeTBD){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringNormalize(CFMutableStringRef theString, CFStringNormalizationForm theForm);
	 */
	public static void normalize(CFString theString, long theForm){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringFold(CFMutableStringRef theString, CFOptionFlags theFlags, CFLocaleRef theLocale) ;
	 */
	public static void fold(CFString theString, long theFlags, CFLocale theLocale){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringTransform(CFMutableStringRef string, CFRange *range, CFStringRef transform, Boolean reverse) ;
	 */
	public static byte transform(CFString string, Reference<CFRange> range, String transform, byte reverse){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringIsEncodingAvailable(CFStringEncoding encoding);
	 */
	public static byte isEncodingAvailable(int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * const CFStringEncoding *CFStringGetListOfAvailableEncodings(void);
	 */
	public static int[] getListOfAvailableEncodings(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringGetNameOfEncoding(CFStringEncoding encoding);
	 */
	public static String getNameOfEncoding(int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * unsigned long CFStringConvertEncodingToNSStringEncoding(CFStringEncoding encoding);
	 */
	public static long convertEncodingToNSStringEncoding(int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringEncoding CFStringConvertNSStringEncodingToEncoding(unsigned long encoding);
	 */
	public static int convertNSStringEncodingToEncoding(long encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * UInt32 CFStringConvertEncodingToWindowsCodepage(CFStringEncoding encoding);
	 */
	public static int convertEncodingToWindowsCodepage(int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringEncoding CFStringConvertWindowsCodepageToEncoding(UInt32 codepage);
	 */
	public static int convertWindowsCodepageToEncoding(int codepage){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFStringConvertEncodingToIANACharSetName(CFStringEncoding encoding);
	 */
	public static String convertEncodingToIANACharSetName(int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringEncoding CFStringGetMostCompatibleMacStringEncoding(CFStringEncoding encoding);
	 */
	public static int getMostCompatibleMacStringEncoding(int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * UniChar CFStringGetCharacterFromInlineBuffer(CFStringInlineBuffer *buf, CFIndex idx);
	 */
	public static short getCharacterFromInlineBuffer(Reference<CFStringInlineBuffer> buf, long idx){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringIsSurrogateHighCharacter(UniChar character);
	 */
	public static byte isSurrogateHighCharacter(short character){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringIsSurrogateLowCharacter(UniChar character);
	 */
	public static byte isSurrogateLowCharacter(short character){
		throw new RuntimeException("Stub");
	}

	/**
	 * UTF32Char CFStringGetLongCharacterForSurrogatePair(UniChar surrogateHigh, UniChar surrogateLow);
	 */
	public static int getLongCharacterForSurrogatePair(short surrogateHigh, short surrogateLow){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringGetSurrogatePairForLongCharacter(UTF32Char character, UniChar *surrogates);
	 */
	public static byte getSurrogatePairForLongCharacter(int character, short[] surrogates){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef __CFStringMakeConstantString(const char *cStr);
	 */
	public static String makeConstantString(byte[] cStr){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CFString() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFIndex CFStringGetLength(CFStringRef theString);
	 */
	public long getLength(){
		throw new RuntimeException("Stub");
	}

	/**
	 * UniChar CFStringGetCharacterAtIndex(CFStringRef theString, CFIndex idx);
	 */
	public short getCharacterAtIndex(long idx){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringGetCharacters(CFStringRef theString, CFRange range, UniChar *buffer);
	 */
	public void getCharacters(CFRange range, short[] buffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringGetPascalString(CFStringRef theString, StringPtr buffer, CFIndex bufferSize, CFStringEncoding encoding);
	 */
	public byte getPascalString(byte[] buffer, long bufferSize, int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringGetCString(CFStringRef theString, char *buffer, CFIndex bufferSize, CFStringEncoding encoding);
	 */
	public byte getCString(byte[] buffer, long bufferSize, int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * ConstStringPtr CFStringGetPascalStringPtr(CFStringRef theString, CFStringEncoding encoding);
	 */
	public byte[] getPascalStringPtr(int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * const char *CFStringGetCStringPtr(CFStringRef theString, CFStringEncoding encoding);
	 */
	public byte[] getCStringPtr(int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * const UniChar *CFStringGetCharactersPtr(CFStringRef theString);
	 */
	public short[] getCharactersPtr(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFStringGetBytes(CFStringRef theString, CFRange range, CFStringEncoding encoding, UInt8 lossByte, Boolean isExternalRepresentation, UInt8 *buffer, CFIndex maxBufLen, CFIndex *usedBufLen);
	 */
	public long getBytes(CFRange range, int encoding, byte lossByte, byte isExternalRepresentation, byte[] buffer, long maxBufLen, long[] usedBufLen){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringEncoding CFStringGetSmallestEncoding(CFStringRef theString);
	 */
	public int getSmallestEncoding(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringEncoding CFStringGetFastestEncoding(CFStringRef theString);
	 */
	public int getFastestEncoding(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringGetFileSystemRepresentation(CFStringRef string, char *buffer, CFIndex maxBufLen) ;
	 */
	public byte getFileSystemRepresentation(byte[] buffer, long maxBufLen){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFStringGetMaximumSizeOfFileSystemRepresentation(CFStringRef string) ;
	 */
	public long getMaximumSizeOfFileSystemRepresentation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFComparisonResult CFStringCompareWithOptionsAndLocale(CFStringRef theString1, CFStringRef theString2, CFRange rangeToCompare, CFStringCompareFlags compareOptions, CFLocaleRef locale) ;
	 */
	public long compareWithOptionsAndLocale(String theString2, CFRange rangeToCompare, long compareOptions, CFLocale locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFComparisonResult CFStringCompareWithOptions(CFStringRef theString1, CFStringRef theString2, CFRange rangeToCompare, CFStringCompareFlags compareOptions);
	 */
	public long compareWithOptions(String theString2, CFRange rangeToCompare, long compareOptions){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFComparisonResult CFStringCompare(CFStringRef theString1, CFStringRef theString2, CFStringCompareFlags compareOptions);
	 */
	public long compare(String theString2, long compareOptions){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringFindWithOptionsAndLocale(CFStringRef theString, CFStringRef stringToFind, CFRange rangeToSearch, CFStringCompareFlags searchOptions, CFLocaleRef locale, CFRange *result) ;
	 */
	public byte findWithOptionsAndLocale(String stringToFind, CFRange rangeToSearch, long searchOptions, CFLocale locale, Reference<CFRange> result){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringFindWithOptions(CFStringRef theString, CFStringRef stringToFind, CFRange rangeToSearch, CFStringCompareFlags searchOptions, CFRange *result);
	 */
	public byte findWithOptions(String stringToFind, CFRange rangeToSearch, long searchOptions, Reference<CFRange> result){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions);
	 */
	public CFRange find(String stringToFind, long compareOptions){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringHasPrefix(CFStringRef theString, CFStringRef prefix);
	 */
	public byte hasPrefix(String prefix){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringHasSuffix(CFStringRef theString, CFStringRef suffix);
	 */
	public byte hasSuffix(String suffix){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex);
	 */
	public CFRange getRangeOfComposedCharactersAtIndex(long theIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFStringFindCharacterFromSet(CFStringRef theString, CFCharacterSetRef theSet, CFRange rangeToSearch, CFStringCompareFlags searchOptions, CFRange *result);
	 */
	public byte findCharacterFromSet(CFCharacterSet theSet, CFRange rangeToSearch, long searchOptions, Reference<CFRange> result){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringGetLineBounds(CFStringRef theString, CFRange range, CFIndex *lineBeginIndex, CFIndex *lineEndIndex, CFIndex *contentsEndIndex);
	 */
	public void getLineBounds(CFRange range, long[] lineBeginIndex, long[] lineEndIndex, long[] contentsEndIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringGetParagraphBounds(CFStringRef string, CFRange range, CFIndex *parBeginIndex, CFIndex *parEndIndex, CFIndex *contentsEndIndex) ;
	 */
	public void getParagraphBounds(CFRange range, long[] parBeginIndex, long[] parEndIndex, long[] contentsEndIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFStringGetHyphenationLocationBeforeIndex(CFStringRef string, CFIndex location, CFRange limitRange, CFOptionFlags options, CFLocaleRef locale, UTF32Char *character) ;
	 */
	public long getHyphenationLocationBeforeIndex(long location, CFRange limitRange, long options, CFLocale locale, int[] character){
		throw new RuntimeException("Stub");
	}

	/**
	 * SInt32 CFStringGetIntValue(CFStringRef str);
	 */
	public int getIntValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * double CFStringGetDoubleValue(CFStringRef str);
	 */
	public double getDoubleValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringEncoding CFStringConvertIANACharSetNameToEncoding(CFStringRef theString);
	 */
	public int convertIANACharSetNameToEncoding(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStringInitInlineBuffer(CFStringRef str, CFStringInlineBuffer *buf, CFRange range);
	 */
	public void initInlineBuffer(Reference<CFStringInlineBuffer> buf, CFRange range){
		throw new RuntimeException("Stub");
	}
}
