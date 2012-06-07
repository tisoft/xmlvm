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
	public MKPolyline() {
		super();
	}

	/*
	 * Interface Properties
	 */

	/**
	 * @property(nonatomic, readonly) CLLocationCoordinate2D coordinate;
	 */
	public CLLocationCoordinate2D getCoordinate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) MKMapRect boundingMapRect;
	 */
	public MKMapRect getBoundingMapRect(){
		throw new RuntimeException("Stub");
	}
}
