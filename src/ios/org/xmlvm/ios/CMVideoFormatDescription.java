package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMVideoFormatDescription extends CMFormatDescription {

	/*
	 * Static methods
	 */

	/**
	 * OSStatus CMVideoFormatDescriptionCreateForImageBuffer( CFAllocatorRef allocator, CVImageBufferRef imageBuffer, CMVideoFormatDescriptionRef *outDesc) ;
	 */
	public static int createForImageBuffer(CFAllocator allocator, CVImageBuffer imageBuffer, CMVideoFormatDescription outDesc){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CMVideoFormatDescriptionGetExtensionKeysCommonWithImageBuffers(void) ;
	 */
	public static CFArray getExtensionKeysCommonWithImageBuffers(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */
	public CMVideoFormatDescription(CFAllocator allocator, int mediaType, int mediaSubtype, CFDictionary extensions, Reference<CMFormatDescription> descOut) {
		super(allocator, mediaType, mediaSubtype, extensions, descOut);
	}

	/**
	 * OSStatus CMVideoFormatDescriptionCreate( CFAllocatorRef allocator, CMVideoCodecType codecType, int32_t width, int32_t height, CFDictionaryRef extensions, CMVideoFormatDescriptionRef *outDesc) ;
	 */
	public CMVideoFormatDescription(CFAllocator allocator, int codecType, int width, int height, CFDictionary extensions, CMVideoFormatDescription outDesc) {}

	/** Default constructor */
	public CMVideoFormatDescription() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * CMVideoDimensions CMVideoFormatDescriptionGetDimensions( CMVideoFormatDescriptionRef videoDesc) ;
	 */
	public CMVideoDimensions getDimensions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGSize CMVideoFormatDescriptionGetPresentationDimensions( CMVideoFormatDescriptionRef videoDesc, Boolean usePixelAspectRatio, Boolean useCleanAperture ) ;
	 */
	public CGSize getPresentationDimensions(byte usePixelAspectRatio, byte useCleanAperture){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CMVideoFormatDescriptionGetCleanAperture( CMVideoFormatDescriptionRef videoDesc, Boolean originIsAtTopLeft ) ;
	 */
	public CGRect getCleanAperture(byte originIsAtTopLeft){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CMVideoFormatDescriptionMatchesImageBuffer( CMVideoFormatDescriptionRef desc, CVImageBufferRef imageBuffer) ;
	 */
	public byte matchesImageBuffer(CVImageBuffer imageBuffer){
		throw new RuntimeException("Stub");
	}
}
