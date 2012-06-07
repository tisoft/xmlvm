package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSOperationQueue extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)currentQueue ;
	 */
	public static Object currentQueue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)mainQueue ;
	 */
	public static Object mainQueue(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSOperationQueue() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)addOperation:(NSOperation *)op;
	 */
	public void addOperation(NSOperation op){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addOperations:(NSArray *)ops waitUntilFinished:(BOOL)wait ;
	 */
	public void addOperations(List ops, boolean wait){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addOperationWithBlock:(void (^)(void))block ;
	 */
	public void addOperationWithBlock(Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)operations;
	 */
	public List operations(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)operationCount ;
	 */
	public int operationCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)maxConcurrentOperationCount;
	 */
	public int maxConcurrentOperationCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMaxConcurrentOperationCount:(NSInteger)cnt;
	 */
	public void setMaxConcurrentOperationCount(int cnt){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setSuspended:(BOOL)b;
	 */
	public void setSuspended(boolean b){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isSuspended;
	 */
	public boolean isSuspended(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setName:(NSString *)n ;
	 */
	public void setName(String n){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)name ;
	 */
	public String name(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelAllOperations;
	 */
	public void cancelAllOperations(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)waitUntilAllOperationsAreFinished;
	 */
	public void waitUntilAllOperationsAreFinished(){
		throw new RuntimeException("Stub");
	}
}
