package org.xmlvm.iphone;

import org.xmlvm.iphone.internal.Simulator;

public class UIAccelerometer {

	private static UIAccelerometer sharedAccelerometer = new UIAccelerometer();

	private UIAccelerometerDelegate delegate = null;

	private UIAccelerometer() {
	}

	public static UIAccelerometer sharedAccelerometer() {
		return sharedAccelerometer;
	}

	public static void setAcceleratedInternal(double x, double y, double z) {
		Simulator.setAccelerated(x, y, z);
		if (sharedAccelerometer.delegate != null) {
			UIAcceleration acceleration = new UIAcceleration(x, y, z);
			sharedAccelerometer.delegate.accelerometerDidAccelerate(
					sharedAccelerometer, acceleration);
		}
	}

	public void setUpdateInterval(double i) {

	}

	public void setDelegate(UIAccelerometerDelegate delegate) {
		this.delegate = delegate;
	}
}
