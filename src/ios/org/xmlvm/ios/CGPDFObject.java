package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGPDFObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CGPDFObject() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGPDFObjectType CGPDFObjectGetType(CGPDFObjectRef object) ;
	 */
	public int getType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CGPDFObjectGetValue(CGPDFObjectRef object, CGPDFObjectType type, void *value) ;
	 */
	public boolean getValue(int type, byte[] value){
		throw new RuntimeException("Stub");
	}
}
