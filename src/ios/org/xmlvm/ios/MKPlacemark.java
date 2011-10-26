package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKPlacemark extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate addressDictionary:(NSDictionary *)addressDictionary;
	 */
	public MKPlacemark(CLLocationCoordinate2D coordinate, Map addressDictionary) {}

	/** Default constructor */
	MKPlacemark() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSDictionary *addressDictionary;
	 */
	public Map getAddressDictionary(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *thoroughfare;
	 */
	public String getThoroughfare(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *subThoroughfare;
	 */
	public String getSubThoroughfare(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *locality;
	 */
	public String getLocality(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *subLocality;
	 */
	public String getSubLocality(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *administrativeArea;
	 */
	public String getAdministrativeArea(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *subAdministrativeArea;
	 */
	public String getSubAdministrativeArea(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *postalCode;
	 */
	public String getPostalCode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *country;
	 */
	public String getCountry(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *countryCode;
	 */
	public String getCountryCode(){
		throw new RuntimeException("Stub");
	}
}
