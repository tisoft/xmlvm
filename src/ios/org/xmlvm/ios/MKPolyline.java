package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKPolyline extends MKMultiPoint {

	/*
	 * Static methods
	 */

	/**
	 * + (MKPolyline *)polylineWithPoints:(MKMapPoint *)points count:(NSUInteger)count;
	 */
	public static MKPolyline polylineWithPoints(Reference<MKMapPoint> points, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MKPolyline *)polylineWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSUInteger)count;
	 */
	public static MKPolyline polylineWithCoordinates(Reference<CLLocationCoordinate2D> coords, int count){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	MKPolyline() {}
}
