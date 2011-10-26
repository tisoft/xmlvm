package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMDeviceMotion extends CMLogItem {

	/*
	 * Constructors
	 */

	/** Default constructor */
	CMDeviceMotion() {}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly, nonatomic) CMAttitude *attitude;
	 */
	public CMAttitude getAttitude(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CMRotationRate rotationRate;
	 */
	public CMRotationRate getRotationRate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CMAcceleration gravity;
	 */
	public CMAcceleration getGravity(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CMAcceleration userAcceleration;
	 */
	public CMAcceleration getUserAcceleration(){
		throw new RuntimeException("Stub");
	}
}
