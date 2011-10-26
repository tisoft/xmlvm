package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGPDFContentStream {

	/*
	 * Static methods
	 */

	/**
	 * CGPDFContentStreamRef CGPDFContentStreamCreateWithPage( CGPDFPageRef page) ;
	 */
	public static CGPDFContentStream createWithPage(CGPDFPage page){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPDFContentStreamRef CGPDFContentStreamCreateWithStream( CGPDFStreamRef stream, CGPDFDictionaryRef streamResources, CGPDFContentStreamRef parent) ;
	 */
	public static CGPDFContentStream createWithStream(CGPDFStream stream, CGPDFDictionary streamResources, CGPDFContentStream parent){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CGPDFContentStream() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGPDFContentStreamRef CGPDFContentStreamRetain( CGPDFContentStreamRef cs) ;
	 */
	public CGPDFContentStream retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPDFContentStreamRelease(CGPDFContentStreamRef cs) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CGPDFContentStreamGetStreams(CGPDFContentStreamRef cs) ;
	 */
	public CFArray getStreams(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPDFObjectRef CGPDFContentStreamGetResource( CGPDFContentStreamRef cs, const char *category, const char *name) ;
	 */
	public CGPDFObject getResource(byte[] category, byte[] name){
		throw new RuntimeException("Stub");
	}
}
