package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKPolygon extends MKMultiPoint {

	/*
	 * Static methods
	 */

	/**
	 * + (MKPolygon *)polygonWithPoints:(MKMapPoint *)points count:(NSUInteger)count;
	 */
	public static MKPolygon polygonWithPoints(Reference<MKMapPoint> points, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MKPolygon *)polygonWithPoints:(MKMapPoint *)points count:(NSUInteger)count interiorPolygons:(NSArray *)interiorPolygons;
	 */
	public static MKPolygon polygonWithPoints(Reference<MKMapPoint> points, int count, List interiorPolygons){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MKPolygon *)polygonWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSUInteger)count;
	 */
	public static MKPolygon polygonWithCoordinates(Reference<CLLocationCoordinate2D> coords, int count){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MKPolygon *)polygonWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSUInteger)count interiorPolygons:(NSArray *)interiorPolygons;
	 */
	public static MKPolygon polygonWithCoordinates(Reference<CLLocationCoordinate2D> coords, int count, List interiorPolygons){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MKPolygon() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly) NSArray *interiorPolygons;
	 */
	public List getInteriorPolygons(){
		throw new RuntimeException("Stub");
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
