package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSNotification extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)notificationWithName:(NSString *)aName object:(id)anObject;
	 */
	public static NSNotification notificationWithName(String aName, Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)notificationWithName:(NSString *)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo;
	 */
	public static NSNotification notificationWithName(String aName, Object anObject, Map aUserInfo){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSNotification() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)name;
	 */
	public String name(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)object;
	 */
	public Object object(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)userInfo;
	 */
	public Map userInfo(){
		throw new RuntimeException("Stub");
	}
}
