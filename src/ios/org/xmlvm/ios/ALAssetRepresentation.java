package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ALAssetRepresentation extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public ALAssetRepresentation() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)UTI;
	 */
	public String UTI(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (long long)size;
	 */
	public long size(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)getBytes:(uint8_t *)buffer fromOffset:(long long)offset length:(NSUInteger)length error:(NSError **)error;
	 */
	public int getBytes(byte[] buffer, long offset, int length, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGImageRef)fullResolutionImage;
	 */
	public CGImage fullResolutionImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGImageRef)CGImageWithOptions:(NSDictionary *)options;
	 */
	public CGImage CGImageWithOptions(Map options){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGImageRef)fullScreenImage;
	 */
	public CGImage fullScreenImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)url;
	 */
	public NSURL url(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)metadata;
	 */
	public Map metadata(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (ALAssetOrientation)orientation;
	 */
	public int orientation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (float)scale;
	 */
	public float scale(){
		throw new RuntimeException("Stub");
	}
}
