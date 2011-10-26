package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGPDFDictionary {

	/*
	 * Constructors
	 */

	/** Default constructor */
	CGPDFDictionary() {}

	/*
	 * Instance methods
	 */

	/**
	 * size_t CGPDFDictionaryGetCount(CGPDFDictionaryRef dict) ;
	 */
	public int getCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFDictionaryGetObject(CGPDFDictionaryRef dict, const char *key, CGPDFObjectRef *value) ;
	 */
	public boolean getObject(byte[] key, CGPDFObject value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFDictionaryGetBoolean(CGPDFDictionaryRef dict, const char *key, CGPDFBoolean *value) ;
	 */
	public boolean getBoolean(byte[] key, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFDictionaryGetInteger(CGPDFDictionaryRef dict, const char *key, CGPDFInteger *value) ;
	 */
	public boolean getInteger(byte[] key, long[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFDictionaryGetNumber(CGPDFDictionaryRef dict, const char *key, CGPDFReal *value) ;
	 */
	public boolean getNumber(byte[] key, float[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFDictionaryGetName(CGPDFDictionaryRef dict, const char *key, const char **value) ;
	 */
	public boolean getName(byte[] key, byte[][] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFDictionaryGetString(CGPDFDictionaryRef dict, const char *key, CGPDFStringRef *value) ;
	 */
	public boolean getString(byte[] key, Reference<CGPDFString> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFDictionaryGetArray(CGPDFDictionaryRef dict, const char *key, CGPDFArrayRef *value) ;
	 */
	public boolean getArray(byte[] key, Reference<CGPDFArray> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFDictionaryGetDictionary(CGPDFDictionaryRef dict, const char *key, CGPDFDictionaryRef *value) ;
	 */
	public boolean getDictionary(byte[] key, Reference<CGPDFDictionary> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFDictionaryGetStream(CGPDFDictionaryRef dict, const char *key, CGPDFStreamRef *value) ;
	 */
	public boolean getStream(byte[] key, Reference<CGPDFStream> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPDFDictionaryApplyFunction(CGPDFDictionaryRef dict, CGPDFDictionaryApplierFunction function, void *info) ;
	 */
	public void applyFunction(Object function, byte[] info){
		throw new RuntimeException("Stub");
	}
}
