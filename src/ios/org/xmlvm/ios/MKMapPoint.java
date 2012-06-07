package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKMapPoint {

	/*
	 * Variables
	 */
	 public double x;
	 public double y;

	/*
	 * Static methods
	 */

	/**
	 * MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate);
	 */
	public static MKMapPoint forCoordinate(CLLocationCoordinate2D coordinate){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * MKMapPoint MKMapPointMake(double x, double y);
	 */
	public MKMapPoint(double x, double y) {}

	/** Default constructor */
	public MKMapPoint() {}

	/*
	 * Instance methods
	 */

	/**
	 * BOOL MKMapPointEqualToPoint(MKMapPoint point1, MKMapPoint point2);
	 */
	public boolean equalToPoint(MKMapPoint point2){
		throw new RuntimeException("Stub");
	}
}
