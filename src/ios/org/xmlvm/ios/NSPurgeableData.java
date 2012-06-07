package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSPurgeableData extends NSMutableData {

	/*
	 * Constructors
	 */
	public NSPurgeableData(int capacity, NSMutableData.Data data) {
		super(capacity, data);
	}
	public NSPurgeableData(byte[] bytes, int length, NSData.Data data) {
		super(bytes, length, data);
	}
	public NSPurgeableData(byte[] bytes, int length, boolean b) {
		super(bytes, length, b);
	}
	public NSPurgeableData(String path, int readOptionsMask, Reference<NSError> errorPtr) {
		super(path, readOptionsMask, errorPtr);
	}
	public NSPurgeableData(NSURL url, int readOptionsMask, Reference<NSError> errorPtr) {
		super(url, readOptionsMask, errorPtr);
	}
	public NSPurgeableData(String path, NSData.File file) {
		super(path, file);
	}
	public NSPurgeableData(NSURL url) {
		super(url);
	}
	public NSPurgeableData(NSData data) {
		super(data);
	}

	/** Default constructor */
	public NSPurgeableData() {
		super();
	}

	/*
	 * Interface Properties
	 */
}
