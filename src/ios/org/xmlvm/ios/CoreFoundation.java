package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CoreFoundation {

	/*
	 * Static methods
	 */

	/**
	 * Float32 CFConvertFloat32SwappedToHost(CFSwappedFloat32 arg);
	 */
	public static float CFConvertFloat32SwappedToHost(CFSwappedFloat32 arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFPlugInRef CFPlugInCreate(CFAllocatorRef allocator, CFURLRef plugInURL);
	 */
	public static CFBundle CFPlugInCreate(CFAllocator allocator, CFURL plugInURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSwappedFloat64 CFConvertDoubleHostToSwapped(double arg);
	 */
	public static CFSwappedFloat64 CFConvertDoubleHostToSwapped(double arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSwappedFloat32 CFConvertFloatHostToSwapped(float arg);
	 */
	public static CFSwappedFloat32 CFConvertFloatHostToSwapped(float arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * double CFConvertDoubleSwappedToHost(CFSwappedFloat64 arg);
	 */
	public static double CFConvertDoubleSwappedToHost(CFSwappedFloat64 arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFEqual(CFTypeRef cf1, CFTypeRef cf2);
	 */
	public static byte CFEqual(byte[] cf1, byte[] cf2){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint32_t CFSwapInt32LittleToHost(uint32_t arg);
	 */
	public static int CFSwapInt32LittleToHost(int arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * SInt32 CFAbsoluteTimeGetDayOfWeek(CFAbsoluteTime at, CFTimeZoneRef tz);
	 */
	public static int CFAbsoluteTimeGetDayOfWeek(double at, NSTimeZone tz){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFCopyTypeIDDescription(CFTypeID type_id);
	 */
	public static String CFCopyTypeIDDescription(long type_id){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFAbsoluteTime CFAbsoluteTimeAddGregorianUnits(CFAbsoluteTime at, CFTimeZoneRef tz, CFGregorianUnits units);
	 */
	public static double CFAbsoluteTimeAddGregorianUnits(double at, NSTimeZone tz, CFGregorianUnits units){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFPreferencesGetAppBooleanValue(CFStringRef key, CFStringRef applicationID, Boolean *keyExistsAndHasValidFormat);
	 */
	public static byte CFPreferencesGetAppBooleanValue(String key, String applicationID, byte[] keyExistsAndHasValidFormat){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint64_t CFSwapInt64HostToBig(uint64_t arg);
	 */
	public static long CFSwapInt64HostToBig(long arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint16_t CFSwapInt16BigToHost(uint16_t arg);
	 */
	public static short CFSwapInt16BigToHost(short arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * SInt32 CFAbsoluteTimeGetDayOfYear(CFAbsoluteTime at, CFTimeZoneRef tz);
	 */
	public static int CFAbsoluteTimeGetDayOfYear(double at, NSTimeZone tz){
		throw new RuntimeException("Stub");
	}

	/**
	 * SInt32 CFAbsoluteTimeGetWeekOfYear(CFAbsoluteTime at, CFTimeZoneRef tz);
	 */
	public static int CFAbsoluteTimeGetWeekOfYear(double at, NSTimeZone tz){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFPropertyListRef CFPreferencesCopyValue(CFStringRef key, CFStringRef applicationID, CFStringRef userName, CFStringRef hostName);
	 */
	public static CFPropertyList CFPreferencesCopyValue(String key, String applicationID, String userName, String hostName){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFPreferencesSetAppValue(CFStringRef key, CFPropertyListRef value, CFStringRef applicationID);
	 */
	public static void CFPreferencesSetAppValue(String key, CFPropertyList value, String applicationID){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFPreferencesCopyMultiple(CFArrayRef keysToFetch, CFStringRef applicationID, CFStringRef userName, CFStringRef hostName);
	 */
	public static CFDictionary CFPreferencesCopyMultiple(CFArray keysToFetch, String applicationID, String userName, String hostName){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFPreferencesSetMultiple(CFDictionaryRef keysToSet, CFArrayRef keysToRemove, CFStringRef applicationID, CFStringRef userName, CFStringRef hostName);
	 */
	public static void CFPreferencesSetMultiple(CFDictionary keysToSet, CFArray keysToRemove, String applicationID, String userName, String hostName){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint32_t CFSwapInt32HostToBig(uint32_t arg);
	 */
	public static int CFSwapInt32HostToBig(int arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz);
	 */
	public static CFGregorianDate CFAbsoluteTimeGetGregorianDate(double at, NSTimeZone tz){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFByteOrder CFByteOrderGetCurrent(void);
	 */
	public static long CFByteOrderGetCurrent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CFRetain(CFTypeRef cf);
	 */
	public static byte[] CFRetain(byte[] cf){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFPlugInRegisterFactoryFunctionByName(CFUUIDRef factoryUUID, CFPlugInRef plugIn, CFStringRef functionName);
	 */
	public static byte CFPlugInRegisterFactoryFunctionByName(CFUUID factoryUUID, CFBundle plugIn, String functionName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFHashCode CFHash(CFTypeRef cf);
	 */
	public static long CFHash(byte[] cf){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFPlugInFindFactoriesForPlugInTypeInPlugIn(CFUUIDRef typeUUID, CFPlugInRef plugIn);
	 */
	public static CFArray CFPlugInFindFactoriesForPlugInTypeInPlugIn(CFUUID typeUUID, CFBundle plugIn){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRelease(CFTypeRef cf);
	 */
	public static void CFRelease(byte[] cf){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFPlugInRegisterFactoryFunction(CFUUIDRef factoryUUID, CFPlugInFactoryFunction func);
	 */
	public static byte CFPlugInRegisterFactoryFunction(CFUUID factoryUUID, Object func){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFPreferencesCopyKeyList(CFStringRef applicationID, CFStringRef userName, CFStringRef hostName);
	 */
	public static CFArray CFPreferencesCopyKeyList(String applicationID, String userName, String hostName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSwappedFloat32 CFConvertFloat32HostToSwapped(Float32 arg);
	 */
	public static CFSwappedFloat32 CFConvertFloat32HostToSwapped(float arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFPropertyListRef CFPreferencesCopyAppValue(CFStringRef key, CFStringRef applicationID);
	 */
	public static CFPropertyList CFPreferencesCopyAppValue(String key, String applicationID){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFPlugInUnregisterPlugInType(CFUUIDRef factoryUUID, CFUUIDRef typeUUID);
	 */
	public static byte CFPlugInUnregisterPlugInType(CFUUID factoryUUID, CFUUID typeUUID){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStreamCreatePairWithSocket(CFAllocatorRef alloc, CFSocketNativeHandle sock, CFReadStreamRef *readStream, CFWriteStreamRef *writeStream);
	 */
	public static void CFStreamCreatePairWithSocket(CFAllocator alloc, int sock, Reference<CFReadStream> readStream, Reference<CFWriteStream> writeStream){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFCopyDescription(CFTypeRef cf);
	 */
	public static String CFCopyDescription(byte[] cf){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFPlugInSetLoadOnDemand(CFPlugInRef plugIn, Boolean flag);
	 */
	public static void CFPlugInSetLoadOnDemand(CFBundle plugIn, byte flag){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFPlugInRegisterPlugInType(CFUUIDRef factoryUUID, CFUUIDRef typeUUID);
	 */
	public static byte CFPlugInRegisterPlugInType(CFUUID factoryUUID, CFUUID typeUUID){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFAbsoluteTime CFAbsoluteTimeGetCurrent(void);
	 */
	public static double CFAbsoluteTimeGetCurrent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFGregorianUnits CFAbsoluteTimeGetDifferenceAsGregorianUnits(CFAbsoluteTime at1, CFAbsoluteTime at2, CFTimeZoneRef tz, CFOptionFlags unitFlags);
	 */
	public static CFGregorianUnits CFAbsoluteTimeGetDifferenceAsGregorianUnits(double at1, double at2, NSTimeZone tz, long unitFlags){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFPlugInRemoveInstanceForFactory(CFUUIDRef factoryID);
	 */
	public static void CFPlugInRemoveInstanceForFactory(CFUUID factoryID){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFGetRetainCount(CFTypeRef cf);
	 */
	public static long CFGetRetainCount(byte[] cf){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFPreferencesCopyApplicationList(CFStringRef userName, CFStringRef hostName);
	 */
	public static CFArray CFPreferencesCopyApplicationList(String userName, String hostName){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint16_t CFSwapInt16(uint16_t arg);
	 */
	public static short CFSwapInt16(short arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint64_t CFSwapInt64LittleToHost(uint64_t arg);
	 */
	public static long CFSwapInt64LittleToHost(long arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFPreferencesSetValue(CFStringRef key, CFPropertyListRef value, CFStringRef applicationID, CFStringRef userName, CFStringRef hostName);
	 */
	public static void CFPreferencesSetValue(String key, CFPropertyList value, String applicationID, String userName, String hostName){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFPlugInIsLoadOnDemand(CFPlugInRef plugIn);
	 */
	public static byte CFPlugInIsLoadOnDemand(CFBundle plugIn){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFPreferencesSynchronize(CFStringRef applicationID, CFStringRef userName, CFStringRef hostName);
	 */
	public static byte CFPreferencesSynchronize(String applicationID, String userName, String hostName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFBundleRef CFPlugInGetBundle(CFPlugInRef plugIn);
	 */
	public static CFBundle CFPlugInGetBundle(CFBundle plugIn){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint64_t CFSwapInt64(uint64_t arg);
	 */
	public static long CFSwapInt64(long arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CFGetTypeID(CFTypeRef cf);
	 */
	public static long CFGetTypeID(byte[] cf){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CFMakeCollectable(CFTypeRef cf) ;
	 */
	public static byte[] CFMakeCollectable(byte[] cf){
		throw new RuntimeException("Stub");
	}

	/**
	 * Float64 CFConvertFloat64SwappedToHost(CFSwappedFloat64 arg);
	 */
	public static double CFConvertFloat64SwappedToHost(CFSwappedFloat64 arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFAllocatorRef CFGetAllocator(CFTypeRef cf);
	 */
	public static CFAllocator CFGetAllocator(byte[] cf){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStreamCreateBoundPair(CFAllocatorRef alloc, CFReadStreamRef *readStream, CFWriteStreamRef *writeStream, CFIndex transferBufferSize);
	 */
	public static void CFStreamCreateBoundPair(CFAllocator alloc, Reference<CFReadStream> readStream, Reference<CFWriteStream> writeStream, long transferBufferSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFShow(CFTypeRef obj);
	 */
	public static void CFShow(byte[] obj){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFPreferencesRemoveSuitePreferencesFromApp(CFStringRef applicationID, CFStringRef suiteID);
	 */
	public static void CFPreferencesRemoveSuitePreferencesFromApp(String applicationID, String suiteID){
		throw new RuntimeException("Stub");
	}

	/**
	 * float CFConvertFloatSwappedToHost(CFSwappedFloat32 arg);
	 */
	public static float CFConvertFloatSwappedToHost(CFSwappedFloat32 arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint16_t CFSwapInt16HostToLittle(uint16_t arg);
	 */
	public static short CFSwapInt16HostToLittle(short arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint32_t CFSwapInt32(uint32_t arg);
	 */
	public static int CFSwapInt32(int arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint16_t CFSwapInt16LittleToHost(uint16_t arg);
	 */
	public static short CFSwapInt16LittleToHost(short arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint64_t CFSwapInt64BigToHost(uint64_t arg);
	 */
	public static long CFSwapInt64BigToHost(long arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFPreferencesAppSynchronize(CFStringRef applicationID);
	 */
	public static byte CFPreferencesAppSynchronize(String applicationID){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStreamCreatePairWithSocketToHost(CFAllocatorRef alloc, CFStringRef host, UInt32 port, CFReadStreamRef *readStream, CFWriteStreamRef *writeStream);
	 */
	public static void CFStreamCreatePairWithSocketToHost(CFAllocator alloc, String host, int port, Reference<CFReadStream> readStream, Reference<CFWriteStream> writeStream){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFPreferencesAppValueIsForced(CFStringRef key, CFStringRef applicationID);
	 */
	public static byte CFPreferencesAppValueIsForced(String key, String applicationID){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint64_t CFSwapInt64HostToLittle(uint64_t arg);
	 */
	public static long CFSwapInt64HostToLittle(long arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFPlugInUnregisterFactory(CFUUIDRef factoryUUID);
	 */
	public static byte CFPlugInUnregisterFactory(CFUUID factoryUUID){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSwappedFloat64 CFConvertFloat64HostToSwapped(Float64 arg);
	 */
	public static CFSwappedFloat64 CFConvertFloat64HostToSwapped(double arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFPreferencesGetAppIntegerValue(CFStringRef key, CFStringRef applicationID, Boolean *keyExistsAndHasValidFormat);
	 */
	public static long CFPreferencesGetAppIntegerValue(String key, String applicationID, byte[] keyExistsAndHasValidFormat){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint32_t CFSwapInt32HostToLittle(uint32_t arg);
	 */
	public static int CFSwapInt32HostToLittle(int arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFPlugInAddInstanceForFactory(CFUUIDRef factoryID);
	 */
	public static void CFPlugInAddInstanceForFactory(CFUUID factoryID){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFPreferencesAddSuitePreferencesToApp(CFStringRef applicationID, CFStringRef suiteID);
	 */
	public static void CFPreferencesAddSuitePreferencesToApp(String applicationID, String suiteID){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CFPlugInGetTypeID(void);
	 */
	public static long CFPlugInGetTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint16_t CFSwapInt16HostToBig(uint16_t arg);
	 */
	public static short CFSwapInt16HostToBig(short arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFPlugInFindFactoriesForPlugInType(CFUUIDRef typeUUID);
	 */
	public static CFArray CFPlugInFindFactoriesForPlugInType(CFUUID typeUUID){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFStreamCreatePairWithPeerSocketSignature(CFAllocatorRef alloc, const CFSocketSignature *signature, CFReadStreamRef *readStream, CFWriteStreamRef *writeStream);
	 */
	public static void CFStreamCreatePairWithPeerSocketSignature(CFAllocator alloc, Reference<CFSocketSignature> signature, Reference<CFReadStream> readStream, Reference<CFWriteStream> writeStream){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFShowStr(CFStringRef str);
	 */
	public static void CFShowStr(String str){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint32_t CFSwapInt32BigToHost(uint32_t arg);
	 */
	public static int CFSwapInt32BigToHost(int arg){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CoreFoundation() {}
}
