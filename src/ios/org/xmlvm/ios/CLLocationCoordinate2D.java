package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CLLocationCoordinate2D {

	/*
	 * Variables
	 */
	 public double latitude;
	 public double longitude;

	/*
	 * Constructors
	 */

	/**
	 * CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude) ;
	 */
	public CLLocationCoordinate2D(double latitude, double longitude) {}

	/** Default constructor */
	CLLocationCoordinate2D() {}

	/*
	 * Instance methods
	 */

	/**
	 * BOOL CLLocationCoordinate2DIsValid(CLLocationCoordinate2D coord) ;
	 */
	public boolean isValid(){
		throw new RuntimeException("Stub");
	}
}
