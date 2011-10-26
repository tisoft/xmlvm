package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSThread extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSThread *)currentThread;
	 */
	public static NSThread currentThread(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)detachNewThreadSelector:(SEL)selector toTarget:(id)target withObject:(id)argument;
	 */
	public static void detachNewThreadSelector(SEL selector, Object target, Object argument){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)isMultiThreaded;
	 */
	public static boolean isMultiThreaded(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)sleepUntilDate:(NSDate *)date;
	 */
	public static void sleepUntilDate(NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)sleepForTimeInterval:(NSTimeInterval)ti;
	 */
	public static void sleepForTimeInterval(double ti){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)exit;
	 */
	public static void exit(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (double)threadPriority ;
	 */
	public static double threadPriorityStatic(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)setThreadPriority:(double)p ;
	 */
	public static boolean setThreadPriorityStatic(double p){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)callStackReturnAddresses;
	 */
	public static List callStackReturnAddresses(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)callStackSymbols ;
	 */
	public static List callStackSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)isMainThread;
	 */
	public static boolean isMainThreadStatic(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSThread *)mainThread;
	 */
	public static NSThread mainThread(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)init;
	 */
	public NSThread() {}

	/**
	 * - (id)initWithTarget:(id)target selector:(SEL)selector object:(id)argument;
	 */
	public NSThread(Object target, SEL selector, Object argument) {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSMutableDictionary *)threadDictionary;
	 */
	public Map threadDictionary(){
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

	/**
	 * - (void)setName:(NSString *)n;
	 */
	public void setName(String n){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)name;
	 */
	public String name(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)stackSize;
	 */
	public int stackSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setStackSize:(NSUInteger)s;
	 */
	public void setStackSize(int s){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isMainThread;
	 */
	public boolean isMainThread(){
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
}
