package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKMultiPoint extends MKShape {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MKMultiPoint() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) MKMapPoint *points;
	 */
	public Reference<MKMapPoint> getPoints(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSUInteger pointCount;
	 */
	public int getPointCount(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)getCoordinates:(CLLocationCoordinate2D *)coords range:(NSRange)range;
	 */
	public void getCoordinates(Reference<CLLocationCoordinate2D> coords, NSRange range){
		throw new RuntimeException("Stub");
	}
}
