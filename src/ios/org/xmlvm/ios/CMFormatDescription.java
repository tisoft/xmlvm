package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMFormatDescription {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CMFormatDescriptionGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * OSStatus CMFormatDescriptionCreate( CFAllocatorRef allocator, CMMediaType mediaType, FourCharCode mediaSubtype, CFDictionaryRef extensions, CMFormatDescriptionRef *descOut) ;
	 */
	public CMFormatDescription(CFAllocator allocator, int mediaType, int mediaSubtype, CFDictionary extensions, Reference<CMFormatDescription> descOut) {}

	/** Default constructor */
	public CMFormatDescription() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean CMFormatDescriptionEqual( CMFormatDescriptionRef desc1, CMFormatDescriptionRef desc2) ;
	 */
	public byte equal(CMFormatDescription desc2){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CMFormatDescriptionEqualIgnoringExtensionKeys( CMFormatDescriptionRef desc1, CMFormatDescriptionRef desc2, CFTypeRef formatDescriptionExtensionKeysToIgnore, CFTypeRef sampleDescriptionExtensionAtomKeysToIgnore ) ;
	 */
	public byte equalIgnoringExtensionKeys(CMFormatDescription desc2, byte[] formatDescriptionExtensionKeysToIgnore, byte[] sampleDescriptionExtensionAtomKeysToIgnore){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMMediaType CMFormatDescriptionGetMediaType( CMFormatDescriptionRef desc) ;
	 */
	public int getMediaType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * FourCharCode CMFormatDescriptionGetMediaSubType( CMFormatDescriptionRef desc) ;
	 */
	public int getMediaSubType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CMFormatDescriptionGetExtensions( CMFormatDescriptionRef desc) ;
	 */
	public CFDictionary getExtensions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFPropertyListRef CMFormatDescriptionGetExtension( CMFormatDescriptionRef desc, CFStringRef extensionKey) ;
	 */
	public CFPropertyList getExtension(String extensionKey){
		throw new RuntimeException("Stub");
	}
}
