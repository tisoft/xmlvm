package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class EAAccessory extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public EAAccessory() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly, getter=isConnected) BOOL connected ;
	 */
	public boolean isConnected(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSUInteger connectionID ;
	 */
	public int getConnectionID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *manufacturer ;
	 */
	public String getManufacturer(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *name ;
	 */
	public String getName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *modelNumber ;
	 */
	public String getModelNumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *serialNumber ;
	 */
	public String getSerialNumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *firmwareRevision ;
	 */
	public String getFirmwareRevision(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *hardwareRevision ;
	 */
	public String getHardwareRevision(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *protocolStrings ;
	 */
	public List getProtocolStrings(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<EAAccessoryDelegate> delegate ;
	 */
	public org.xmlvm.ios.EAAccessoryDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<EAAccessoryDelegate> delegate ;
	 */
	public void setDelegate(org.xmlvm.ios.EAAccessoryDelegate delegate){
		throw new RuntimeException("Stub");
	}
}
