package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMMetadataFormatDescription extends CMFormatDescription {

	/*
	 * Static methods
	 */

	/**
	 * OSStatus CMMetadataFormatDescriptionCreateWithKeys( CFAllocatorRef allocator, CMMetadataFormatType metadataType, CFArrayRef keys, CMMetadataFormatDescriptionRef *outDesc) ;
	 */
	public static int createWithKeys(CFAllocator allocator, int metadataType, CFArray keys, CMMetadataFormatDescription outDesc){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */
	public CMMetadataFormatDescription(CFAllocator allocator, int mediaType, int mediaSubtype, CFDictionary extensions, Reference<CMFormatDescription> descOut) {
		super(allocator, mediaType, mediaSubtype, extensions, descOut);
	}

	/** Default constructor */
	public CMMetadataFormatDescription() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * CFDictionaryRef CMMetadataFormatDescriptionGetKeyWithLocalID( CMMetadataFormatDescriptionRef desc, OSType localKeyID) ;
	 */
	public CFDictionary getKeyWithLocalID(int localKeyID){
		throw new RuntimeException("Stub");
	}
}
