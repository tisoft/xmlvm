package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={CFRunLoopTimerContext.class})
public class CFRunLoopTimer extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFRunLoopTimerGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFRunLoopTimerRef CFRunLoopTimerCreate(CFAllocatorRef allocator, CFAbsoluteTime fireDate, CFTimeInterval interval, CFOptionFlags flags, CFIndex order, CFRunLoopTimerCallBack callout, CFRunLoopTimerContext *context);
	 */
	public CFRunLoopTimer(CFAllocator allocator, double fireDate, double interval, long flags, long order, Object callout, Reference<CFRunLoopTimerContext> context) {}

	/** Default constructor */
	public CFRunLoopTimer() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFAbsoluteTime CFRunLoopTimerGetNextFireDate(CFRunLoopTimerRef timer);
	 */
	public double getNextFireDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopTimerSetNextFireDate(CFRunLoopTimerRef timer, CFAbsoluteTime fireDate);
	 */
	public void setNextFireDate(double fireDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTimeInterval CFRunLoopTimerGetInterval(CFRunLoopTimerRef timer);
	 */
	public double getInterval(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFRunLoopTimerDoesRepeat(CFRunLoopTimerRef timer);
	 */
	public byte doesRepeat(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFRunLoopTimerGetOrder(CFRunLoopTimerRef timer);
	 */
	public long getOrder(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopTimerInvalidate(CFRunLoopTimerRef timer);
	 */
	public void invalidate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFRunLoopTimerIsValid(CFRunLoopTimerRef timer);
	 */
	public byte isValid(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopTimerGetContext(CFRunLoopTimerRef timer, CFRunLoopTimerContext *context);
	 */
	public void getContext(Reference<CFRunLoopTimerContext> context){
		throw new RuntimeException("Stub");
	}
}
