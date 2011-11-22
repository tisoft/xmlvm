/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.iphone;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSRunLoop extends NSObject {

    /**
     * The mode to deal with input sources other than NSConnection objects. This
     * is the most commonly used run-loop mode.
     */
    public static final String NSDefaultRunLoopMode = "kCFRunLoopDefaultMode";

    /**
     * Objects added to a run loop using this value as the mode are monitored by
     * all run loop modes that have been declared as a member of the set of
     * "common" modes; see the description of CFRunLoopAddCommonMode for
     * details.
     */
    public static final String NSRunLoopCommonModes = "kCFRunLoopCommonModes";

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

//	/**
//	 * - (CFRunLoopRef)getCFRunLoop;
//	 */
//	public CFRunLoop getCFRunLoop(){
//		throw new RuntimeException("Stub");
//	}

	/**
	 * - (void)addTimer:(NSTimer *)timer forMode:(NSString *)mode;
	 */
	public void addTimer(NSTimer timer, String mode){
		throw new RuntimeException("Stub");
	}

//	/**
//	 * - (void)addPort:(NSPort *)aPort forMode:(NSString *)mode;
//	 */
//	public void addPort(NSPort aPort, String mode){
//		throw new RuntimeException("Stub");
//	}
//
//	/**
//	 * - (void)removePort:(NSPort *)aPort forMode:(NSString *)mode;
//	 */
//	public void removePort(NSPort aPort, String mode){
//		throw new RuntimeException("Stub");
//	}

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
	public void performSelector(NSSelector<?> aSelector, Object target, Object arg, int order, List<String> modes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelPerformSelector:(SEL)aSelector target:(id)target argument:(id)arg;
	 */
	public void cancelPerformSelector(NSSelector<?> aSelector, Object target, Object arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelPerformSelectorsWithTarget:(id)target;
	 */
	public void cancelPerformSelectorsWithTarget(Object target){
		throw new RuntimeException("Stub");
	}
}
