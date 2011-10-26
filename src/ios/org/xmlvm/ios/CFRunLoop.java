package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFRunLoop {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFRunLoopGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRunLoopRef CFRunLoopGetCurrent(void);
	 */
	public static CFRunLoop getCurrent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRunLoopRef CFRunLoopGetMain(void) ;
	 */
	public static CFRunLoop getMain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopRun(void);
	 */
	public static void run(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SInt32 CFRunLoopRunInMode(CFStringRef mode, CFTimeInterval seconds, Boolean returnAfterSourceHandled);
	 */
	public static int runInMode(String mode, double seconds, byte returnAfterSourceHandled){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CFRunLoop() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFStringRef CFRunLoopCopyCurrentMode(CFRunLoopRef rl);
	 */
	public String copyCurrentMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFRunLoopCopyAllModes(CFRunLoopRef rl);
	 */
	public CFArray copyAllModes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopAddCommonMode(CFRunLoopRef rl, CFStringRef mode);
	 */
	public void addCommonMode(String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFAbsoluteTime CFRunLoopGetNextTimerFireDate(CFRunLoopRef rl, CFStringRef mode);
	 */
	public double getNextTimerFireDate(String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFRunLoopIsWaiting(CFRunLoopRef rl);
	 */
	public byte isWaiting(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopWakeUp(CFRunLoopRef rl);
	 */
	public void wakeUp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopStop(CFRunLoopRef rl);
	 */
	public void stop(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFRunLoopContainsSource(CFRunLoopRef rl, CFRunLoopSourceRef source, CFStringRef mode);
	 */
	public byte containsSource(CFRunLoopSource source, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopAddSource(CFRunLoopRef rl, CFRunLoopSourceRef source, CFStringRef mode);
	 */
	public void addSource(CFRunLoopSource source, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopRemoveSource(CFRunLoopRef rl, CFRunLoopSourceRef source, CFStringRef mode);
	 */
	public void removeSource(CFRunLoopSource source, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFRunLoopContainsObserver(CFRunLoopRef rl, CFRunLoopObserverRef observer, CFStringRef mode);
	 */
	public byte containsObserver(CFRunLoopObserver observer, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopAddObserver(CFRunLoopRef rl, CFRunLoopObserverRef observer, CFStringRef mode);
	 */
	public void addObserver(CFRunLoopObserver observer, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopRemoveObserver(CFRunLoopRef rl, CFRunLoopObserverRef observer, CFStringRef mode);
	 */
	public void removeObserver(CFRunLoopObserver observer, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFRunLoopContainsTimer(CFRunLoopRef rl, CFRunLoopTimerRef timer, CFStringRef mode);
	 */
	public byte containsTimer(CFRunLoopTimer timer, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopAddTimer(CFRunLoopRef rl, CFRunLoopTimerRef timer, CFStringRef mode);
	 */
	public void addTimer(CFRunLoopTimer timer, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopRemoveTimer(CFRunLoopRef rl, CFRunLoopTimerRef timer, CFStringRef mode);
	 */
	public void removeTimer(CFRunLoopTimer timer, String mode){
		throw new RuntimeException("Stub");
	}
}
