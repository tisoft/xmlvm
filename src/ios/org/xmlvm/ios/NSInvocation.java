package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSInvocation extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSInvocation *)invocationWithMethodSignature:(NSMethodSignature *)sig;
	 */
	public static NSInvocation invocationWithMethodSignature(NSMethodSignature sig){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSInvocation() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSMethodSignature *)methodSignature;
	 */
	public NSMethodSignature methodSignature(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)retainArguments;
	 */
	public void retainArguments(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)argumentsRetained;
	 */
	public boolean argumentsRetained(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)target;
	 */
	public Object target(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTarget:(id)target;
	 */
	public void setTarget(Object target){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (SEL)selector;
	 */
	public SEL selector(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setSelector:(SEL)selector;
	 */
	public void setSelector(SEL selector){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getReturnValue:(void *)retLoc;
	 */
	public void getReturnValue(byte[] retLoc){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setReturnValue:(void *)retLoc;
	 */
	public void setReturnValue(byte[] retLoc){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getArgument:(void *)argumentLocation atIndex:(NSInteger)idx;
	 */
	public void getArgument(byte[] argumentLocation, int idx){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setArgument:(void *)argumentLocation atIndex:(NSInteger)idx;
	 */
	public void setArgument(byte[] argumentLocation, int idx){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)invoke;
	 */
	public void invoke(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)invokeWithTarget:(id)target;
	 */
	public void invokeWithTarget(Object target){
		throw new RuntimeException("Stub");
	}
}
