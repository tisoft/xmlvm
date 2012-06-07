package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSMethodSignature extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSMethodSignature *)signatureWithObjCTypes:(const char *)types;
	 */
	public static NSMethodSignature signatureWithObjCTypes(byte[] types){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSMethodSignature() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSUInteger)numberOfArguments;
	 */
	public int numberOfArguments(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (const char *)getArgumentTypeAtIndex:(NSUInteger)idx;
	 */
	public byte[] getArgumentTypeAtIndex(int idx){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)frameLength;
	 */
	public int frameLength(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isOneway;
	 */
	public boolean isOneway(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (const char *)methodReturnType;
	 */
	public byte[] methodReturnType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)methodReturnLength;
	 */
	public int methodReturnLength(){
		throw new RuntimeException("Stub");
	}
}
