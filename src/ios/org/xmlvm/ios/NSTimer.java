package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSTimer extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSTimer *)timerWithTimeInterval:(NSTimeInterval)ti invocation:(NSInvocation *)invocation repeats:(BOOL)yesOrNo;
	 */
	public static NSTimer timerWithTimeInterval(double ti, NSInvocation invocation, boolean yesOrNo){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti invocation:(NSInvocation *)invocation repeats:(BOOL)yesOrNo;
	 */
	public static NSTimer scheduledTimerWithTimeInterval(double ti, NSInvocation invocation, boolean yesOrNo){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTimer *)timerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo;
	 */
	public static NSTimer timerWithTimeInterval(double ti, Object aTarget, SEL aSelector, Object userInfo, boolean yesOrNo){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo;
	 */
	public static NSTimer scheduledTimerWithTimeInterval(double ti, Object aTarget, SEL aSelector, Object userInfo, boolean yesOrNo){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithFireDate:(NSDate *)date interval:(NSTimeInterval)ti target:(id)t selector:(SEL)s userInfo:(id)ui repeats:(BOOL)rep;
	 */
	public NSTimer(NSDate date, double ti, Object t, SEL s, Object ui, boolean rep) {}

	/** Default constructor */
	public NSTimer() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)fire;
	 */
	public void fire(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)fireDate;
	 */
	public NSDate fireDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setFireDate:(NSDate *)date;
	 */
	public void setFireDate(NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSTimeInterval)timeInterval;
	 */
	public double timeInterval(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)invalidate;
	 */
	public void invalidate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isValid;
	 */
	public boolean isValid(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)userInfo;
	 */
	public Object userInfo(){
		throw new RuntimeException("Stub");
	}
}
