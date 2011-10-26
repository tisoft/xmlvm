package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface MKAnnotation {

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) CLLocationCoordinate2D coordinate;
	 */
	public abstract CLLocationCoordinate2D getCoordinate();

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)title;
	 */
	public abstract String title();

	/**
	 * - (NSString *)subtitle;
	 */
	public abstract String subtitle();

	/**
	 * - (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate ;
	 */
	public abstract void setCoordinate(CLLocationCoordinate2D newCoordinate);
}
