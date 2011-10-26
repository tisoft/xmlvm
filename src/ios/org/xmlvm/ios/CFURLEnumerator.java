package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFURLEnumerator {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFURLEnumeratorGetTypeID( void ) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLEnumeratorRef CFURLEnumeratorCreateForDirectoryURL( CFAllocatorRef alloc, CFURLRef directoryURL, CFURLEnumeratorOptions option, CFArrayRef propertyKeys ) ;
	 */
	public static CFURLEnumerator createForDirectoryURL(CFAllocator alloc, CFURL directoryURL, long option, CFArray propertyKeys){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLEnumeratorRef CFURLEnumeratorCreateForMountedVolumes( CFAllocatorRef alloc, CFURLEnumeratorOptions option, CFArrayRef propertyKeys ) ;
	 */
	public static CFURLEnumerator createForMountedVolumes(CFAllocator alloc, long option, CFArray propertyKeys){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CFURLEnumerator() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFURLEnumeratorResult CFURLEnumeratorGetNextURL( CFURLEnumeratorRef enumerator, CFURLRef *url, CFErrorRef *error ) ;
	 */
	public long getNextURL(Reference<CFURL> url, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFURLEnumeratorSkipDescendents( CFURLEnumeratorRef enumerator ) ;
	 */
	public void skipDescendents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFURLEnumeratorGetDescendentLevel( CFURLEnumeratorRef enumerator ) ;
	 */
	public long getDescendentLevel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFURLEnumeratorGetSourceDidChange( CFURLEnumeratorRef enumerator ) ;
	 */
	public byte getSourceDidChange(){
		throw new RuntimeException("Stub");
	}
}
