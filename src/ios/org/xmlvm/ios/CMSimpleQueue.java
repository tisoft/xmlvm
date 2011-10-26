package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMSimpleQueue {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CMSimpleQueueGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * OSStatus CMSimpleQueueCreate( CFAllocatorRef allocator, int32_t capacity, CMSimpleQueueRef *queueOut);
	 */
	public CMSimpleQueue(CFAllocator allocator, int capacity, CMSimpleQueue queueOut) {}

	/** Default constructor */
	CMSimpleQueue() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus CMSimpleQueueEnqueue( CMSimpleQueueRef queue, const void *element);
	 */
	public int enqueue(byte[] element){
		throw new RuntimeException("Stub");
	}

	/**
	 * const void *CMSimpleQueueDequeue( CMSimpleQueueRef queue);
	 */
	public byte[] dequeue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * const void *CMSimpleQueueGetHead( CMSimpleQueueRef queue);
	 */
	public byte[] getHead(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSimpleQueueReset( CMSimpleQueueRef queue);
	 */
	public int reset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * int32_t CMSimpleQueueGetCapacity( CMSimpleQueueRef queue);
	 */
	public int getCapacity(){
		throw new RuntimeException("Stub");
	}

	/**
	 * int32_t CMSimpleQueueGetCount( CMSimpleQueueRef queue);
	 */
	public int getCount(){
		throw new RuntimeException("Stub");
	}
}
