package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "MKAnnotation")
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
	@org.xmlvm.XMLVMDelegateMethod(selector = "title", params = {
	})
	public abstract String title();

	/**
	 * - (NSString *)subtitle;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "subtitle", params = {
	})
	public abstract String subtitle();

	/**
	 * - (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "setCoordinate", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CLLocationCoordinate2D", isStruct = true)
	})
	public abstract void setCoordinate(CLLocationCoordinate2D newCoordinate);
}
