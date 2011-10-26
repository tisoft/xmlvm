package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSBundle extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSBundle *)mainBundle;
	 */
	public static NSBundle mainBundle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSBundle *)bundleWithPath:(NSString *)path;
	 */
	public static NSBundle bundleWithPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSBundle *)bundleWithURL:(NSURL *)url ;
	 */
	public static NSBundle bundleWithURL(NSURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSBundle *)bundleForClass:(Class)aClass;
	 */
	public static NSBundle bundleForClass(Class aClass){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSBundle *)bundleWithIdentifier:(NSString *)identifier;
	 */
	public static NSBundle bundleWithIdentifier(String identifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)allBundles;
	 */
	public static List allBundles(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)allFrameworks;
	 */
	public static List allFrameworks(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSURL *)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subpath inBundleWithURL:(NSURL *)bundleURL ;
	 */
	public static NSURL URLForResource(String name, String ext, String subpath, NSURL bundleURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath inBundleWithURL:(NSURL *)bundleURL ;
	 */
	public static List URLsForResourcesWithExtension(String ext, String subpath, NSURL bundleURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSString *)pathForResource:(NSString *)name ofType:(NSString *)ext inDirectory:(NSString *)bundlePath;
	 */
	public static String pathForResourceInDirectoryStatic(String name, String ext, String bundlePath){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)bundlePath;
	 */
	public static List pathsForResourcesOfTypeInDirectoryStatic(String ext, String bundlePath){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)preferredLocalizationsFromArray:(NSArray *)localizationsArray;
	 */
	public static List preferredLocalizationsFromArray(List localizationsArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)preferredLocalizationsFromArray:(NSArray *)localizationsArray forPreferences:(NSArray *)preferencesArray ;
	 */
	public static List preferredLocalizationsFromArray(List localizationsArray, List preferencesArray){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithPath:(NSString *)path;
	 */
	public NSBundle(String path) {}

	/**
	 * - (id)initWithURL:(NSURL *)url ;
	 */
	public NSBundle(NSURL url) {}

	/** Default constructor */
	NSBundle() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)load;
	 */
	public boolean loadBundle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isLoaded ;
	 */
	public boolean isLoaded(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)unload ;
	 */
	public boolean unload(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)preflightAndReturnError:(NSError **)error ;
	 */
	public boolean preflightAndReturnError(Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)loadAndReturnError:(NSError **)error ;
	 */
	public boolean loadAndReturnError(Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)bundleURL ;
	 */
	public NSURL bundleURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)resourceURL ;
	 */
	public NSURL resourceURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)executableURL ;
	 */
	public NSURL executableURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URLForAuxiliaryExecutable:(NSString *)executableName ;
	 */
	public NSURL URLForAuxiliaryExecutable(String executableName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)privateFrameworksURL ;
	 */
	public NSURL privateFrameworksURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)sharedFrameworksURL ;
	 */
	public NSURL sharedFrameworksURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)sharedSupportURL ;
	 */
	public NSURL sharedSupportURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)builtInPlugInsURL ;
	 */
	public NSURL builtInPlugInsURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)bundlePath;
	 */
	public String bundlePath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)resourcePath;
	 */
	public String resourcePath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)executablePath;
	 */
	public String executablePath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)pathForAuxiliaryExecutable:(NSString *)executableName;
	 */
	public String pathForAuxiliaryExecutable(String executableName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)privateFrameworksPath;
	 */
	public String privateFrameworksPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)sharedFrameworksPath;
	 */
	public String sharedFrameworksPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)sharedSupportPath;
	 */
	public String sharedSupportPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)builtInPlugInsPath;
	 */
	public String builtInPlugInsPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URLForResource:(NSString *)name withExtension:(NSString *)ext ;
	 */
	public NSURL URLForResource(String name, String ext){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subpath ;
	 */
	public NSURL URLForResource(String name, String ext, String subpath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subpath localization:(NSString *)localizationName ;
	 */
	public NSURL URLForResource(String name, String ext, String subpath, String localizationName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath ;
	 */
	public List URLsForResourcesWithExtension(String ext, String subpath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath localization:(NSString *)localizationName ;
	 */
	public List URLsForResourcesWithExtension(String ext, String subpath, String localizationName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)pathForResource:(NSString *)name ofType:(NSString *)ext;
	 */
	public String pathForResource(String name, String ext){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)pathForResource:(NSString *)name ofType:(NSString *)ext inDirectory:(NSString *)subpath;
	 */
	public String pathForResourceInDirectory(String name, String ext, String subpath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)pathForResource:(NSString *)name ofType:(NSString *)ext inDirectory:(NSString *)subpath forLocalization:(NSString *)localizationName;
	 */
	public String pathForResource(String name, String ext, String subpath, String localizationName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)subpath;
	 */
	public List pathsForResourcesOfTypeInDirectory(String ext, String subpath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)subpath forLocalization:(NSString *)localizationName;
	 */
	public List pathsForResourcesOfType(String ext, String subpath, String localizationName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName;
	 */
	public String localizedStringForKey(String key, String value, String tableName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)bundleIdentifier;
	 */
	public String bundleIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)infoDictionary;
	 */
	public Map infoDictionary(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)localizedInfoDictionary ;
	 */
	public Map localizedInfoDictionary(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)objectForInfoDictionaryKey:(NSString *)key ;
	 */
	public Object objectForInfoDictionaryKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (Class)classNamed:(NSString *)className;
	 */
	public Class classNamed(String className){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (Class)principalClass;
	 */
	public Class principalClass(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)localizations;
	 */
	public List localizations(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)preferredLocalizations;
	 */
	public List preferredLocalizations(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)developmentLocalization ;
	 */
	public String developmentLocalization(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)executableArchitectures ;
	 */
	public List executableArchitectures(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)loadNibNamed:(NSString *)name owner:(id)owner options:(NSDictionary *)options;
	 */
	public List loadNibNamed(String name, Object owner, Map options){
		throw new RuntimeException("Stub");
	}
}
