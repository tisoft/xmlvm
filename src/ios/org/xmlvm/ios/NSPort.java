package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSPort extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)allocWithZone:(NSZone *)zone;
	 */
	public static Object allocWithZone(NSZone zone){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSPort *)port;
	 */
	public static NSPort port(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSPort() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)invalidate;
	 */
	public void invalidate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isValid;
	 */
	public boolean isValid(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDelegate:(id <NSPortDelegate>)anObject;
	 */
	public void setDelegate(org.xmlvm.ios.NSPortDelegate anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id <NSPortDelegate>)delegate;
	 */
	public org.xmlvm.ios.NSPortDelegate delegate(){
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

	/**
	 * - (NSUInteger)reservedSpaceLength;
	 */
	public int reservedSpaceLength(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)sendBeforeDate:(NSDate *)limitDate components:(NSMutableArray *)components from:(NSPort *) receivePort reserved:(NSUInteger)headerSpaceReserved;
	 */
	public boolean sendBeforeDate(NSDate limitDate, List components, NSPort receivePort, int headerSpaceReserved){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)sendBeforeDate:(NSDate *)limitDate msgid:(NSUInteger)msgID components:(NSMutableArray *)components from:(NSPort *)receivePort reserved:(NSUInteger)headerSpaceReserved;
	 */
	public boolean sendBeforeDate(NSDate limitDate, int msgID, List components, NSPort receivePort, int headerSpaceReserved){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addConnection:(NSConnection *)conn toRunLoop:(NSRunLoop *)runLoop forMode:(NSString *)mode;
	 */
	public void addConnection(NSConnection conn, NSRunLoop runLoop, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeConnection:(NSConnection *)conn fromRunLoop:(NSRunLoop *)runLoop forMode:(NSString *)mode;
	 */
	public void removeConnection(NSConnection conn, NSRunLoop runLoop, String mode){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
