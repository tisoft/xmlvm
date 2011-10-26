package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSRunLoop extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSRunLoop *)currentRunLoop;
	 */
	public static NSRunLoop currentRunLoop(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSRunLoop *)mainRunLoop ;
	 */
	public static NSRunLoop mainRunLoop(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSRunLoop() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)currentMode;
	 */
	public String currentMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CFRunLoopRef)getCFRunLoop;
	 */
	public CFRunLoop getCFRunLoop(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addTimer:(NSTimer *)timer forMode:(NSString *)mode;
	 */
	public void addTimer(NSTimer timer, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addPort:(NSPort *)aPort forMode:(NSString *)mode;
	 */
	public void addPort(NSPort aPort, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removePort:(NSPort *)aPort forMode:(NSString *)mode;
	 */
	public void removePort(NSPort aPort, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)limitDateForMode:(NSString *)mode;
	 */
	public NSDate limitDateForMode(String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)acceptInputForMode:(NSString *)mode beforeDate:(NSDate *)limitDate;
	 */
	public void acceptInputForMode(String mode, NSDate limitDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)run;
	 */
	public void run(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)runUntilDate:(NSDate *)limitDate;
	 */
	public void runUntilDate(NSDate limitDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)runMode:(NSString *)mode beforeDate:(NSDate *)limitDate;
	 */
	public boolean runMode(String mode, NSDate limitDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)configureAsServer ;
	 */
	public void configureAsServer(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)performSelector:(SEL)aSelector target:(id)target argument:(id)arg order:(NSUInteger)order modes:(NSArray *)modes;
	 */
	public void performSelector(SEL aSelector, Object target, Object arg, int order, List modes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelPerformSelector:(SEL)aSelector target:(id)target argument:(id)arg;
	 */
	public void cancelPerformSelector(SEL aSelector, Object target, Object arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelPerformSelectorsWithTarget:(id)target;
	 */
	public void cancelPerformSelectorsWithTarget(Object target){
		throw new RuntimeException("Stub");
	}
}
