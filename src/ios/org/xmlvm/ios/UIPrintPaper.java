package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIPrintPaper extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (UIPrintPaper *)bestPaperForPageSize:(CGSize)contentSize withPapersFromArray:(NSArray *)paperList;
	 */
	public static UIPrintPaper bestPaperForPageSize(CGSize contentSize, List paperList){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	UIPrintPaper() {}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly) CGSize paperSize;
	 */
	public CGSize getPaperSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) CGRect printableRect;
	 */
	public CGRect getPrintableRect(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (CGRect)printRect;
	 */
	public CGRect printRect(){
		throw new RuntimeException("Stub");
	}
}
