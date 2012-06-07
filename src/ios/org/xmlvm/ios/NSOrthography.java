package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSOrthography extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)orthographyWithDominantScript:(NSString *)script languageMap:(NSDictionary *)map;
	 */
	public static NSOrthography orthographyWithDominantScript(String script, Map map){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithDominantScript:(NSString *)script languageMap:(NSDictionary *)map;
	 */
	public NSOrthography(String script, Map map) {}

	/** Default constructor */
	public NSOrthography() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly) NSString *dominantScript;
	 */
	public String getDominantScript(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSDictionary *languageMap;
	 */
	public Map getLanguageMap(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSString *dominantLanguage;
	 */
	public String getDominantLanguage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSArray *allScripts;
	 */
	public List getAllScripts(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSArray *allLanguages;
	 */
	public List getAllLanguages(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSArray *)languagesForScript:(NSString *)script;
	 */
	public List languagesForScript(String script){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)dominantLanguageForScript:(NSString *)script;
	 */
	public String dominantLanguageForScript(String script){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
