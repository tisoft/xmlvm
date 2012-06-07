package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CLLocation extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithLatitude:(CLLocationDegrees)latitude longitude:(CLLocationDegrees)longitude;
	 */
	public CLLocation(double latitude, double longitude) {}

	/**
	 * - (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(CLLocationDistance)altitude horizontalAccuracy:(CLLocationAccuracy)hAccuracy verticalAccuracy:(CLLocationAccuracy)vAccuracy timestamp:(NSDate *)timestamp;
	 */
	public CLLocation(CLLocationCoordinate2D coordinate, double altitude, double hAccuracy, double vAccuracy, NSDate timestamp) {}

	/**
	 * - (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(CLLocationDistance)altitude horizontalAccuracy:(CLLocationAccuracy)hAccuracy verticalAccuracy:(CLLocationAccuracy)vAccuracy course:(CLLocationDirection)course speed:(CLLocationSpeed)speed timestamp:(NSDate *)timestamp ;
	 */
	public CLLocation(CLLocationCoordinate2D coordinate, double altitude, double hAccuracy, double vAccuracy, double course, double speed, NSDate timestamp) {}

	/** Default constructor */
	public CLLocation() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly, nonatomic) CLLocationCoordinate2D coordinate;
	 */
	public CLLocationCoordinate2D getCoordinate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLLocationDistance altitude;
	 */
	public double getAltitude(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLLocationAccuracy horizontalAccuracy;
	 */
	public double getHorizontalAccuracy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLLocationAccuracy verticalAccuracy;
	 */
	public double getVerticalAccuracy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLLocationDirection course ;
	 */
	public double getCourse(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLLocationSpeed speed ;
	 */
	public double getSpeed(){
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

	/**
	 * - (CLLocationDistance)getDistanceFrom:(const CLLocation *)location ;
	 */
	public double getDistanceFrom(CLLocation location){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CLLocationDistance)distanceFromLocation:(const CLLocation *)location ;
	 */
	public double distanceFromLocation(CLLocation location){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
