package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSProxy {

	/*
	 * Static methods
	 */

	/**
	 * + (id)alloc;
	 */
	public static Object alloc(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)allocWithZone:(NSZone *)zone;
	 */
	public static Object allocWithZone(NSZone zone){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (Class)class;
	 */
	public static Class getProxyClass(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)respondsToSelector:(SEL)aSelector;
	 */
	public static boolean respondsToSelector(SEL aSelector){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSProxy() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)forwardInvocation:(NSInvocation *)invocation;
	 */
	public void forwardInvocation(NSInvocation invocation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSMethodSignature *)methodSignatureForSelector:(SEL)sel;
	 */
	public NSMethodSignature methodSignatureForSelector(SEL sel){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)dealloc;
	 */
	public void dealloc(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)finalize;
	 */
	public void finalize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)description;
	 */
	public String description(){
		throw new RuntimeException("Stub");
	}
}
