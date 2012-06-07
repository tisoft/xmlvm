package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SCDynamicStore {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID SCDynamicStoreGetTypeID (void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCDynamicStoreRef SCDynamicStoreCreateWithOptions ( CFAllocatorRef allocator, CFStringRef name, CFDictionaryRef storeOptions, SCDynamicStoreCallBack callout, SCDynamicStoreContext *context ) ;
	 */
	public static SCDynamicStore createWithOptions(CFAllocator allocator, String name, CFDictionary storeOptions, Object callout, Reference<SCDynamicStoreContext> context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRunLoopSourceRef SCDynamicStoreCreateRunLoopSource ( CFAllocatorRef allocator, SCDynamicStoreRef store, CFIndex order ) ;
	 */
	public static CFRunLoopSource createRunLoopSource(CFAllocator allocator, SCDynamicStore store, long order){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreKeyCreate ( CFAllocatorRef allocator, CFStringRef fmt, ... ) ;
	 */
	public static String keyCreate(CFAllocator allocator, String... fmt){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreKeyCreateNetworkGlobalEntity ( CFAllocatorRef allocator, CFStringRef domain, CFStringRef entity ) ;
	 */
	public static String keyCreateNetworkGlobalEntity(CFAllocator allocator, String domain, String entity){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreKeyCreateNetworkInterface ( CFAllocatorRef allocator, CFStringRef domain ) ;
	 */
	public static String keyCreateNetworkInterface(CFAllocator allocator, String domain){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreKeyCreateNetworkInterfaceEntity ( CFAllocatorRef allocator, CFStringRef domain, CFStringRef ifname, CFStringRef entity ) ;
	 */
	public static String keyCreateNetworkInterfaceEntity(CFAllocator allocator, String domain, String ifname, String entity){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreKeyCreateNetworkServiceEntity ( CFAllocatorRef allocator, CFStringRef domain, CFStringRef serviceID, CFStringRef entity ) ;
	 */
	public static String keyCreateNetworkServiceEntity(CFAllocator allocator, String domain, String serviceID, String entity){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreKeyCreateComputerName ( CFAllocatorRef allocator ) ;
	 */
	public static String keyCreateComputerName(CFAllocator allocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreKeyCreateConsoleUser ( CFAllocatorRef allocator ) ;
	 */
	public static String keyCreateConsoleUser(CFAllocator allocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreKeyCreateHostNames ( CFAllocatorRef allocator ) ;
	 */
	public static String keyCreateHostNames(CFAllocator allocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreKeyCreateLocation ( CFAllocatorRef allocator ) ;
	 */
	public static String keyCreateLocation(CFAllocator allocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreKeyCreateProxies ( CFAllocatorRef allocator ) ;
	 */
	public static String keyCreateProxies(CFAllocator allocator){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * SCDynamicStoreRef SCDynamicStoreCreate ( CFAllocatorRef allocator, CFStringRef name, SCDynamicStoreCallBack callout, SCDynamicStoreContext *context ) ;
	 */
	public SCDynamicStore(CFAllocator allocator, String name, Object callout, Reference<SCDynamicStoreContext> context) {}

	/** Default constructor */
	public SCDynamicStore() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean SCDynamicStoreSetDispatchQueue ( SCDynamicStoreRef store, dispatch_queue_t queue ) ;
	 */
	public byte setDispatchQueue(Object queue){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCDynamicStoreCopyKeyList ( SCDynamicStoreRef store, CFStringRef pattern ) ;
	 */
	public CFArray copyKeyList(String pattern){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCDynamicStoreAddValue ( SCDynamicStoreRef store, CFStringRef key, CFPropertyListRef value ) ;
	 */
	public byte addValue(String key, CFPropertyList value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCDynamicStoreAddTemporaryValue ( SCDynamicStoreRef store, CFStringRef key, CFPropertyListRef value ) ;
	 */
	public byte addTemporaryValue(String key, CFPropertyList value){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFPropertyListRef SCDynamicStoreCopyValue ( SCDynamicStoreRef store, CFStringRef key ) ;
	 */
	public CFPropertyList copyValue(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef SCDynamicStoreCopyMultiple ( SCDynamicStoreRef store, CFArrayRef keys, CFArrayRef patterns ) ;
	 */
	public CFDictionary copyMultiple(CFArray keys, CFArray patterns){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCDynamicStoreSetValue ( SCDynamicStoreRef store, CFStringRef key, CFPropertyListRef value ) ;
	 */
	public byte setValue(String key, CFPropertyList value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCDynamicStoreSetMultiple ( SCDynamicStoreRef store, CFDictionaryRef keysToSet, CFArrayRef keysToRemove, CFArrayRef keysToNotify ) ;
	 */
	public byte setMultiple(CFDictionary keysToSet, CFArray keysToRemove, CFArray keysToNotify){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCDynamicStoreRemoveValue ( SCDynamicStoreRef store, CFStringRef key ) ;
	 */
	public byte removeValue(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCDynamicStoreNotifyValue ( SCDynamicStoreRef store, CFStringRef key ) ;
	 */
	public byte notifyValue(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCDynamicStoreSetNotificationKeys ( SCDynamicStoreRef store, CFArrayRef keys, CFArrayRef patterns ) ;
	 */
	public byte setNotificationKeys(CFArray keys, CFArray patterns){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCDynamicStoreCopyNotifiedKeys ( SCDynamicStoreRef store ) ;
	 */
	public CFArray copyNotifiedKeys(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef SCDynamicStoreCopyDHCPInfo (SCDynamicStoreRef store, CFStringRef serviceID) ;
	 */
	public CFDictionary copyDHCPInfo(String serviceID){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreCopyComputerName ( SCDynamicStoreRef store, CFStringEncoding *nameEncoding ) ;
	 */
	public String copyComputerName(int[] nameEncoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreCopyConsoleUser ( SCDynamicStoreRef store, uid_t *uid, gid_t *gid ) ;
	 */
	public String copyConsoleUser(int[] uid, int[] gid){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreCopyLocalHostName ( SCDynamicStoreRef store ) ;
	 */
	public String copyLocalHostName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCDynamicStoreCopyLocation ( SCDynamicStoreRef store ) ;
	 */
	public String copyLocation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef SCDynamicStoreCopyProxies ( SCDynamicStoreRef store ) ;
	 */
	public CFDictionary copyProxies(){
		throw new RuntimeException("Stub");
	}
}
