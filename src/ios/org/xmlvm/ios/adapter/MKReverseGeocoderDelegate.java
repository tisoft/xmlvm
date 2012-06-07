package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class MKReverseGeocoderDelegate implements org.xmlvm.ios.MKReverseGeocoderDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFindPlacemark:(MKPlacemark *)placemark;
	 */
	public void didFindPlacemark(MKReverseGeocoder geocoder, MKPlacemark placemark){};
	/**
	 * - (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFailWithError:(NSError *)error;
	 */
	public void didFailWithError(MKReverseGeocoder geocoder, NSError error){};}
