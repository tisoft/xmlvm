package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSBlockOperation extends NSOperation {

	/*
	 * Static methods
	 */

	/**
	 * + (id)blockOperationWithBlock:(void (^)(void))block ;
	 */
	public static NSBlockOperation blockOperationWithBlock(Object block){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSBlockOperation() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)addExecutionBlock:(void (^)(void))block ;
	 */
	public void addExecutionBlock(Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)executionBlocks ;
	 */
	public List executionBlocks(){
		throw new RuntimeException("Stub");
	}
}
