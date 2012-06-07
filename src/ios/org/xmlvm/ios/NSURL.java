package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={NSString.class,NSError.class})
public class NSURL extends NSObject {

	/*
	 * Initialization enumerations
	 */

	public static enum URLType {
		Any, FileURL;
	}

	/*
	 * Static methods
	 */

	/**
	 * + (id)fileURLWithPath:(NSString *)path isDirectory:(BOOL) isDir ;
	 */
	public static Object fileURLWithPath(String path, boolean isDir){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)fileURLWithPath:(NSString *)path;
	 */
	public static Object fileURLWithPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)URLWithString:(NSString *)URLString;
	 */
	public static NSURL URLWithString(String URLString){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)URLWithString:(NSString *)URLString relativeToURL:(NSURL *)baseURL;
	 */
	public static NSURL URLWithString(String URLString, NSURL baseURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)URLByResolvingBookmarkData:(NSData *)bookmarkData options:(NSURLBookmarkResolutionOptions)options relativeToURL:(NSURL *)relativeURL bookmarkDataIsStale:(BOOL *)isStale error:(NSError **)error ;
	 */
	public static NSURL URLByResolvingBookmarkData(NSData bookmarkData, int options, NSURL relativeURL, boolean[] isStale, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDictionary *)resourceValuesForKeys:(NSArray *)keys fromBookmarkData:(NSData *)bookmarkData ;
	 */
	public static Map resourceValuesForKeys(List keys, NSData bookmarkData){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)writeBookmarkData:(NSData *)bookmarkData toURL:(NSURL *)bookmarkFileURL options:(NSURLBookmarkFileCreationOptions)options error:(NSError **)error;
	 */
	public static boolean writeBookmarkData(NSData bookmarkData, NSURL bookmarkFileURL, int options, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSData *)bookmarkDataWithContentsOfURL:(NSURL *)bookmarkFileURL error:(NSError **)error;
	 */
	public static NSData bookmarkDataWithContentsOfURL(NSURL bookmarkFileURL, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSURL *)fileURLWithPathComponents:(NSArray *)components ;
	 */
	public static NSURL fileURLWithPathComponents(List components){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithScheme:(NSString *)scheme host:(NSString *)host path:(NSString *)path;
	 */
	public NSURL(String scheme, String host, String path) {}

	/**
	 * - (id)initFileURLWithPath:(NSString *)path isDirectory:(BOOL)isDir ;
	 */
	public NSURL(String path, boolean isDir) {}

	/**
	 * - (id)initFileURLWithPath:(NSString *)path;
	 * - initWithString:(NSString *)URLString;
	 */
	public NSURL(String path, NSURL.URLType urltype) {}

	/**
	 * - initWithString:(NSString *)URLString relativeToURL:(NSURL *)baseURL;
	 */
	public NSURL(String URLString, NSURL baseURL) {}

	/**
	 * - (id)initByResolvingBookmarkData:(NSData *)bookmarkData options:(NSURLBookmarkResolutionOptions)options relativeToURL:(NSURL *)relativeURL bookmarkDataIsStale:(BOOL *)isStale error:(NSError **)error ;
	 */
	public NSURL(NSData bookmarkData, int options, NSURL relativeURL, boolean[] isStale, Reference<NSError> error) {}

	/** Default constructor */
	public NSURL() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)absoluteString;
	 */
	public String absoluteString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)relativeString;
	 */
	public String relativeString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)baseURL;
	 */
	public NSURL baseURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)absoluteURL;
	 */
	public NSURL absoluteURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)scheme;
	 */
	public String scheme(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)resourceSpecifier;
	 */
	public String resourceSpecifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)host;
	 */
	public String host(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSNumber *)port;
	 */
	public NSNumber port(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)user;
	 */
	public String user(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)password;
	 */
	public String password(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)path;
	 */
	public String path(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)fragment;
	 */
	public String fragment(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)parameterString;
	 */
	public String parameterString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)query;
	 */
	public String query(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)relativePath;
	 */
	public String relativePath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isFileURL;
	 */
	public boolean isFileURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)standardizedURL;
	 */
	public NSURL standardizedURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)getResourceValue:(id *)value forKey:(NSString *)key error:(NSError **)error ;
	 */
	public boolean getResourceValue(Object[] value, String key, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)resourceValuesForKeys:(NSArray *)keys error:(NSError **)error ;
	 */
	public Map resourceValuesForKeys(List keys, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)setResourceValue:(id)value forKey:(NSString *)key error:(NSError **)error ;
	 */
	public boolean setResourceValue(Object value, String key, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)setResourceValues:(NSDictionary *)keyedValues error:(NSError **)error ;
	 */
	public boolean setResourceValues(Map keyedValues, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)checkResourceIsReachableAndReturnError:(NSError **)error ;
	 */
	public boolean checkResourceIsReachableAndReturnError(Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isFileReferenceURL ;
	 */
	public boolean isFileReferenceURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)fileReferenceURL ;
	 */
	public NSURL fileReferenceURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)filePathURL ;
	 */
	public NSURL filePathURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)bookmarkDataWithOptions:(NSURLBookmarkCreationOptions)options includingResourceValuesForKeys:(NSArray *)keys relativeToURL:(NSURL *)relativeURL error:(NSError **)error ;
	 */
	public NSData bookmarkDataWithOptions(int options, List keys, NSURL relativeURL, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)resourceDataUsingCache:(BOOL)shouldUseCache ;
	 */
	public NSData resourceDataUsingCache(boolean shouldUseCache){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)loadResourceDataNotifyingClient:(id)client usingCache:(BOOL)shouldUseCache ;
	 */
	public void loadResourceDataNotifyingClient(Object client, boolean shouldUseCache){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)propertyForKey:(NSString *)propertyKey ;
	 */
	public Object propertyForKey(String propertyKey){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)setResourceData:(NSData *)data ;
	 */
	public boolean setResourceData(NSData data){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)setProperty:(id)property forKey:(NSString *)propertyKey ;
	 */
	public boolean setProperty(Object property, String propertyKey){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURLHandle *)URLHandleUsingCache:(BOOL)shouldUseCache ;
	 */
	public NSURLHandle URLHandleUsingCache(boolean shouldUseCache){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)pathComponents ;
	 */
	public List pathComponents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)lastPathComponent ;
	 */
	public String lastPathComponent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)pathExtension ;
	 */
	public String pathExtension(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URLByAppendingPathComponent:(NSString *)pathComponent ;
	 */
	public NSURL URLByAppendingPathComponent(String pathComponent){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URLByDeletingLastPathComponent ;
	 */
	public NSURL URLByDeletingLastPathComponent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URLByAppendingPathExtension:(NSString *)pathExtension ;
	 */
	public NSURL URLByAppendingPathExtension(String pathExtension){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URLByDeletingPathExtension ;
	 */
	public NSURL URLByDeletingPathExtension(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URLByStandardizingPath ;
	 */
	public NSURL URLByStandardizingPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URLByResolvingSymlinksInPath ;
	 */
	public NSURL URLByResolvingSymlinksInPath(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */

	/**
	 * @property(readonly) NSURL * previewItemURL;
	 */
	public NSURL getPreviewItemURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSString * previewItemTitle;
	 */
	public String getPreviewItemTitle(){
		throw new RuntimeException("Stub");
	}
}
