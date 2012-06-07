package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMMuxedFormatDescription extends CMFormatDescription {

	/*
	 * Constructors
	 */
	public CMMuxedFormatDescription(CFAllocator allocator, int mediaType, int mediaSubtype, CFDictionary extensions, Reference<CMFormatDescription> descOut) {
		super(allocator, mediaType, mediaSubtype, extensions, descOut);
	}

	/**
	 * OSStatus CMMuxedFormatDescriptionCreate( CFAllocatorRef allocator, CMMuxedStreamType muxType, CFDictionaryRef extensions, CMMuxedFormatDescriptionRef *outDesc) ;
	 */
	public CMMuxedFormatDescription(CFAllocator allocator, int muxType, CFDictionary extensions, CMMuxedFormatDescription outDesc) {}

	/** Default constructor */
	public CMMuxedFormatDescription() {
		super();
	}
}
