package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CLRegion extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initCircularRegionWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius identifier:(NSString *)identifier ;
	 */
	public CLRegion(CLLocationCoordinate2D center, double radius, String identifier) {}

	/** Default constructor */
	CLRegion() {}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly, nonatomic) CLLocationCoordinate2D center ;
	 */
	public CLLocationCoordinate2D getCenter(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) CLLocationDistance radius ;
	 */
	public double getRadius(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, nonatomic) NSString *identifier ;
	 */
	public String getIdentifier(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)containsCoordinate:(CLLocationCoordinate2D)coordinate ;
	 */
	public boolean containsCoordinate(CLLocationCoordinate2D coordinate){
		throw new RuntimeException("Stub");
	}
}
