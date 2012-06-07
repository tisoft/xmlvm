package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "MKReverseGeocoderDelegate")
public interface MKReverseGeocoderDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFindPlacemark:(MKPlacemark *)placemark;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "reverseGeocoder", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKReverseGeocoder"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKPlacemark", name = "didFindPlacemark")
	})
	public abstract void didFindPlacemark(MKReverseGeocoder geocoder, MKPlacemark placemark);

	/**
	 * - (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFailWithError:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "reverseGeocoder", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKReverseGeocoder"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "didFailWithError")
	})
	public abstract void didFailWithError(MKReverseGeocoder geocoder, NSError error);
}
