package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFLocale {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFLocaleGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFLocaleRef CFLocaleGetSystem(void) ;
	 */
	public static CFLocale getSystem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFLocaleRef CFLocaleCopyCurrent(void) ;
	 */
	public static CFLocale copyCurrent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFLocaleCopyAvailableLocaleIdentifiers(void) ;
	 */
	public static CFArray copyAvailableLocaleIdentifiers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFLocaleCopyISOLanguageCodes(void) ;
	 */
	public static CFArray copyISOLanguageCodes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFLocaleCopyISOCountryCodes(void) ;
	 */
	public static CFArray copyISOCountryCodes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFLocaleCopyISOCurrencyCodes(void) ;
	 */
	public static CFArray copyISOCurrencyCodes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFLocaleCopyCommonISOCurrencyCodes(void) ;
	 */
	public static CFArray copyCommonISOCurrencyCodes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFLocaleCopyPreferredLanguages(void) ;
	 */
	public static CFArray copyPreferredLanguages(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFLocaleCreateCanonicalLanguageIdentifierFromString(CFAllocatorRef allocator, CFStringRef localeIdentifier) ;
	 */
	public static String createCanonicalLanguageIdentifierFromString(CFAllocator allocator, String localeIdentifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFLocaleCreateCanonicalLocaleIdentifierFromString(CFAllocatorRef allocator, CFStringRef localeIdentifier) ;
	 */
	public static String createCanonicalLocaleIdentifierFromString(CFAllocator allocator, String localeIdentifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(CFAllocatorRef allocator, LangCode lcode, RegionCode rcode) ;
	 */
	public static String createCanonicalLocaleIdentifierFromScriptManagerCodes(CFAllocator allocator, short lcode, short rcode){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFLocaleCreateLocaleIdentifierFromWindowsLocaleCode(CFAllocatorRef allocator, uint32_t lcid) ;
	 */
	public static String createLocaleIdentifierFromWindowsLocaleCode(CFAllocator allocator, int lcid){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint32_t CFLocaleGetWindowsLocaleCodeFromLocaleIdentifier(CFStringRef localeIdentifier) ;
	 */
	public static int getWindowsLocaleCodeFromLocaleIdentifier(String localeIdentifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFLocaleLanguageDirection CFLocaleGetLanguageCharacterDirection(CFStringRef isoLangCode) ;
	 */
	public static long getLanguageCharacterDirection(String isoLangCode){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFLocaleLanguageDirection CFLocaleGetLanguageLineDirection(CFStringRef isoLangCode) ;
	 */
	public static long getLanguageLineDirection(String isoLangCode){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFLocaleCreateComponentsFromLocaleIdentifier(CFAllocatorRef allocator, CFStringRef localeID) ;
	 */
	public static CFDictionary createComponentsFromLocaleIdentifier(CFAllocator allocator, String localeID){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFLocaleCreateLocaleIdentifierFromComponents(CFAllocatorRef allocator, CFDictionaryRef dictionary) ;
	 */
	public static String createLocaleIdentifierFromComponents(CFAllocator allocator, CFDictionary dictionary){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFLocaleRef CFLocaleCreateCopy(CFAllocatorRef allocator, CFLocaleRef locale) ;
	 */
	public static CFLocale createCopy(CFAllocator allocator, CFLocale locale){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFLocaleRef CFLocaleCreate(CFAllocatorRef allocator, CFStringRef localeIdentifier) ;
	 */
	public CFLocale(CFAllocator allocator, String localeIdentifier) {}

	/** Default constructor */
	public CFLocale() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFStringRef CFLocaleGetIdentifier(CFLocaleRef locale) ;
	 */
	public String getIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CFLocaleGetValue(CFLocaleRef locale, CFStringRef key) ;
	 */
	public byte[] getValue(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFLocaleCopyDisplayNameForPropertyValue(CFLocaleRef displayLocale, CFStringRef key, CFStringRef value) ;
	 */
	public String copyDisplayNameForPropertyValue(String key, String value){
		throw new RuntimeException("Stub");
	}
}
