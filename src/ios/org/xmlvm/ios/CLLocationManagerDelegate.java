package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface CLLocationManagerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation;
	 */
	public abstract void didUpdateToLocation(CLLocationManager manager, CLLocation newLocation, CLLocation oldLocation);

	/**
	 * - (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading ;
	 */
	public abstract void didUpdateHeading(CLLocationManager manager, CLHeading newHeading);

	/**
	 * - (BOOL)locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)manager ;
	 */
	public abstract boolean locationManagerShouldDisplayHeadingCalibration(CLLocationManager manager);

	/**
	 * - (void)locationManager:(CLLocationManager *)manager didEnterRegion:(CLRegion *)region ;
	 */
	public abstract void didEnterRegion(CLLocationManager manager, CLRegion region);

	/**
	 * - (void)locationManager:(CLLocationManager *)manager didExitRegion:(CLRegion *)region ;
	 */
	public abstract void didExitRegion(CLLocationManager manager, CLRegion region);

	/**
	 * - (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error;
	 */
	public abstract void didFailWithError(CLLocationManager manager, NSError error);

	/**
	 * - (void)locationManager:(CLLocationManager *)manager monitoringDidFailForRegion:(CLRegion *)region withError:(NSError *)error ;
	 */
	public abstract void monitoringDidFailForRegion(CLLocationManager manager, CLRegion region, NSError error);

	/**
	 * - (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status ;
	 */
	public abstract void didChangeAuthorizationStatus(CLLocationManager manager, int status);
}
