package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIAccelerometer extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (UIAccelerometer *)sharedAccelerometer;
	 */
	public static UIAccelerometer sharedAccelerometer(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	UIAccelerometer() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) NSTimeInterval updateInterval;
	 */
	public double getUpdateInterval(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval updateInterval;
	 */
	public void setUpdateInterval(double updateInterval){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UIAccelerometerDelegate> delegate;
	 */
	public UIAccelerometerDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UIAccelerometerDelegate> delegate;
	 */
	public void setDelegate(UIAccelerometerDelegate delegate){
		throw new RuntimeException("Stub");
	}
}
