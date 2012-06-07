package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={CFError.class})
public class CFURL extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFURLGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateWithBytes(CFAllocatorRef allocator, const UInt8 *URLBytes, CFIndex length, CFStringEncoding encoding, CFURLRef baseURL);
	 */
	public static CFURL createWithBytes(CFAllocator allocator, byte[] URLBytes, long length, int encoding, CFURL baseURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFURLCreateData(CFAllocatorRef allocator, CFURLRef url, CFStringEncoding encoding, Boolean escapeWhitespace);
	 */
	public static CFData createData(CFAllocator allocator, CFURL url, int encoding, byte escapeWhitespace){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateWithString(CFAllocatorRef allocator, CFStringRef URLString, CFURLRef baseURL);
	 */
	public static CFURL createWithString(CFAllocator allocator, String URLString, CFURL baseURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateAbsoluteURLWithBytes(CFAllocatorRef alloc, const UInt8 *relativeURLBytes, CFIndex length, CFStringEncoding encoding, CFURLRef baseURL, Boolean useCompatibilityMode) ;
	 */
	public static CFURL createAbsoluteURLWithBytes(CFAllocator alloc, byte[] relativeURLBytes, long length, int encoding, CFURL baseURL, byte useCompatibilityMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateWithFileSystemPath(CFAllocatorRef allocator, CFStringRef filePath, CFURLPathStyle pathStyle, Boolean isDirectory);
	 */
	public static CFURL createWithFileSystemPath(CFAllocator allocator, String filePath, long pathStyle, byte isDirectory){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateFromFileSystemRepresentation(CFAllocatorRef allocator, const UInt8 *buffer, CFIndex bufLen, Boolean isDirectory);
	 */
	public static CFURL createFromFileSystemRepresentation(CFAllocator allocator, byte[] buffer, long bufLen, byte isDirectory){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateWithFileSystemPathRelativeToBase(CFAllocatorRef allocator, CFStringRef filePath, CFURLPathStyle pathStyle, Boolean isDirectory, CFURLRef baseURL);
	 */
	public static CFURL createWithFileSystemPathRelativeToBase(CFAllocator allocator, String filePath, long pathStyle, byte isDirectory, CFURL baseURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateFromFileSystemRepresentationRelativeToBase(CFAllocatorRef allocator, const UInt8 *buffer, CFIndex bufLen, Boolean isDirectory, CFURLRef baseURL);
	 */
	public static CFURL createFromFileSystemRepresentationRelativeToBase(CFAllocator allocator, byte[] buffer, long bufLen, byte isDirectory, CFURL baseURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateCopyAppendingPathComponent(CFAllocatorRef allocator, CFURLRef url, CFStringRef pathComponent, Boolean isDirectory);
	 */
	public static CFURL createCopyAppendingPathComponent(CFAllocator allocator, CFURL url, String pathComponent, byte isDirectory){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateCopyDeletingLastPathComponent(CFAllocatorRef allocator, CFURLRef url);
	 */
	public static CFURL createCopyDeletingLastPathComponent(CFAllocator allocator, CFURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateCopyAppendingPathExtension(CFAllocatorRef allocator, CFURLRef url, CFStringRef extension);
	 */
	public static CFURL createCopyAppendingPathExtension(CFAllocator allocator, CFURL url, String extension){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateCopyDeletingPathExtension(CFAllocatorRef allocator, CFURLRef url);
	 */
	public static CFURL createCopyDeletingPathExtension(CFAllocator allocator, CFURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCreateStringByReplacingPercentEscapes(CFAllocatorRef allocator, CFStringRef originalString, CFStringRef charactersToLeaveEscaped);
	 */
	public static String createStringByReplacingPercentEscapes(CFAllocator allocator, String originalString, String charactersToLeaveEscaped){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCreateStringByReplacingPercentEscapesUsingEncoding(CFAllocatorRef allocator, CFStringRef origString, CFStringRef charsToLeaveEscaped, CFStringEncoding encoding) ;
	 */
	public static String createStringByReplacingPercentEscapesUsingEncoding(CFAllocator allocator, String origString, String charsToLeaveEscaped, int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCreateStringByAddingPercentEscapes(CFAllocatorRef allocator, CFStringRef originalString, CFStringRef charactersToLeaveUnescaped, CFStringRef legalURLCharactersToBeEscaped, CFStringEncoding encoding);
	 */
	public static String createStringByAddingPercentEscapes(CFAllocator allocator, String originalString, String charactersToLeaveUnescaped, String legalURLCharactersToBeEscaped, int encoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateFileReferenceURL(CFAllocatorRef allocator, CFURLRef url, CFErrorRef *error) ;
	 */
	public static CFURL createFileReferenceURL(CFAllocator allocator, CFURL url, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateFilePathURL(CFAllocatorRef allocator, CFURLRef url, CFErrorRef *error) ;
	 */
	public static CFURL createFilePathURL(CFAllocator allocator, CFURL url, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateFromFSRef(CFAllocatorRef allocator, const struct FSRef *fsRef);
	 */
	public static CFURL createFromFS(CFAllocator allocator, FS fsRef){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFURLCreateBookmarkData ( CFAllocatorRef allocator, CFURLRef url, CFURLBookmarkCreationOptions options, CFArrayRef resourcePropertiesToInclude, CFURLRef relativeToURL, CFErrorRef* error ) ;
	 */
	public static CFData createBookmarkData(CFAllocator allocator, CFURL url, long options, CFArray resourcePropertiesToInclude, CFURL relativeToURL, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCreateByResolvingBookmarkData ( CFAllocatorRef allocator, CFDataRef bookmark, CFURLBookmarkResolutionOptions options, CFURLRef relativeToURL, CFArrayRef resourcePropertiesToInclude, Boolean* isStale, CFErrorRef* error ) ;
	 */
	public static CFURL createByResolvingBookmarkData(CFAllocator allocator, CFData bookmark, long options, CFURL relativeToURL, CFArray resourcePropertiesToInclude, byte[] isStale, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFURLCreateResourcePropertiesForKeysFromBookmarkData ( CFAllocatorRef allocator, CFArrayRef resourcePropertiesToReturn, CFDataRef bookmark ) ;
	 */
	public static CFDictionary createResourcePropertiesForKeysFromBookmarkData(CFAllocator allocator, CFArray resourcePropertiesToReturn, CFData bookmark){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CFURLCreateResourcePropertyForKeyFromBookmarkData( CFAllocatorRef allocator, CFStringRef resourcePropertyKey, CFDataRef bookmark ) ;
	 */
	public static byte[] createResourcePropertyForKeyFromBookmarkData(CFAllocator allocator, String resourcePropertyKey, CFData bookmark){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFURLCreateBookmarkDataFromFile(CFAllocatorRef allocator, CFURLRef fileURL, CFErrorRef *errorRef );
	 */
	public static CFData createBookmarkDataFromFile(CFAllocator allocator, CFURL fileURL, Reference<CFError> errorRef){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFURLWriteBookmarkDataToFile( CFDataRef bookmarkRef, CFURLRef fileURL, CFURLBookmarkFileCreationOptions options, CFErrorRef *errorRef );
	 */
	public static byte writeBookmarkDataToFile(CFData bookmarkRef, CFURL fileURL, long options, Reference<CFError> errorRef){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFURLCreateBookmarkDataFromAliasRecord ( CFAllocatorRef allocatorRef, CFDataRef aliasRecordDataRef );
	 */
	public static CFData createBookmarkDataFromAliasRecord(CFAllocator allocatorRef, CFData aliasRecordDataRef){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFURLCreateDataAndPropertiesFromResource(CFAllocatorRef alloc, CFURLRef url, CFDataRef *resourceData, CFDictionaryRef *properties, CFArrayRef desiredProperties, SInt32 *errorCode) ;
	 */
	public static byte createDataAndPropertiesFromResource(CFAllocator alloc, CFURL url, Reference<CFData> resourceData, Reference<CFDictionary> properties, CFArray desiredProperties, int[] errorCode){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CFURLCreatePropertyFromResource(CFAllocatorRef alloc, CFURLRef url, CFStringRef property, SInt32 *errorCode) ;
	 */
	public static byte[] createPropertyFromResource(CFAllocator alloc, CFURL url, String property, int[] errorCode){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CFURL() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean CFURLGetFileSystemRepresentation(CFURLRef url, Boolean resolveAgainstBase, UInt8 *buffer, CFIndex maxBufLen);
	 */
	public byte getFileSystemRepresentation(byte resolveAgainstBase, byte[] buffer, long maxBufLen){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLCopyAbsoluteURL(CFURLRef relativeURL);
	 */
	public CFURL copyAbsoluteURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLGetString(CFURLRef anURL);
	 */
	public String getString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFURLGetBaseURL(CFURLRef anURL);
	 */
	public CFURL getBaseURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFURLCanBeDecomposed(CFURLRef anURL);
	 */
	public byte canBeDecomposed(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyScheme(CFURLRef anURL);
	 */
	public String copyScheme(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyNetLocation(CFURLRef anURL);
	 */
	public String copyNetLocation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyPath(CFURLRef anURL);
	 */
	public String copyPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyStrictPath(CFURLRef anURL, Boolean *isAbsolute);
	 */
	public String copyStrictPath(byte[] isAbsolute){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyFileSystemPath(CFURLRef anURL, CFURLPathStyle pathStyle);
	 */
	public String copyFileSystemPath(long pathStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFURLHasDirectoryPath(CFURLRef anURL);
	 */
	public byte hasDirectoryPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyResourceSpecifier(CFURLRef anURL);
	 */
	public String copyResourceSpecifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyHostName(CFURLRef anURL);
	 */
	public String copyHostName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SInt32 CFURLGetPortNumber(CFURLRef anURL);
	 */
	public int getPortNumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyUserName(CFURLRef anURL);
	 */
	public String copyUserName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyPassword(CFURLRef anURL);
	 */
	public String copyPassword(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyParameterString(CFURLRef anURL, CFStringRef charactersToLeaveEscaped);
	 */
	public String copyParameterString(String charactersToLeaveEscaped){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyQueryString(CFURLRef anURL, CFStringRef charactersToLeaveEscaped);
	 */
	public String copyQueryString(String charactersToLeaveEscaped){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyFragment(CFURLRef anURL, CFStringRef charactersToLeaveEscaped);
	 */
	public String copyFragment(String charactersToLeaveEscaped){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyLastPathComponent(CFURLRef url);
	 */
	public String copyLastPathComponent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFURLCopyPathExtension(CFURLRef url);
	 */
	public String copyPathExtension(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFURLGetBytes(CFURLRef url, UInt8 *buffer, CFIndex bufferLength) ;
	 */
	public long getBytes(byte[] buffer, long bufferLength){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRange CFURLGetByteRangeForComponent(CFURLRef url, CFURLComponentType component, CFRange *rangeIncludingSeparators) ;
	 */
	public CFRange getByteRangeForComponent(long component, Reference<CFRange> rangeIncludingSeparators){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFURLGetFSRef(CFURLRef url, struct FSRef *fsRef);
	 */
	public byte getFS(FS fsRef){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFURLCopyResourcePropertyForKey(CFURLRef url, CFStringRef key, void *propertyValueTypeRefPtr, CFErrorRef *error) ;
	 */
	public byte copyResourcePropertyForKey(String key, byte[] propertyValueTypeRefPtr, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFURLCopyResourcePropertiesForKeys(CFURLRef url, CFArrayRef keys, CFErrorRef *error) ;
	 */
	public CFDictionary copyResourcePropertiesForKeys(CFArray keys, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFURLSetResourcePropertyForKey(CFURLRef url, CFStringRef key, CFTypeRef propertValue, CFErrorRef *error) ;
	 */
	public byte setResourcePropertyForKey(String key, byte[] propertValue, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFURLSetResourcePropertiesForKeys(CFURLRef url, CFDictionaryRef keyedPropertyValues, CFErrorRef *error) ;
	 */
	public byte setResourcePropertiesForKeys(CFDictionary keyedPropertyValues, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFURLClearResourcePropertyCacheForKey(CFURLRef url, CFStringRef key) ;
	 */
	public void clearResourcePropertyCacheForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFURLClearResourcePropertyCache(CFURLRef url) ;
	 */
	public void clearResourcePropertyCache(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFURLSetTemporaryResourcePropertyForKey(CFURLRef url, CFStringRef key, CFTypeRef propertyValue) ;
	 */
	public void setTemporaryResourcePropertyForKey(String key, byte[] propertyValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFURLResourceIsReachable(CFURLRef url, CFErrorRef *error) ;
	 */
	public byte resourceIsReachable(Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFURLWriteDataAndPropertiesToResource(CFURLRef url, CFDataRef dataToWrite, CFDictionaryRef propertiesToWrite, SInt32 *errorCode) ;
	 */
	public byte writeDataAndPropertiesToResource(CFData dataToWrite, CFDictionary propertiesToWrite, int[] errorCode){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFURLDestroyResource(CFURLRef url, SInt32 *errorCode) ;
	 */
	public byte destroyResource(int[] errorCode){
		throw new RuntimeException("Stub");
	}
}
