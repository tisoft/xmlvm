package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGPDFScanner {

	/*
	 * Constructors
	 */

	/**
	 * CGPDFScannerRef CGPDFScannerCreate(CGPDFContentStreamRef cs, CGPDFOperatorTableRef table, void *info) ;
	 */
	public CGPDFScanner(CGPDFContentStream cs, CGPDFOperatorTable table, byte[] info) {}

	/** Default constructor */
	public CGPDFScanner() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGPDFScannerRef CGPDFScannerRetain(CGPDFScannerRef scanner) ;
	 */
	public CGPDFScanner retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPDFScannerRelease(CGPDFScannerRef scanner) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFScannerScan(CGPDFScannerRef scanner) ;
	 */
	public boolean scan(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPDFContentStreamRef CGPDFScannerGetContentStream( CGPDFScannerRef scanner) ;
	 */
	public CGPDFContentStream getContentStream(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFScannerPopObject(CGPDFScannerRef scanner, CGPDFObjectRef *value) ;
	 */
	public boolean popObject(CGPDFObject value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFScannerPopBoolean(CGPDFScannerRef scanner, CGPDFBoolean *value) ;
	 */
	public boolean popBoolean(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFScannerPopInteger(CGPDFScannerRef scanner, CGPDFInteger *value) ;
	 */
	public boolean popInteger(long[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFScannerPopNumber(CGPDFScannerRef scanner, CGPDFReal *value) ;
	 */
	public boolean popNumber(float[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFScannerPopName(CGPDFScannerRef scanner, const char **value) ;
	 */
	public boolean popName(byte[][] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFScannerPopString(CGPDFScannerRef scanner, CGPDFStringRef *value) ;
	 */
	public boolean popString(Reference<CGPDFString> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFScannerPopArray(CGPDFScannerRef scanner, CGPDFArrayRef *value) ;
	 */
	public boolean popArray(Reference<CGPDFArray> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFScannerPopDictionary(CGPDFScannerRef scanner, CGPDFDictionaryRef *value) ;
	 */
	public boolean popDictionary(Reference<CGPDFDictionary> value){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFScannerPopStream(CGPDFScannerRef scanner, CGPDFStreamRef *value) ;
	 */
	public boolean popStream(Reference<CGPDFStream> value){
		throw new RuntimeException("Stub");
	}
}
