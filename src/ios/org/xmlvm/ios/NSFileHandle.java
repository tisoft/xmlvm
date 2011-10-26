package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSFileHandle extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)fileHandleWithStandardInput;
	 */
	public static NSFileHandle fileHandleWithStandardInput(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)fileHandleWithStandardOutput;
	 */
	public static NSFileHandle fileHandleWithStandardOutput(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)fileHandleWithStandardError;
	 */
	public static NSFileHandle fileHandleWithStandardError(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)fileHandleWithNullDevice;
	 */
	public static NSFileHandle fileHandleWithNullDevice(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)fileHandleForReadingAtPath:(NSString *)path;
	 */
	public static NSFileHandle fileHandleForReadingAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)fileHandleForWritingAtPath:(NSString *)path;
	 */
	public static NSFileHandle fileHandleForWritingAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)fileHandleForUpdatingAtPath:(NSString *)path;
	 */
	public static NSFileHandle fileHandleForUpdatingAtPath(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)fileHandleForReadingFromURL:(NSURL *)url error:(NSError **)error ;
	 */
	public static NSFileHandle fileHandleForReadingFromURL(NSURL url, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)fileHandleForWritingToURL:(NSURL *)url error:(NSError **)error ;
	 */
	public static NSFileHandle fileHandleForWritingToURL(NSURL url, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)fileHandleForUpdatingURL:(NSURL *)url error:(NSError **)error ;
	 */
	public static NSFileHandle fileHandleForUpdatingURL(NSURL url, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithFileDescriptor:(int)fd closeOnDealloc:(BOOL)closeopt;
	 */
	public NSFileHandle(int fd, boolean closeopt) {}

	/**
	 * - (id)initWithFileDescriptor:(int)fd;
	 */
	public NSFileHandle(int fd) {}

	/** Default constructor */
	NSFileHandle() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSData *)availableData;
	 */
	public NSData availableData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)readDataToEndOfFile;
	 */
	public NSData readDataToEndOfFile(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)readDataOfLength:(NSUInteger)length;
	 */
	public NSData readDataOfLength(int length){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)writeData:(NSData *)data;
	 */
	public void writeData(NSData data){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (unsigned long long)offsetInFile;
	 */
	public long offsetInFile(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (unsigned long long)seekToEndOfFile;
	 */
	public long seekToEndOfFile(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)seekToFileOffset:(unsigned long long)offset;
	 */
	public void seekToFileOffset(long offset){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)truncateFileAtOffset:(unsigned long long)offset;
	 */
	public void truncateFileAtOffset(long offset){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)synchronizeFile;
	 */
	public void synchronizeFile(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)closeFile;
	 */
	public void closeFile(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)readInBackgroundAndNotifyForModes:(NSArray *)modes;
	 */
	public void readInBackgroundAndNotifyForModes(List modes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)readInBackgroundAndNotify;
	 */
	public void readInBackgroundAndNotify(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)readToEndOfFileInBackgroundAndNotifyForModes:(NSArray *)modes;
	 */
	public void readToEndOfFileInBackgroundAndNotifyForModes(List modes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)readToEndOfFileInBackgroundAndNotify;
	 */
	public void readToEndOfFileInBackgroundAndNotify(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)acceptConnectionInBackgroundAndNotifyForModes:(NSArray *)modes;
	 */
	public void acceptConnectionInBackgroundAndNotifyForModes(List modes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)acceptConnectionInBackgroundAndNotify;
	 */
	public void acceptConnectionInBackgroundAndNotify(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)waitForDataInBackgroundAndNotifyForModes:(NSArray *)modes;
	 */
	public void waitForDataInBackgroundAndNotifyForModes(List modes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)waitForDataInBackgroundAndNotify;
	 */
	public void waitForDataInBackgroundAndNotify(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (int)fileDescriptor;
	 */
	public int fileDescriptor(){
		throw new RuntimeException("Stub");
	}
}
