package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIAccelerometerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration;
	 */
	public abstract void accelerometer(UIAccelerometer accelerometer, UIAcceleration acceleration);
}
