package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSNotificationCenter extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)defaultCenter;
	 */
	public static Object defaultCenter(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSNotificationCenter() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject;
	 */
	public void addObserver(Object observer, SEL aSelector, String aName, Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)postNotification:(NSNotification *)notification;
	 */
	public void postNotification(NSNotification notification){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)postNotificationName:(NSString *)aName object:(id)anObject;
	 */
	public void postNotificationName(String aName, Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)postNotificationName:(NSString *)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo;
	 */
	public void postNotificationName(String aName, Object anObject, Map aUserInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObserver:(id)observer;
	 */
	public void removeObserver(Object observer){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObserver:(id)observer name:(NSString *)aName object:(id)anObject;
	 */
	public void removeObserver(Object observer, String aName, Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)addObserverForName:(NSString *)name object:(id)obj queue:(NSOperationQueue *)queue usingBlock:(void (^)(NSNotification *))block ;
	 */
	public Object addObserverForName(String name, Object obj, NSOperationQueue queue, Object block){
		throw new RuntimeException("Stub");
	}
}
