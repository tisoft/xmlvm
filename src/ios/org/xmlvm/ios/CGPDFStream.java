package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGPDFStream {

	/*
	 * Constructors
	 */

	/** Default constructor */
	CGPDFStream() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGPDFDictionaryRef CGPDFStreamGetDictionary(CGPDFStreamRef stream) ;
	 */
	public CGPDFDictionary getDictionary(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CGPDFStreamCopyData(CGPDFStreamRef stream, CGPDFDataFormat *format) ;
	 */
	public CFData copyData(int[] format){
		throw new RuntimeException("Stub");
	}
}
