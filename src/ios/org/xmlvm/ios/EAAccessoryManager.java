package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class EAAccessoryManager extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (EAAccessoryManager *)sharedAccessoryManager ;
	 */
	public static EAAccessoryManager sharedAccessoryManager(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public EAAccessoryManager() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSArray *connectedAccessories ;
	 */
	public List getConnectedAccessories(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)registerForLocalNotifications ;
	 */
	public void registerForLocalNotifications(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)unregisterForLocalNotifications ;
	 */
	public void unregisterForLocalNotifications(){
		throw new RuntimeException("Stub");
	}
}
