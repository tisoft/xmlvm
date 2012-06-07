package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={CFRunLoopObserverContext.class})
public class CFRunLoopObserver extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFRunLoopObserverGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFRunLoopObserverRef CFRunLoopObserverCreate(CFAllocatorRef allocator, CFOptionFlags activities, Boolean repeats, CFIndex order, CFRunLoopObserverCallBack callout, CFRunLoopObserverContext *context);
	 */
	public CFRunLoopObserver(CFAllocator allocator, long activities, byte repeats, long order, Object callout, Reference<CFRunLoopObserverContext> context) {}

	/** Default constructor */
	public CFRunLoopObserver() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFOptionFlags CFRunLoopObserverGetActivities(CFRunLoopObserverRef observer);
	 */
	public long getActivities(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFRunLoopObserverDoesRepeat(CFRunLoopObserverRef observer);
	 */
	public byte doesRepeat(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFRunLoopObserverGetOrder(CFRunLoopObserverRef observer);
	 */
	public long getOrder(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopObserverInvalidate(CFRunLoopObserverRef observer);
	 */
	public void invalidate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFRunLoopObserverIsValid(CFRunLoopObserverRef observer);
	 */
	public byte isValid(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopObserverGetContext(CFRunLoopObserverRef observer, CFRunLoopObserverContext *context);
	 */
	public void getContext(Reference<CFRunLoopObserverContext> context){
		throw new RuntimeException("Stub");
	}
}
