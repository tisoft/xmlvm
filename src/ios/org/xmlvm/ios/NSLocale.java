package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSLocale extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)systemLocale;
	 */
	public static Object systemLocale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)currentLocale;
	 */
	public static Object currentLocale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)autoupdatingCurrentLocale ;
	 */
	public static Object autoupdatingCurrentLocale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)availableLocaleIdentifiers;
	 */
	public static List availableLocaleIdentifiers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)ISOLanguageCodes;
	 */
	public static List ISOLanguageCodes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)ISOCountryCodes;
	 */
	public static List ISOCountryCodes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)ISOCurrencyCodes;
	 */
	public static List ISOCurrencyCodes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)commonISOCurrencyCodes ;
	 */
	public static List commonISOCurrencyCodes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)preferredLanguages ;
	 */
	public static List preferredLanguages(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDictionary *)componentsFromLocaleIdentifier:(NSString *)string;
	 */
	public static Map componentsFromLocaleIdentifier(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSString *)localeIdentifierFromComponents:(NSDictionary *)dict;
	 */
	public static String localeIdentifierFromComponents(Map dict){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSString *)canonicalLocaleIdentifierFromString:(NSString *)string;
	 */
	public static String canonicalLocaleIdentifierFromString(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSString *)canonicalLanguageIdentifierFromString:(NSString *)string;
	 */
	public static String canonicalLanguageIdentifierFromString(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSString *)localeIdentifierFromWindowsLocaleCode:(uint32_t)lcid ;
	 */
	public static String localeIdentifierFromWindowsLocaleCode(int lcid){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (uint32_t)windowsLocaleCodeFromLocaleIdentifier:(NSString *)localeIdentifier ;
	 */
	public static int windowsLocaleCodeFromLocaleIdentifier(String localeIdentifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSLocaleLanguageDirection)characterDirectionForLanguage:(NSString *)isoLangCode ;
	 */
	public static int characterDirectionForLanguage(String isoLangCode){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSLocaleLanguageDirection)lineDirectionForLanguage:(NSString *)isoLangCode ;
	 */
	public static int lineDirectionForLanguage(String isoLangCode){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithLocaleIdentifier:(NSString *)string;
	 */
	public NSLocale(String string) {}

	/** Default constructor */
	NSLocale() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (id)objectForKey:(id)key;
	 */
	public Object objectForKey(Object key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)displayNameForKey:(id)key value:(id)value;
	 */
	public String displayNameForKey(Object key, Object value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)localeIdentifier;
	 */
	public String localeIdentifier(){
		throw new RuntimeException("Stub");
	}
}
