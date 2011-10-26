package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMMotionManager extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	CMMotionManager() {}

	/*
	 * Properties
	 */

	/**
	 * @property(assign, nonatomic) NSTimeInterval accelerometerUpdateInterval;
	 */
	public double getAccelerometerUpdateInterval(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) NSTimeInterval accelerometerUpdateInterval;
	 */
	public void setAccelerometerUpdateInterval(double accelerometerUpdateInterval){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic, getter=isAccelerometerAvailable) BOOL accelerometerAvailable;
	 */
	public boolean isAccelerometerAvailable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic, getter=isAccelerometerActive) BOOL accelerometerActive;
	 */
	public boolean isAccelerometerActive(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) CMAccelerometerData *accelerometerData;
	 */
	public CMAccelerometerData getAccelerometerData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) NSTimeInterval gyroUpdateInterval;
	 */
	public double getGyroUpdateInterval(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) NSTimeInterval gyroUpdateInterval;
	 */
	public void setGyroUpdateInterval(double gyroUpdateInterval){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic, getter=isGyroAvailable) BOOL gyroAvailable;
	 */
	public boolean isGyroAvailable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic, getter=isGyroActive) BOOL gyroActive;
	 */
	public boolean isGyroActive(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) CMGyroData *gyroData;
	 */
	public CMGyroData getGyroData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) NSTimeInterval deviceMotionUpdateInterval;
	 */
	public double getDeviceMotionUpdateInterval(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) NSTimeInterval deviceMotionUpdateInterval;
	 */
	public void setDeviceMotionUpdateInterval(double deviceMotionUpdateInterval){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic, getter=isDeviceMotionAvailable) BOOL deviceMotionAvailable;
	 */
	public boolean isDeviceMotionAvailable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic, getter=isDeviceMotionActive) BOOL deviceMotionActive;
	 */
	public boolean isDeviceMotionActive(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) CMDeviceMotion *deviceMotion;
	 */
	public CMDeviceMotion getDeviceMotion(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)startAccelerometerUpdates;
	 */
	public void startAccelerometerUpdates(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)startAccelerometerUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMAccelerometerHandler)handler;
	 */
	public void startAccelerometerUpdatesToQueue(NSOperationQueue queue, Object handler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopAccelerometerUpdates;
	 */
	public void stopAccelerometerUpdates(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)startGyroUpdates;
	 */
	public void startGyroUpdates(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)startGyroUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMGyroHandler)handler;
	 */
	public void startGyroUpdatesToQueue(NSOperationQueue queue, Object handler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopGyroUpdates;
	 */
	public void stopGyroUpdates(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)startDeviceMotionUpdates;
	 */
	public void startDeviceMotionUpdates(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)startDeviceMotionUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMDeviceMotionHandler)handler;
	 */
	public void startDeviceMotionUpdatesToQueue(NSOperationQueue queue, Object handler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopDeviceMotionUpdates;
	 */
	public void stopDeviceMotionUpdates(){
		throw new RuntimeException("Stub");
	}
}
