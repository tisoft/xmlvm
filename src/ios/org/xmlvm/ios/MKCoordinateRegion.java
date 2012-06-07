package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKCoordinateRegion {

	/*
	 * Variables
	 */
	 public CLLocationCoordinate2D center;
	 public MKCoordinateSpan span;

	/*
	 * Static methods
	 */

	/**
	 * MKCoordinateRegion MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D centerCoordinate, CLLocationDistance latitudinalMeters, CLLocationDistance longitudinalMeters);
	 */
	public static MKCoordinateRegion makeWithDistance(CLLocationCoordinate2D centerCoordinate, double latitudinalMeters, double longitudinalMeters){
		throw new RuntimeException("Stub");
	}

	/**
	 * MKCoordinateRegion MKCoordinateRegionForMapRect(MKMapRect rect);
	 */
	public static MKCoordinateRegion forMapRect(MKMapRect rect){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * MKCoordinateRegion MKCoordinateRegionMake(CLLocationCoordinate2D centerCoordinate, MKCoordinateSpan span);
	 */
	public MKCoordinateRegion(CLLocationCoordinate2D centerCoordinate, MKCoordinateSpan span) {}

	/** Default constructor */
	public MKCoordinateRegion() {}
}
