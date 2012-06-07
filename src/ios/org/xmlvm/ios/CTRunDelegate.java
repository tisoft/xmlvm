package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CTRunDelegate {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CTRunDelegateGetTypeID( void ) ;
	 */
	public static long type(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CTRunDelegateRef CTRunDelegateCreate( const CTRunDelegateCallbacks* callbacks, void* refCon ) ;
	 */
	public CTRunDelegate(Reference<CTRunDelegateCallbacks> callbacks, byte[] refCon) {}

	/** Default constructor */
	public CTRunDelegate() {}

	/*
	 * Instance methods
	 */

	/**
	 * void* CTRunDelegateGetRefCon( CTRunDelegateRef runDelegate ) ;
	 */
	public byte[] ref(){
		throw new RuntimeException("Stub");
	}
}
