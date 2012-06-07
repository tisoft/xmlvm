package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMClosedCaptionFormatDescription extends CMFormatDescription {

	/*
	 * Constructors
	 */
	public CMClosedCaptionFormatDescription(CFAllocator allocator, int mediaType, int mediaSubtype, CFDictionary extensions, Reference<CMFormatDescription> descOut) {
		super(allocator, mediaType, mediaSubtype, extensions, descOut);
	}

	/** Default constructor */
	public CMClosedCaptionFormatDescription() {
		super();
	}
}
