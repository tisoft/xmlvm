package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFMessagePort {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFMessagePortGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMessagePortRef CFMessagePortCreateLocal(CFAllocatorRef allocator, CFStringRef name, CFMessagePortCallBack callout, CFMessagePortContext *context, Boolean *shouldFreeInfo);
	 */
	public static CFMessagePort createLocal(CFAllocator allocator, String name, Object callout, Reference<CFMessagePortContext> context, byte[] shouldFreeInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMessagePortRef CFMessagePortCreateRemote(CFAllocatorRef allocator, CFStringRef name);
	 */
	public static CFMessagePort createRemote(CFAllocator allocator, String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRunLoopSourceRef CFMessagePortCreateRunLoopSource(CFAllocatorRef allocator, CFMessagePortRef local, CFIndex order);
	 */
	public static CFRunLoopSource createRunLoopSource(CFAllocator allocator, CFMessagePort local, long order){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CFMessagePort() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean CFMessagePortIsRemote(CFMessagePortRef ms);
	 */
	public byte isRemote(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFMessagePortGetName(CFMessagePortRef ms);
	 */
	public String getName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFMessagePortSetName(CFMessagePortRef ms, CFStringRef newName);
	 */
	public byte setName(String newName){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFMessagePortGetContext(CFMessagePortRef ms, CFMessagePortContext *context);
	 */
	public void getContext(Reference<CFMessagePortContext> context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFMessagePortInvalidate(CFMessagePortRef ms);
	 */
	public void invalidate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFMessagePortIsValid(CFMessagePortRef ms);
	 */
	public byte isValid(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMessagePortInvalidationCallBack CFMessagePortGetInvalidationCallBack(CFMessagePortRef ms);
	 */
	public Object getInvalidationCallBack(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFMessagePortSetInvalidationCallBack(CFMessagePortRef ms, CFMessagePortInvalidationCallBack callout);
	 */
	public void setInvalidationCallBack(Object callout){
		throw new RuntimeException("Stub");
	}

	/**
	 * SInt32 CFMessagePortSendRequest(CFMessagePortRef remote, SInt32 msgid, CFDataRef data, CFTimeInterval sendTimeout, CFTimeInterval rcvTimeout, CFStringRef replyMode, CFDataRef *returnData);
	 */
	public int sendRequest(int msgid, CFData data, double sendTimeout, double rcvTimeout, String replyMode, Reference<CFData> returnData){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFMessagePortSetDispatchQueue(CFMessagePortRef ms, dispatch_queue_t queue) ;
	 */
	public void setDispatchQueue(Object queue){
		throw new RuntimeException("Stub");
	}
}
