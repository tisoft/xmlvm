package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMAttitude extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CMAttitude() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly, nonatomic) double roll;
	 */
	public double getRoll(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) double pitch;
	 */
	public double getPitch(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) double yaw;
	 */
	public double getYaw(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CMRotationMatrix rotationMatrix;
	 */
	public CMRotationMatrix getRotationMatrix(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CMQuaternion quaternion;
	 */
	public CMQuaternion getQuaternion(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)multiplyByInverseOfAttitude:(CMAttitude *)attitude;
	 */
	public void multiplyByInverseOfAttitude(CMAttitude attitude){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
