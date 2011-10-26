package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface MKReverseGeocoderDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFindPlacemark:(MKPlacemark *)placemark;
	 */
	public abstract void didFindPlacemark(MKReverseGeocoder geocoder, MKPlacemark placemark);

	/**
	 * - (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFailWithError:(NSError *)error;
	 */
	public abstract void didFailWithError(MKReverseGeocoder geocoder, NSError error);
}
