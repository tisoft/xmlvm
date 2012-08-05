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

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class CATransaction extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (void)begin;
	 */
	public static void begin(){
	    throw new RuntimeException("Stub");
	}

	/**
	 * + (void)commit;
	 */
	public static void commit(){
	    throw new RuntimeException("Stub");
	}

	/**
	 * + (void)flush;
	 */
	public static void flush(){
	    throw new RuntimeException("Stub");
	}

	/**
	 * + (void)lock;
	 */
	public static void lock(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)unlock;
	 */
	public static void unlock(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (CFTimeInterval)animationDuration;
	 */
	public static double animationDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setAnimationDuration:(CFTimeInterval)dur;
	 */
	public static void setAnimationDuration(double dur){
		throw new RuntimeException("Stub");
	}

//	/**
//	 * + (CAMediaTimingFunction *)animationTimingFunction;
//	 */
//	public static CAMediaTimingFunction animationTimingFunction(){
//		throw new RuntimeException("Stub");
//	}
//
//	/**
//	 * + (void)setAnimationTimingFunction:(CAMediaTimingFunction *)function;
//	 */
//	public static void setAnimationTimingFunction(CAMediaTimingFunction function){
//		throw new RuntimeException("Stub");
//	}

	/**
	 * + (BOOL)disableActions;
	 */
	public static boolean disableActions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setDisableActions:(BOOL)flag;
	 */
	public static void setDisableActions(boolean flag){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void (^)(void))completionBlock;
	 */
	public static Object completionBlock(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setCompletionBlock:(void (^)(void))block;
	 */
	public static void setCompletionBlock(Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)valueForKey:(NSString *)key;
	 */
	public static Object valueForKeyInCATransaction(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setValue:(id)anObject forKey:(NSString *)key;
	 */
	public static void setValue(Object anObject, String key){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CATransaction() {}
}
