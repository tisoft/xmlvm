package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CVImageBuffer extends CVBuffer {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CVImageBuffer() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * CGSize CVImageBufferGetEncodedSize(CVImageBufferRef imageBuffer) ;
	 */
	public CGSize getEncodedSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGSize CVImageBufferGetDisplaySize(CVImageBufferRef imageBuffer) ;
	 */
	public CGSize getDisplaySize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CVImageBufferGetCleanRect(CVImageBufferRef imageBuffer) ;
	 */
	public CGRect getCleanRect(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGColorSpaceRef CVImageBufferGetColorSpace(CVImageBufferRef imageBuffer) ;
	 */
	public CGColorSpace getColorSpace(){
		throw new RuntimeException("Stub");
	}
}
