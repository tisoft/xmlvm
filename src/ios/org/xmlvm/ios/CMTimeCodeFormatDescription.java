package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMTimeCodeFormatDescription extends CMFormatDescription {

	/*
	 * Constructors
	 */
	public CMTimeCodeFormatDescription(CFAllocator allocator, int mediaType, int mediaSubtype, CFDictionary extensions, Reference<CMFormatDescription> descOut) {
		super(allocator, mediaType, mediaSubtype, extensions, descOut);
	}

	/**
	 * OSStatus CMTimeCodeFormatDescriptionCreate( CFAllocatorRef allocator, CMTimeCodeFormatType timeCodeFormatType, CMTime frameDuration, uint32_t frameQuanta, uint32_t tcFlags, CFDictionaryRef extensions, CMTimeCodeFormatDescriptionRef *descOut) ;
	 */
	public CMTimeCodeFormatDescription(CFAllocator allocator, int timeCodeFormatType, CMTime frameDuration, int frameQuanta, int tcFlags, CFDictionary extensions, CMTimeCodeFormatDescription descOut) {}

	/** Default constructor */
	public CMTimeCodeFormatDescription() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * CMTime CMTimeCodeFormatDescriptionGetFrameDuration( CMTimeCodeFormatDescriptionRef timeCodeFormatDescription) ;
	 */
	public CMTime getFrameDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint32_t CMTimeCodeFormatDescriptionGetFrameQuanta( CMTimeCodeFormatDescriptionRef timeCodeFormatDescription) ;
	 */
	public int getFrameQuanta(){
		throw new RuntimeException("Stub");
	}

	/**
	 * uint32_t CMTimeCodeFormatDescriptionGetTimeCodeFlags( CMTimeCodeFormatDescriptionRef desc) ;
	 */
	public int getTimeCodeFlags(){
		throw new RuntimeException("Stub");
	}
}
