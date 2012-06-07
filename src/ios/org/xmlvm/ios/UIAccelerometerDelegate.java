package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIAccelerometerDelegate")
public interface UIAccelerometerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "accelerometer", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIAccelerometer"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIAcceleration", name = "didAccelerate")
	})
	public abstract void accelerometer(UIAccelerometer accelerometer, UIAcceleration acceleration);
}
