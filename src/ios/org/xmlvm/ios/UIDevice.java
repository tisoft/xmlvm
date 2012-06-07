package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIDevice extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (UIDevice *)currentDevice;
	 */
	public static UIDevice currentDevice(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public UIDevice() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly,retain) NSString *name;
	 */
	public String getName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) NSString *model;
	 */
	public String getModel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) NSString *localizedModel;
	 */
	public String getLocalizedModel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) NSString *systemName;
	 */
	public String getSystemName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) NSString *systemVersion;
	 */
	public String getSystemVersion(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIDeviceOrientation orientation;
	 */
	public int getOrientation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) NSString *uniqueIdentifier;
	 */
	public String getUniqueIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isGeneratingDeviceOrientationNotifications) BOOL generatesDeviceOrientationNotifications;
	 */
	public boolean isGeneratingDeviceOrientationNotifications(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isBatteryMonitoringEnabled) BOOL batteryMonitoringEnabled ;
	 */
	public boolean isBatteryMonitoringEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isBatteryMonitoringEnabled) BOOL batteryMonitoringEnabled ;
	 */
	public void setBatteryMonitoringEnabled(boolean batteryMonitoringEnabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIDeviceBatteryState batteryState ;
	 */
	public int getBatteryState(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) float batteryLevel ;
	 */
	public float getBatteryLevel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isProximityMonitoringEnabled) BOOL proximityMonitoringEnabled ;
	 */
	public boolean isProximityMonitoringEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isProximityMonitoringEnabled) BOOL proximityMonitoringEnabled ;
	 */
	public void setProximityMonitoringEnabled(boolean proximityMonitoringEnabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) BOOL proximityState ;
	 */
	public boolean getProximityState(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isMultitaskingSupported) BOOL multitaskingSupported ;
	 */
	public boolean isMultitaskingSupported(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIUserInterfaceIdiom userInterfaceIdiom ;
	 */
	public int getUserInterfaceIdiom(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)beginGeneratingDeviceOrientationNotifications;
	 */
	public void beginGeneratingDeviceOrientationNotifications(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)endGeneratingDeviceOrientationNotifications;
	 */
	public void endGeneratingDeviceOrientationNotifications(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)playInputClick ;
	 */
	public void playInputClick(){
		throw new RuntimeException("Stub");
	}
}
