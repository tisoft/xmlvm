package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSFileWrapper extends NSObject {

	/*
	 * Initialization enumerations
	 */

	public static enum ContentType {
		NSData, SerializedRepresentation;
	}

	public static enum FileType {
		Regular, SymbolicLinkWithDestination;
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithURL:(NSURL *)url options:(NSFileWrapperReadingOptions)options error:(NSError **)outError ;
	 */
	public NSFileWrapper(NSURL url, int options, Reference<NSError> outError) {}

	/**
	 * - (id)initDirectoryWithFileWrappers:(NSDictionary *)childrenByPreferredName;
	 */
	public NSFileWrapper(Map childrenByPreferredName) {}

	/**
	 * - (id)initRegularFileWithContents:(NSData *)contents;
	 * - (id)initWithSerializedRepresentation:(NSData *)serializeRepresentation;
	 */
	public NSFileWrapper(NSData contents, NSFileWrapper.ContentType contenttype) {}

	/**
	 * - (id)initSymbolicLinkWithDestinationURL:(NSURL *)url ;
	 */
	public NSFileWrapper(NSURL url) {}

	/**
	 * - (id)initWithPath:(NSString *)path;
	 * - (id)initSymbolicLinkWithDestination:(NSString *)path;
	 */
	public NSFileWrapper(String path, NSFileWrapper.FileType filetype) {}

	/** Default constructor */
	NSFileWrapper() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)isDirectory;
	 */
	public boolean isDirectory(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isRegularFile;
	 */
	public boolean isRegularFile(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isSymbolicLink;
	 */
	public boolean isSymbolicLink(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPreferredFilename:(NSString *)fileName;
	 */
	public void setPreferredFilename(String fileName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)preferredFilename;
	 */
	public String preferredFilename(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setFilename:(NSString *)fileName;
	 */
	public void setFilename(String fileName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)filename;
	 */
	public String filename(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setFileAttributes:(NSDictionary *)fileAttributes;
	 */
	public void setFileAttributes(Map fileAttributes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)fileAttributes;
	 */
	public Map fileAttributes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)matchesContentsOfURL:(NSURL *)url ;
	 */
	public boolean matchesContentsOfURL(NSURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)readFromURL:(NSURL *)url options:(NSFileWrapperReadingOptions)options error:(NSError **)outError ;
	 */
	public boolean readFromURL(NSURL url, int options, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)writeToURL:(NSURL *)url options:(NSFileWrapperWritingOptions)options originalContentsURL:(NSURL *)originalContentsURL error:(NSError **)outError ;
	 */
	public boolean writeToURL(NSURL url, int options, NSURL originalContentsURL, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)serializedRepresentation;
	 */
	public NSData serializedRepresentation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)addFileWrapper:(NSFileWrapper *)child;
	 */
	public String addFileWrapper(NSFileWrapper child){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)addRegularFileWithContents:(NSData *)data preferredFilename:(NSString *)fileName;
	 */
	public String addRegularFileWithContents(NSData data, String fileName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeFileWrapper:(NSFileWrapper *)child;
	 */
	public void removeFileWrapper(NSFileWrapper child){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)fileWrappers;
	 */
	public Map fileWrappers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)keyForFileWrapper:(NSFileWrapper *)child;
	 */
	public String keyForFileWrapper(NSFileWrapper child){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)regularFileContents;
	 */
	public NSData regularFileContents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)symbolicLinkDestinationURL ;
	 */
	public NSURL symbolicLinkDestinationURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)needsToBeUpdatedFromPath:(NSString *)path;
	 */
	public boolean needsToBeUpdatedFromPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)updateFromPath:(NSString *)path;
	 */
	public boolean updateFromPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)atomicFlag updateFilenames:(BOOL)updateFilenamesFlag;
	 */
	public boolean writeToFile(String path, boolean atomicFlag, boolean updateFilenamesFlag){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)addFileWithPath:(NSString *)path;
	 */
	public String addFileWithPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)addSymbolicLinkWithDestination:(NSString *)path preferredFilename:(NSString *)filename;
	 */
	public String addSymbolicLinkWithDestination(String path, String filename){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)symbolicLinkDestination;
	 */
	public String symbolicLinkDestination(){
		throw new RuntimeException("Stub");
	}
}
