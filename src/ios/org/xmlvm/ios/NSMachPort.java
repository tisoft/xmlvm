package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSMachPort extends NSPort {

	/*
	 * Static methods
	 */

	/**
	 * + (NSPort *)portWithMachPort:(uint32_t)machPort;
	 */
	public static NSPort portWithMachPort(int machPort){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSPort *)portWithMachPort:(uint32_t)machPort options:(NSUInteger)f ;
	 */
	public static NSPort portWithMachPort(int machPort, int f){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithMachPort:(uint32_t)machPort;
	 */
	public NSMachPort(int machPort) {}

	/**
	 * - (id)initWithMachPort:(uint32_t)machPort options:(NSUInteger)f ;
	 */
	public NSMachPort(int machPort, int f) {}

	/** Default constructor */
	public NSMachPort() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setDelegate:(id <NSMachPortDelegate>)anObject;
	 */
	public void setDelegate(org.xmlvm.ios.NSMachPortDelegate anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id <NSMachPortDelegate>)delegate;
	 */
	public org.xmlvm.ios.NSMachPortDelegate getMatchPortDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (uint32_t)machPort;
	 */
	public int machPort(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)scheduleInRunLoop:(NSRunLoop *)runLoop forMode:(NSString *)mode;
	 */
	public void scheduleInRunLoop(NSRunLoop runLoop, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeFromRunLoop:(NSRunLoop *)runLoop forMode:(NSString *)mode;
	 */
	public void removeFromRunLoop(NSRunLoop runLoop, String mode){
		throw new RuntimeException("Stub");
	}
}
