package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CLLocationManager extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (BOOL)locationServicesEnabled ;
	 */
	public static boolean locationServicesEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)headingAvailable ;
	 */
	public static boolean headingAvailable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)significantLocationChangeMonitoringAvailable ;
	 */
	public static boolean significantLocationChangeMonitoringAvailable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)regionMonitoringAvailable ;
	 */
	public static boolean regionMonitoringAvailable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)regionMonitoringEnabled ;
	 */
	public static boolean regionMonitoringEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (CLAuthorizationStatus)authorizationStatus ;
	 */
	public static int authorizationStatus(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CLLocationManager() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(assign, nonatomic) id<CLLocationManagerDelegate> delegate;
	 */
	public CLLocationManagerDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) id<CLLocationManagerDelegate> delegate;
	 */
	public void setDelegate(CLLocationManagerDelegate arg0){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) BOOL locationServicesEnabled ;
	 */
	public boolean getLocationServicesEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy, nonatomic) NSString *purpose ;
	 */
	public String getPurpose(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy, nonatomic) NSString *purpose ;
	 */
	public void setPurpose(String purpose){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) CLLocationDistance distanceFilter;
	 */
	public double getDistanceFilter(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) CLLocationDistance distanceFilter;
	 */
	public void setDistanceFilter(double distanceFilter){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) CLLocationAccuracy desiredAccuracy;
	 */
	public double getDesiredAccuracy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) CLLocationAccuracy desiredAccuracy;
	 */
	public void setDesiredAccuracy(double desiredAccuracy){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLLocation *location;
	 */
	public CLLocation getLocation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) BOOL headingAvailable ;
	 */
	public boolean getHeadingAvailable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) CLLocationDegrees headingFilter ;
	 */
	public double getHeadingFilter(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) CLLocationDegrees headingFilter ;
	 */
	public void setHeadingFilter(double headingFilter){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) CLDeviceOrientation headingOrientation ;
	 */
	public int getHeadingOrientation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign, nonatomic) CLDeviceOrientation headingOrientation ;
	 */
	public void setHeadingOrientation(int headingOrientation){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLHeading *heading ;
	 */
	public CLHeading getHeading(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLLocationDistance maximumRegionMonitoringDistance ;
	 */
	public double getMaximumRegionMonitoringDistance(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) NSSet *monitoredRegions ;
	 */
	public Set getMonitoredRegions(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)startUpdatingLocation;
	 */
	public void startUpdatingLocation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopUpdatingLocation;
	 */
	public void stopUpdatingLocation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)startUpdatingHeading ;
	 */
	public void startUpdatingHeading(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopUpdatingHeading ;
	 */
	public void stopUpdatingHeading(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)dismissHeadingCalibrationDisplay ;
	 */
	public void dismissHeadingCalibrationDisplay(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)startMonitoringSignificantLocationChanges ;
	 */
	public void startMonitoringSignificantLocationChanges(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopMonitoringSignificantLocationChanges ;
	 */
	public void stopMonitoringSignificantLocationChanges(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)startMonitoringForRegion:(CLRegion *)region desiredAccuracy:(CLLocationAccuracy)accuracy ;
	 */
	public void startMonitoringForRegion(CLRegion region, double accuracy){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopMonitoringForRegion:(CLRegion *)region ;
	 */
	public void stopMonitoringForRegion(CLRegion region){
		throw new RuntimeException("Stub");
	}
}
