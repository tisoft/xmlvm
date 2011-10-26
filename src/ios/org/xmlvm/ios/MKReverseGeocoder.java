package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKReverseGeocoder extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate;
	 */
	public MKReverseGeocoder(CLLocationCoordinate2D coordinate) {}

	/** Default constructor */
	MKReverseGeocoder() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) id<MKReverseGeocoderDelegate> delegate;
	 */
	public MKReverseGeocoderDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<MKReverseGeocoderDelegate> delegate;
	 */
	public void setDelegate(MKReverseGeocoderDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CLLocationCoordinate2D coordinate;
	 */
	public CLLocationCoordinate2D getCoordinate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) MKPlacemark *placemark ;
	 */
	public MKPlacemark getPlacemark(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isQuerying) BOOL querying;
	 */
	public boolean isQuerying(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)start;
	 */
	public void start(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancel;
	 */
	public void cancel(){
		throw new RuntimeException("Stub");
	}
}
