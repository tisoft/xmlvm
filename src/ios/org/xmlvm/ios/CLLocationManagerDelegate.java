package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "CLLocationManagerDelegate")
public interface CLLocationManagerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "locationManager", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLLocationManager"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLLocation", name = "didUpdateToLocation"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLLocation", name = "fromLocation")
	})
	public abstract void didUpdateToLocation(CLLocationManager manager, CLLocation newLocation, CLLocation oldLocation);

	/**
	 * - (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "locationManager", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLLocationManager"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLHeading", name = "didUpdateHeading")
	})
	public abstract void didUpdateHeading(CLLocationManager manager, CLHeading newHeading);

	/**
	 * - (BOOL)locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)manager ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "locationManagerShouldDisplayHeadingCalibration", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLLocationManager")
	})
	public abstract boolean locationManagerShouldDisplayHeadingCalibration(CLLocationManager manager);

	/**
	 * - (void)locationManager:(CLLocationManager *)manager didEnterRegion:(CLRegion *)region ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "locationManager", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLLocationManager"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLRegion", name = "didEnterRegion")
	})
	public abstract void didEnterRegion(CLLocationManager manager, CLRegion region);

	/**
	 * - (void)locationManager:(CLLocationManager *)manager didExitRegion:(CLRegion *)region ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "locationManager", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLLocationManager"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLRegion", name = "didExitRegion")
	})
	public abstract void didExitRegion(CLLocationManager manager, CLRegion region);

	/**
	 * - (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "locationManager", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLLocationManager"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "didFailWithError")
	})
	public abstract void didFailWithError(CLLocationManager manager, NSError error);

	/**
	 * - (void)locationManager:(CLLocationManager *)manager monitoringDidFailForRegion:(CLRegion *)region withError:(NSError *)error ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "locationManager", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLLocationManager"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLRegion", name = "monitoringDidFailForRegion"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "withError")
	})
	public abstract void monitoringDidFailForRegion(CLLocationManager manager, CLRegion region, NSError error);

	/**
	 * - (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "locationManager", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLLocationManager"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "didChangeAuthorizationStatus")
	})
	public abstract void didChangeAuthorizationStatus(CLLocationManager manager, int status);
}
