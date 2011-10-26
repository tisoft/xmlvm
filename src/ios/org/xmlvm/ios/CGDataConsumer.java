package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGDataConsumer {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CGDataConsumerGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGDataConsumerRef CGDataConsumerCreateWithURL(CFURLRef url) ;
	 */
	public static CGDataConsumer createWithURL(CFURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGDataConsumerRef CGDataConsumerCreateWithCFData(CFMutableDataRef data) ;
	 */
	public static CGDataConsumer createWithCFData(CFData data){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CGDataConsumerRef CGDataConsumerCreate(void *info, const CGDataConsumerCallbacks *callbacks) ;
	 */
	public CGDataConsumer(byte[] info, Reference<CGDataConsumerCallbacks> callbacks) {}

	/** Default constructor */
	CGDataConsumer() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGDataConsumerRef CGDataConsumerRetain(CGDataConsumerRef consumer) ;
	 */
	public CGDataConsumer retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGDataConsumerRelease(CGDataConsumerRef consumer) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}
}
