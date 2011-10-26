package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UITextRange extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	UITextRange() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly, getter=isEmpty) BOOL empty;
	 */
	public boolean isEmpty(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) UITextPosition *start;
	 */
	public UITextPosition getStart(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) UITextPosition *end;
	 */
	public UITextPosition getEnd(){
		throw new RuntimeException("Stub");
	}
}
