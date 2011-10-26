package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKCircle extends MKShape {

	/*
	 * Static methods
	 */

	/**
	 * + (MKCircle *)circleWithCenterCoordinate:(CLLocationCoordinate2D)coord radius:(CLLocationDistance)radius;
	 */
	public static MKCircle circleWithCenterCoordinate(CLLocationCoordinate2D coord, double radius){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MKCircle *)circleWithMapRect:(MKMapRect)mapRect;
	 */
	public static MKCircle circleWithMapRect(MKMapRect mapRect){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	MKCircle() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) CLLocationCoordinate2D coordinate;
	 */
	public CLLocationCoordinate2D getCoordinate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CLLocationDistance radius;
	 */
	public double getRadius(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) MKMapRect boundingMapRect;
	 */
	public MKMapRect getBoundingMapRect(){
		throw new RuntimeException("Stub");
	}
}
