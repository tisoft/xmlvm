package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class MKOverlay implements org.xmlvm.ios.MKOverlay {

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) CLLocationCoordinate2D coordinate;
	 */
	public CLLocationCoordinate2D getCoordinate(){
		return null;
	}
	/**
	 * @property(nonatomic, readonly) MKMapRect boundingMapRect;
	 */
	public MKMapRect getBoundingMapRect(){
		return null;
	}
	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)intersectsMapRect:(MKMapRect)mapRect;
	 */
	public boolean intersectsMapRect(MKMapRect mapRect){
		return false;
	}
	/*
	 * Interface Properties
	 */
}
