package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CADisplayLink extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (CADisplayLink *)displayLinkWithTarget:(id)target selector:(SEL)sel;
	 */
	public static CADisplayLink displayLinkWithTarget(Object target, SEL sel){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CADisplayLink() {}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly, nonatomic) CFTimeInterval timestamp, duration;
	 */
	public double getDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CFTimeInterval timestamp, duration;
	 */
	public double getTimestamp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isPaused, nonatomic) BOOL paused;
	 */
	public boolean isPaused(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isPaused, nonatomic) BOOL paused;
	 */
	public void setPaused(boolean paused){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger frameInterval;
	 */
	public int getFrameInterval(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger frameInterval;
	 */
	public void setFrameInterval(int frameInterval){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)addToRunLoop:(NSRunLoop *)runloop forMode:(NSString *)mode;
	 */
	public void addToRunLoop(NSRunLoop runloop, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeFromRunLoop:(NSRunLoop *)runloop forMode:(NSString *)mode;
	 */
	public void removeFromRunLoop(NSRunLoop runloop, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)invalidate;
	 */
	public void invalidate(){
		throw new RuntimeException("Stub");
	}
}
