package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={NSError.class})
public class NSFileManager extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSFileManager *)defaultManager;
	 */
	public static NSFileManager defaultManager(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSFileManager() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSArray *)mountedVolumeURLsIncludingResourceValuesForKeys:(NSArray *)propertyKeys options:(NSVolumeEnumerationOptions)options ;
	 */
	public List mountedVolumeURLsIncludingResourceValuesForKeys(List propertyKeys, int options){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)contentsOfDirectoryAtURL:(NSURL *)url includingPropertiesForKeys:(NSArray *)keys options:(NSDirectoryEnumerationOptions)mask error:(NSError **)error ;
	 */
	public List contentsOfDirectoryAtURL(NSURL url, List keys, int mask, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)URLsForDirectory:(NSSearchPathDirectory)directory inDomains:(NSSearchPathDomainMask)domainMask ;
	 */
	public List URLsForDirectory(int directory, int domainMask){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URLForDirectory:(NSSearchPathDirectory)directory inDomain:(NSSearchPathDomainMask)domain appropriateForURL:(NSURL *)url create:(BOOL)shouldCreate error:(NSError **)error ;
	 */
	public NSURL URLForDirectory(int directory, int domain, NSURL url, boolean shouldCreate, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDelegate:(id)delegate;
	 */
	public void setDelegate(Object delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)delegate;
	 */
	public Object delegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)setAttributes:(NSDictionary *)attributes ofItemAtPath:(NSString *)path error:(NSError **)error;
	 */
	public boolean setAttributes(Map attributes, String path, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)createDirectoryAtPath:(NSString *)path withIntermediateDirectories:(BOOL)createIntermediates attributes:(NSDictionary *)attributes error:(NSError **)error;
	 */
	public boolean createDirectoryAtPath(String path, boolean createIntermediates, Map attributes, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)contentsOfDirectoryAtPath:(NSString *)path error:(NSError **)error;
	 */
	public List contentsOfDirectoryAtPath(String path, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)subpathsOfDirectoryAtPath:(NSString *)path error:(NSError **)error;
	 */
	public List subpathsOfDirectoryAtPath(String path, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)attributesOfItemAtPath:(NSString *)path error:(NSError **)error;
	 */
	public Map attributesOfItemAtPath(String path, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)attributesOfFileSystemForPath:(NSString *)path error:(NSError **)error;
	 */
	public Map attributesOfFileSystemForPath(String path, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)createSymbolicLinkAtPath:(NSString *)path withDestinationPath:(NSString *)destPath error:(NSError **)error;
	 */
	public boolean createSymbolicLinkAtPath(String path, String destPath, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)destinationOfSymbolicLinkAtPath:(NSString *)path error:(NSError **)error;
	 */
	public String destinationOfSymbolicLinkAtPath(String path, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)copyItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath error:(NSError **)error;
	 */
	public boolean copyItemAtPath(String srcPath, String dstPath, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)moveItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath error:(NSError **)error;
	 */
	public boolean moveItemAtPath(String srcPath, String dstPath, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)linkItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath error:(NSError **)error;
	 */
	public boolean linkItemAtPath(String srcPath, String dstPath, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)removeItemAtPath:(NSString *)path error:(NSError **)error;
	 */
	public boolean removeItemAtPath(String path, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)copyItemAtURL:(NSURL *)srcURL toURL:(NSURL *)dstURL error:(NSError **)error ;
	 */
	public boolean copyItemAtURL(NSURL srcURL, NSURL dstURL, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)moveItemAtURL:(NSURL *)srcURL toURL:(NSURL *)dstURL error:(NSError **)error ;
	 */
	public boolean moveItemAtURL(NSURL srcURL, NSURL dstURL, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)linkItemAtURL:(NSURL *)srcURL toURL:(NSURL *)dstURL error:(NSError **)error ;
	 */
	public boolean linkItemAtURL(NSURL srcURL, NSURL dstURL, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)removeItemAtURL:(NSURL *)URL error:(NSError **)error ;
	 */
	public boolean removeItemAtURL(NSURL URL, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)fileAttributesAtPath:(NSString *)path traverseLink:(BOOL)yorn ;
	 */
	public Map fileAttributesAtPath(String path, boolean yorn){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)changeFileAttributes:(NSDictionary *)attributes atPath:(NSString *)path ;
	 */
	public boolean changeFileAttributes(Map attributes, String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)directoryContentsAtPath:(NSString *)path ;
	 */
	public List directoryContentsAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)fileSystemAttributesAtPath:(NSString *)path ;
	 */
	public Map fileSystemAttributesAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)pathContentOfSymbolicLinkAtPath:(NSString *)path ;
	 */
	public String pathContentOfSymbolicLinkAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)createSymbolicLinkAtPath:(NSString *)path pathContent:(NSString *)otherpath ;
	 */
	public boolean createSymbolicLinkAtPath(String path, String otherpath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)createDirectoryAtPath:(NSString *)path attributes:(NSDictionary *)attributes ;
	 */
	public boolean createDirectoryAtPath(String path, Map attributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)linkPath:(NSString *)src toPath:(NSString *)dest handler:(id)handler ;
	 */
	public boolean linkPath(String src, String dest, Object handler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)copyPath:(NSString *)src toPath:(NSString *)dest handler:(id)handler ;
	 */
	public boolean copyPath(String src, String dest, Object handler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)movePath:(NSString *)src toPath:(NSString *)dest handler:(id)handler ;
	 */
	public boolean movePath(String src, String dest, Object handler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)removeFileAtPath:(NSString *)path handler:(id)handler ;
	 */
	public boolean removeFileAtPath(String path, Object handler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)currentDirectoryPath;
	 */
	public String currentDirectoryPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)changeCurrentDirectoryPath:(NSString *)path;
	 */
	public boolean changeCurrentDirectoryPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileExistsAtPath:(NSString *)path;
	 */
	public boolean fileExistsAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileExistsAtPath:(NSString *)path isDirectory:(BOOL *)isDirectory;
	 */
	public boolean fileExistsAtPath(String path, boolean[] isDirectory){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isReadableFileAtPath:(NSString *)path;
	 */
	public boolean isReadableFileAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isWritableFileAtPath:(NSString *)path;
	 */
	public boolean isWritableFileAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isExecutableFileAtPath:(NSString *)path;
	 */
	public boolean isExecutableFileAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isDeletableFileAtPath:(NSString *)path;
	 */
	public boolean isDeletableFileAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)contentsEqualAtPath:(NSString *)path1 andPath:(NSString *)path2;
	 */
	public boolean contentsEqualAtPath(String path1, String path2){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)displayNameAtPath:(NSString *)path;
	 */
	public String displayNameAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)componentsToDisplayForPath:(NSString *)path;
	 */
	public List componentsToDisplayForPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDirectoryEnumerator *)enumeratorAtPath:(NSString *)path;
	 */
	public NSDirectoryEnumerator enumeratorAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDirectoryEnumerator *)enumeratorAtURL:(NSURL *)url includingPropertiesForKeys:(NSArray *)keys options:(NSDirectoryEnumerationOptions)mask errorHandler:(BOOL (^)(NSURL *url, NSError *error))handler ;
	 */
	public NSDirectoryEnumerator enumeratorAtURL(NSURL url, List keys, int mask, Object handler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)subpathsAtPath:(NSString *)path;
	 */
	public List subpathsAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)contentsAtPath:(NSString *)path;
	 */
	public NSData contentsAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)createFileAtPath:(NSString *)path contents:(NSData *)data attributes:(NSDictionary *)attr;
	 */
	public boolean createFileAtPath(String path, NSData data, Map attr){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (__strong const char *)fileSystemRepresentationWithPath:(NSString *)path;
	 */
	public byte[] fileSystemRepresentationWithPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringWithFileSystemRepresentation:(const char *)str length:(NSUInteger)len;
	 */
	public String stringWithFileSystemRepresentation(byte[] str, int len){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)replaceItemAtURL:(NSURL *)originalItemURL withItemAtURL:(NSURL *)newItemURL backupItemName:(NSString *)backupItemName options:(NSFileManagerItemReplacementOptions)options resultingItemURL:(NSURL **)resultingURL error:(NSError **)error ;
	 */
	public boolean replaceItemAtURL(NSURL originalItemURL, NSURL newItemURL, String backupItemName, int options, Reference<NSURL> resultingURL, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}
}
