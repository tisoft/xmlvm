package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SCPreferences {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID SCPreferencesGetTypeID (void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCPreferencesRef SCPreferencesCreateWithAuthorization ( CFAllocatorRef allocator, CFStringRef name, CFStringRef prefsID, AuthorizationRef authorization ) ;
	 */
	public static SCPreferences createWithAuthorization(CFAllocator allocator, String name, String prefsID, AuthorizationOpaque authorization){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * SCPreferencesRef SCPreferencesCreate ( CFAllocatorRef allocator, CFStringRef name, CFStringRef prefsID ) ;
	 */
	public SCPreferences(CFAllocator allocator, String name, String prefsID) {}

	/** Default constructor */
	public SCPreferences() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean SCPreferencesLock ( SCPreferencesRef prefs, Boolean wait ) ;
	 */
	public byte lock(byte wait){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesCommitChanges ( SCPreferencesRef prefs ) ;
	 */
	public byte commitChanges(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesApplyChanges ( SCPreferencesRef prefs ) ;
	 */
	public byte applyChanges(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesUnlock ( SCPreferencesRef prefs ) ;
	 */
	public byte unlock(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef SCPreferencesGetSignature ( SCPreferencesRef prefs ) ;
	 */
	public CFData getSignature(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCPreferencesCopyKeyList ( SCPreferencesRef prefs ) ;
	 */
	public CFArray copyKeyList(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFPropertyListRef SCPreferencesGetValue ( SCPreferencesRef prefs, CFStringRef key ) ;
	 */
	public CFPropertyList getValue(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesAddValue ( SCPreferencesRef prefs, CFStringRef key, CFPropertyListRef value ) ;
	 */
	public byte addValue(String key, CFPropertyList value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesSetValue ( SCPreferencesRef prefs, CFStringRef key, CFPropertyListRef value ) ;
	 */
	public byte setValue(String key, CFPropertyList value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesRemoveValue ( SCPreferencesRef prefs, CFStringRef key ) ;
	 */
	public byte removeValue(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesSetCallback ( SCPreferencesRef prefs, SCPreferencesCallBack callout, SCPreferencesContext *context ) ;
	 */
	public byte setCallback(Object callout, Reference<SCPreferencesContext> context){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesScheduleWithRunLoop ( SCPreferencesRef prefs, CFRunLoopRef runLoop, CFStringRef runLoopMode ) ;
	 */
	public byte scheduleWithRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesUnscheduleFromRunLoop ( SCPreferencesRef prefs, CFRunLoopRef runLoop, CFStringRef runLoopMode ) ;
	 */
	public byte unscheduleFromRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesSetDispatchQueue ( SCPreferencesRef prefs, dispatch_queue_t queue ) ;
	 */
	public byte setDispatchQueue(Object queue){
		throw new RuntimeException("Stub");
	}

	/**
	 * void SCPreferencesSynchronize ( SCPreferencesRef prefs ) ;
	 */
	public void synchronize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCPreferencesPathCreateUniqueChild ( SCPreferencesRef prefs, CFStringRef prefix ) ;
	 */
	public String pathCreateUniqueChild(String prefix){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef SCPreferencesPathGetValue ( SCPreferencesRef prefs, CFStringRef path ) ;
	 */
	public CFDictionary pathGetValue(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCPreferencesPathGetLink ( SCPreferencesRef prefs, CFStringRef path ) ;
	 */
	public String pathGetLink(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesPathSetValue ( SCPreferencesRef prefs, CFStringRef path, CFDictionaryRef value ) ;
	 */
	public byte pathSetValue(String path, CFDictionary value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesPathSetLink ( SCPreferencesRef prefs, CFStringRef path, CFStringRef link ) ;
	 */
	public byte pathSetLink(String path, String link){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesPathRemoveValue ( SCPreferencesRef prefs, CFStringRef path ) ;
	 */
	public byte pathRemoveValue(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesSetComputerName ( SCPreferencesRef prefs, CFStringRef name, CFStringEncoding nameEncoding ) ;
	 */
	public byte setComputerName(String name, int nameEncoding){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCPreferencesSetLocalHostName ( SCPreferencesRef prefs, CFStringRef name ) ;
	 */
	public byte setLocalHostName(String name){
		throw new RuntimeException("Stub");
	}
}
