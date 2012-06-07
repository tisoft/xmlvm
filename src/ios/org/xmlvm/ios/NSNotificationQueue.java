package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSNotificationQueue extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)defaultQueue;
	 */
	public static Object defaultQueue(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithNotificationCenter:(NSNotificationCenter *)notificationCenter;
	 */
	public NSNotificationQueue(NSNotificationCenter notificationCenter) {}

	/** Default constructor */
	public NSNotificationQueue() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)enqueueNotification:(NSNotification *)notification postingStyle:(NSPostingStyle)postingStyle;
	 */
	public void enqueueNotification(NSNotification notification, int postingStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enqueueNotification:(NSNotification *)notification postingStyle:(NSPostingStyle)postingStyle coalesceMask:(NSUInteger)coalesceMask forModes:(NSArray *)modes;
	 */
	public void enqueueNotification(NSNotification notification, int postingStyle, int coalesceMask, List modes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)dequeueNotificationsMatching:(NSNotification *)notification coalesceMask:(NSUInteger)coalesceMask;
	 */
	public void dequeueNotificationsMatching(NSNotification notification, int coalesceMask){
		throw new RuntimeException("Stub");
	}
}
