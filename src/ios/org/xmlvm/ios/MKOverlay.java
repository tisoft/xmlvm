package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface MKOverlay {

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) CLLocationCoordinate2D coordinate;
	 */
	public abstract CLLocationCoordinate2D getCoordinate();

	/**
	 * @property(nonatomic, readonly) MKMapRect boundingMapRect;
	 */
	public abstract MKMapRect getBoundingMapRect();

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)intersectsMapRect:(MKMapRect)mapRect;
	 */
	public abstract boolean intersectsMapRect(MKMapRect mapRect);
}
