package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CLHeading extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CLHeading() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly, nonatomic) CLLocationDirection magneticHeading;
	 */
	public double getMagneticHeading(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLLocationDirection trueHeading;
	 */
	public double getTrueHeading(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLLocationDirection headingAccuracy;
	 */
	public double getHeadingAccuracy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLHeadingComponentValue x;
	 */
	public double getX(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLHeadingComponentValue y;
	 */
	public double getY(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLHeadingComponentValue z;
	 */
	public double getZ(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) NSDate *timestamp;
	 */
	public NSDate getTimestamp(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)description;
	 */
	public String description(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
