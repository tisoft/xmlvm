package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKUserLocation extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MKUserLocation() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly, nonatomic, getter=isUpdating) BOOL updating;
	 */
	public boolean isUpdating(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLLocation *location;
	 */
	public CLLocation getLocation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain, nonatomic) NSString *title;
	 */
	public String getTitle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain, nonatomic) NSString *title;
	 */
	public void setTitle(String title){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain, nonatomic) NSString *subtitle;
	 */
	public String getSubtitle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain, nonatomic) NSString *subtitle;
	 */
	public void setSubtitle(String subtitle){
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
}
