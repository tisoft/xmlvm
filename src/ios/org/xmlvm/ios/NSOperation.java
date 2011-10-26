package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSOperation extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)init;
	 */
	public NSOperation() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)start;
	 */
	public void start(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)main;
	 */
	public void main(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isCancelled;
	 */
	public boolean isCancelled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancel;
	 */
	public void cancel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isExecuting;
	 */
	public boolean isExecuting(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isFinished;
	 */
	public boolean isFinished(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isConcurrent;
	 */
	public boolean isConcurrent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isReady;
	 */
	public boolean isReady(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addDependency:(NSOperation *)op;
	 */
	public void addDependency(NSOperation op){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeDependency:(NSOperation *)op;
	 */
	public void removeDependency(NSOperation op){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)dependencies;
	 */
	public List dependencies(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSOperationQueuePriority)queuePriority;
	 */
	public int queuePriority(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setQueuePriority:(NSOperationQueuePriority)p;
	 */
	public void setQueuePriority(int p){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void (^)(void))completionBlock ;
	 */
	public Object completionBlock(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCompletionBlock:(void (^)(void))block ;
	 */
	public void setCompletionBlock(Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)waitUntilFinished ;
	 */
	public void waitUntilFinished(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (double)threadPriority ;
	 */
	public double threadPriority(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setThreadPriority:(double)p ;
	 */
	public void setThreadPriority(double p){
		throw new RuntimeException("Stub");
	}
}
