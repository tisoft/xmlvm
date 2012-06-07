package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGPDFPage extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CGPDFPageGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CGPDFPage() {}

	/*
	 * Instance methods
	 */

	/**
	 * CGPDFPageRef CGPDFPageRetain(CGPDFPageRef page) ;
	 */
	public CGPDFPage retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CGPDFPageRelease(CGPDFPageRef page) ;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPDFDocumentRef CGPDFPageGetDocument(CGPDFPageRef page) ;
	 */
	public CGPDFDocument getDocument(){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CGPDFPageGetPageNumber(CGPDFPageRef page) ;
	 */
	public int getPageNumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box) ;
	 */
	public CGRect getBoxRect(int box){
		throw new RuntimeException("Stub");
	}

	/**
	 * int CGPDFPageGetRotationAngle(CGPDFPageRef page) ;
	 */
	public int getRotationAngle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGAffineTransform CGPDFPageGetDrawingTransform(CGPDFPageRef page, CGPDFBox box, CGRect rect, int rotate, bool preserveAspectRatio) ;
	 */
	public CGAffineTransform getDrawingTransform(int box, CGRect rect, int rotate, boolean preserveAspectRatio){
		throw new RuntimeException("Stub");
	}

	/**
	 * CGPDFDictionaryRef CGPDFPageGetDictionary(CGPDFPageRef page) ;
	 */
	public CGPDFDictionary getDictionary(){
		throw new RuntimeException("Stub");
	}
}
