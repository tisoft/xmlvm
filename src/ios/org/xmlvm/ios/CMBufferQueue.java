package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMBufferQueue {

	/*
	 * Static methods
	 */

	/**
	 * const CMBufferCallbacks *CMBufferQueueGetCallbacksForUnsortedSampleBuffers(void) ;
	 */
	public static Reference<CMBufferCallbacks> getCallbacksForUnsortedSampleBuffers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * const CMBufferCallbacks *CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS(void) ;
	 */
	public static Reference<CMBufferCallbacks> getCallbacksForSampleBuffersSortedByOutputPTS(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CMBufferQueueGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * OSStatus CMBufferQueueCreate( CFAllocatorRef allocator, CMItemCount capacity, const CMBufferCallbacks *callbacks, CMBufferQueueRef *queueOut) ;
	 */
	public CMBufferQueue(CFAllocator allocator, long capacity, Reference<CMBufferCallbacks> callbacks, CMBufferQueue queueOut) {}

	/** Default constructor */
	CMBufferQueue() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus CMBufferQueueEnqueue( CMBufferQueueRef queue, CMBufferRef buf) ;
	 */
	public int enqueue(CMBuffer buf){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMBufferRef CMBufferQueueDequeueAndRetain( CMBufferQueueRef queue) ;
	 */
	public CMBuffer dequeueAndRetain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMBufferRef CMBufferQueueDequeueIfDataReadyAndRetain( CMBufferQueueRef queue) ;
	 */
	public CMBuffer dequeueIfDataReadyAndRetain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMBufferRef CMBufferQueueGetHead( CMBufferQueueRef queue) ;
	 */
	public CMBuffer getHead(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CMBufferQueueIsEmpty( CMBufferQueueRef queue) ;
	 */
	public byte isEmpty(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBufferQueueMarkEndOfData( CMBufferQueueRef queue) ;
	 */
	public int markEndOfData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CMBufferQueueContainsEndOfData( CMBufferQueueRef queue) ;
	 */
	public byte containsEndOfData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CMBufferQueueIsAtEndOfData( CMBufferQueueRef queue) ;
	 */
	public byte isAtEndOfData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBufferQueueReset( CMBufferQueueRef queue) ;
	 */
	public int reset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBufferQueueResetWithCallback( CMBufferQueueRef queue, void (*callback)( CMBufferRef buffer, void *refcon ), void *refcon ) ;
	 */
	public int resetWithCallback(Object arg2, byte[] refcon){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMItemCount CMBufferQueueGetBufferCount( CMBufferQueueRef queue) ;
	 */
	public long getBufferCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMBufferQueueGetDuration( CMBufferQueueRef queue) ;
	 */
	public CMTime getDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMBufferQueueGetMinDecodeTimeStamp( CMBufferQueueRef queue) ;
	 */
	public CMTime getMinDecodeTimeStamp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMBufferQueueGetFirstDecodeTimeStamp( CMBufferQueueRef queue) ;
	 */
	public CMTime getFirstDecodeTimeStamp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMBufferQueueGetMinPresentationTimeStamp( CMBufferQueueRef queue) ;
	 */
	public CMTime getMinPresentationTimeStamp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMBufferQueueGetFirstPresentationTimeStamp( CMBufferQueueRef queue) ;
	 */
	public CMTime getFirstPresentationTimeStamp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMBufferQueueGetMaxPresentationTimeStamp( CMBufferQueueRef queue) ;
	 */
	public CMTime getMaxPresentationTimeStamp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMBufferQueueGetEndPresentationTimeStamp( CMBufferQueueRef queue) ;
	 */
	public CMTime getEndPresentationTimeStamp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBufferQueueInstallTrigger( CMBufferQueueRef queue, CMBufferQueueTriggerCallback triggerCallback, void *triggerRefcon, CMBufferQueueTriggerCondition triggerCondition, CMTime triggerTime, CMBufferQueueTriggerToken *triggerTokenOut ) ;
	 */
	public int installTrigger(Object triggerCallback, byte[] triggerRefcon, int triggerCondition, CMTime triggerTime, CMBufferQueueTriggerToken triggerTokenOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBufferQueueInstallTriggerWithIntegerThreshold( CMBufferQueueRef queue, CMBufferQueueTriggerCallback triggerCallback, void *triggerRefcon, CMBufferQueueTriggerCondition triggerCondition, CMItemCount triggerThreshold, CMBufferQueueTriggerToken *triggerTokenOut ) ;
	 */
	public int installTriggerWithIntegerThreshold(Object triggerCallback, byte[] triggerRefcon, int triggerCondition, long triggerThreshold, CMBufferQueueTriggerToken triggerTokenOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBufferQueueRemoveTrigger( CMBufferQueueRef queue, CMBufferQueueTriggerToken triggerToken ) ;
	 */
	public int removeTrigger(CMBufferQueueTriggerToken triggerToken){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CMBufferQueueTestTrigger( CMBufferQueueRef queue, CMBufferQueueTriggerToken triggerToken ) ;
	 */
	public byte testTrigger(CMBufferQueueTriggerToken triggerToken){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBufferQueueCallForEachBuffer( CMBufferQueueRef queue, OSStatus (*callback)( CMBufferRef buffer, void *refcon ), void *refcon ) ;
	 */
	public int callForEachBuffer(Object arg2, byte[] refcon){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBufferQueueSetValidationCallback( CMBufferQueueRef queue, CMBufferValidationCallback validationCallback, void *validationRefCon ) ;
	 */
	public int setValidationCallback(Object validationCallback, byte[] validationRefCon){
		throw new RuntimeException("Stub");
	}
}
