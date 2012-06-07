package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class CLLocationManagerDelegate implements org.xmlvm.ios.CLLocationManagerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation;
	 */
	public void didUpdateToLocation(CLLocationManager manager, CLLocation newLocation, CLLocation oldLocation){};
	/**
	 * - (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading ;
	 */
	public void didUpdateHeading(CLLocationManager manager, CLHeading newHeading){};
	/**
	 * - (BOOL)locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)manager ;
	 */
	public boolean locationManagerShouldDisplayHeadingCalibration(CLLocationManager manager){
		return false;
	}
	/**
	 * - (void)locationManager:(CLLocationManager *)manager didEnterRegion:(CLRegion *)region ;
	 */
	public void didEnterRegion(CLLocationManager manager, CLRegion region){};
	/**
	 * - (void)locationManager:(CLLocationManager *)manager didExitRegion:(CLRegion *)region ;
	 */
	public void didExitRegion(CLLocationManager manager, CLRegion region){};
	/**
	 * - (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error;
	 */
	public void didFailWithError(CLLocationManager manager, NSError error){};
	/**
	 * - (void)locationManager:(CLLocationManager *)manager monitoringDidFailForRegion:(CLRegion *)region withError:(NSError *)error ;
	 */
	public void monitoringDidFailForRegion(CLLocationManager manager, CLRegion region, NSError error){};
	/**
	 * - (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status ;
	 */
	public void didChangeAuthorizationStatus(CLLocationManager manager, int status){};}
