package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFNotificationCenter {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFNotificationCenterGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFNotificationCenterRef CFNotificationCenterGetLocalCenter(void) ;
	 */
	public static CFNotificationCenter getLocalCenter(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFNotificationCenterRef CFNotificationCenterGetDistributedCenter(void);
	 */
	public static CFNotificationCenter getDistributedCenter(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFNotificationCenterRef CFNotificationCenterGetDarwinNotifyCenter(void) ;
	 */
	public static CFNotificationCenter getDarwinNotifyCenter(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CFNotificationCenter() {}

	/*
	 * Instance methods
	 */

	/**
	 * void CFNotificationCenterAddObserver(CFNotificationCenterRef center, const void *observer, CFNotificationCallback callBack, CFStringRef name, const void *object, CFNotificationSuspensionBehavior suspensionBehavior);
	 */
	public void addObserver(byte[] observer, Object callBack, String name, byte[] object, long suspensionBehavior){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNotificationCenterRemoveObserver(CFNotificationCenterRef center, const void *observer, CFStringRef name, const void *object);
	 */
	public void removeObserver(byte[] observer, String name, byte[] object){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNotificationCenterRemoveEveryObserver(CFNotificationCenterRef center, const void *observer);
	 */
	public void removeEveryObserver(byte[] observer){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNotificationCenterPostNotification(CFNotificationCenterRef center, CFStringRef name, const void *object, CFDictionaryRef userInfo, Boolean deliverImmediately);
	 */
	public void postNotification(String name, byte[] object, CFDictionary userInfo, byte deliverImmediately){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNotificationCenterPostNotificationWithOptions(CFNotificationCenterRef center, CFStringRef name, const void *object, CFDictionaryRef userInfo, CFOptionFlags options) ;
	 */
	public void postNotificationWithOptions(String name, byte[] object, CFDictionary userInfo, long options){
		throw new RuntimeException("Stub");
	}
}
