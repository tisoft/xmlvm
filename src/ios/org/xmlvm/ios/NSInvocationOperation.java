package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSInvocationOperation extends NSOperation {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithTarget:(id)target selector:(SEL)sel object:(id)arg;
	 */
	public NSInvocationOperation(Object target, SEL sel, Object arg) {}

	/**
	 * - (id)initWithInvocation:(NSInvocation *)inv;
	 */
	public NSInvocationOperation(NSInvocation inv) {}

	/** Default constructor */
	public NSInvocationOperation() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInvocation *)invocation;
	 */
	public NSInvocation invocation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)result;
	 */
	public Object result(){
		throw new RuntimeException("Stub");
	}
}
