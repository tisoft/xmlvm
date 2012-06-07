package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "MKOverlay")
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
	@org.xmlvm.XMLVMDelegateMethod(selector = "intersectsMapRect", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapRect", isStruct = true)
	})
	public abstract boolean intersectsMapRect(MKMapRect mapRect);

	/*
	 * Interface Properties
	 */
}
