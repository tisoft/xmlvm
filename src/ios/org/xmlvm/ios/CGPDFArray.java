package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGPDFArray {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CGPDFArray() {}

	/*
	 * Instance methods
	 */

	/**
	 * size_t CGPDFArrayGetCount(CGPDFArrayRef array) ;
	 */
	public int getCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFArrayGetObject(CGPDFArrayRef array, size_t index, CGPDFObjectRef *value) ;
	 */
	public boolean getObject(int index, CGPDFObject value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFArrayGetNull(CGPDFArrayRef array, size_t index) ;
	 */
	public boolean getNull(int index){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFArrayGetBoolean(CGPDFArrayRef array, size_t index, CGPDFBoolean *value) ;
	 */
	public boolean getBoolean(int index, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFArrayGetInteger(CGPDFArrayRef array, size_t index, CGPDFInteger *value) ;
	 */
	public boolean getInteger(int index, long[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFArrayGetNumber(CGPDFArrayRef array, size_t index, CGPDFReal *value) ;
	 */
	public boolean getNumber(int index, float[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFArrayGetName(CGPDFArrayRef array, size_t index, const char **value) ;
	 */
	public boolean getName(int index, byte[][] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFArrayGetString(CGPDFArrayRef array, size_t index, CGPDFStringRef *value) ;
	 */
	public boolean getString(int index, Reference<CGPDFString> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFArrayGetArray(CGPDFArrayRef array, size_t index, CGPDFArrayRef *value) ;
	 */
	public boolean getArray(int index, Reference<CGPDFArray> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFArrayGetDictionary(CGPDFArrayRef array, size_t index, CGPDFDictionaryRef *value) ;
	 */
	public boolean getDictionary(int index, Reference<CGPDFDictionary> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFArrayGetStream(CGPDFArrayRef array, size_t index, CGPDFStreamRef *value) ;
	 */
	public boolean getStream(int index, Reference<CGPDFStream> value){
		throw new RuntimeException("Stub");
	}
}
