package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={CGDataProviderSequentialCallbacks.class,CGDataProviderDirectAccessCallbacks.class,CGDataProviderDirectCallbacks.class,CGDataProviderCallbacks.class})
public class CGDataProvider extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CGDataProviderGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGDataProviderRef CGDataProviderCreateSequential(void *info, const CGDataProviderSequentialCallbacks *callbacks) ;
	 */
	public static CGDataProvider createSequential(byte[] info, Reference<CGDataProviderSequentialCallbacks> callbacks){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGDataProviderRef CGDataProviderCreateDirect(void *info, off_t size, const CGDataProviderDirectCallbacks *callbacks) ;
	 */
	public static CGDataProvider createDirect(byte[] info, int size, Reference<CGDataProviderDirectCallbacks> callbacks){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGDataProviderRef CGDataProviderCreateWithData(void *info, const void *data, size_t size, CGDataProviderReleaseDataCallback releaseData) ;
	 */
	public static CGDataProvider createWithData(byte[] info, byte[] data, int size, Object releaseData){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGDataProviderRef CGDataProviderCreateWithCFData(CFDataRef data) ;
	 */
	public static CGDataProvider createWithCFData(CFData data){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGDataProviderRef CGDataProviderCreateWithURL(CFURLRef url) ;
	 */
	public static CGDataProvider createWithURL(CFURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGDataProviderRef CGDataProviderCreateWithFilename(const char *filename) ;
	 */
	public static CGDataProvider createWithFilename(byte[] filename){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CGDataProviderRef CGDataProviderCreate(void *info, const CGDataProviderCallbacks *callbacks) ;
	 */
	public CGDataProvider(byte[] info, Reference<CGDataProviderCallbacks> callbacks) {}

	/** Default constructor */
	public CGDataProvider() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGDataProviderRef CGDataProviderRetain(CGDataProviderRef provider) ;
	 */
	public CGDataProvider retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGDataProviderRelease(CGDataProviderRef provider) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CGDataProviderCopyData(CGDataProviderRef provider) ;
	 */
	public CFData copyData(){
		throw new RuntimeException("Stub");
	}
}
