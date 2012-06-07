package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "MKMapViewDelegate")
public interface MKMapViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "regionWillChangeAnimated")
	})
	public abstract void regionWillChangeAnimated(MKMapView mapView, boolean animated);

	/**
	 * - (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "regionDidChangeAnimated")
	})
	public abstract void regionDidChangeAnimated(MKMapView mapView, boolean animated);

	/**
	 * - (void)mapViewWillStartLoadingMap:(MKMapView *)mapView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapViewWillStartLoadingMap", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView")
	})
	public abstract void mapViewWillStartLoadingMap(MKMapView mapView);

	/**
	 * - (void)mapViewDidFinishLoadingMap:(MKMapView *)mapView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapViewDidFinishLoadingMap", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView")
	})
	public abstract void mapViewDidFinishLoadingMap(MKMapView mapView);

	/**
	 * - (void)mapViewDidFailLoadingMap:(MKMapView *)mapView withError:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapViewDidFailLoadingMap", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "withError")
	})
	public abstract void mapViewDidFailLoadingMap(MKMapView mapView, NSError error);

	/**
	 * - (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "viewForAnnotation")
	})
	public abstract MKAnnotationView viewForAnnotation(MKMapView mapView, org.xmlvm.ios.MKAnnotation annotation);

	/**
	 * - (void)mapView:(MKMapView *)mapView didAddAnnotationViews:(NSArray *)views;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "didAddAnnotationViews")
	})
	public abstract void didAddAnnotationViews(MKMapView mapView, List views);

	/**
	 * - (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKAnnotationView", name = "annotationView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIControl", name = "calloutAccessoryControlTapped")
	})
	public abstract void annotationViewCalloutAccessoryControlTapped(MKMapView mapView, MKAnnotationView view, UIControl control);

	/**
	 * - (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKAnnotationView", name = "didSelectAnnotationView")
	})
	public abstract void didSelectAnnotationView(MKMapView mapView, MKAnnotationView view);

	/**
	 * - (void)mapView:(MKMapView *)mapView didDeselectAnnotationView:(MKAnnotationView *)view ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKAnnotationView", name = "didDeselectAnnotationView")
	})
	public abstract void didDeselectAnnotationView(MKMapView mapView, MKAnnotationView view);

	/**
	 * - (void)mapViewWillStartLocatingUser:(MKMapView *)mapView ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapViewWillStartLocatingUser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView")
	})
	public abstract void mapViewWillStartLocatingUser(MKMapView mapView);

	/**
	 * - (void)mapViewDidStopLocatingUser:(MKMapView *)mapView ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapViewDidStopLocatingUser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView")
	})
	public abstract void mapViewDidStopLocatingUser(MKMapView mapView);

	/**
	 * - (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKUserLocation", name = "didUpdateUserLocation")
	})
	public abstract void didUpdateUserLocation(MKMapView mapView, MKUserLocation userLocation);

	/**
	 * - (void)mapView:(MKMapView *)mapView didFailToLocateUserWithError:(NSError *)error ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "didFailToLocateUserWithError")
	})
	public abstract void didFailToLocateUserWithError(MKMapView mapView, NSError error);

	/**
	 * - (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view didChangeDragState:(MKAnnotationViewDragState)newState fromOldState:(MKAnnotationViewDragState)oldState ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKAnnotationView", name = "annotationView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "didChangeDragState"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "fromOldState")
	})
	public abstract void annotationViewDidChangeDragState(MKMapView mapView, MKAnnotationView view, int newState, int oldState);

	/**
	 * - (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id <MKOverlay>)overlay ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "viewForOverlay")
	})
	public abstract MKOverlayView viewForOverlay(MKMapView mapView, org.xmlvm.ios.MKOverlay overlay);

	/**
	 * - (void)mapView:(MKMapView *)mapView didAddOverlayViews:(NSArray *)overlayViews ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mapView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MKMapView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "didAddOverlayViews")
	})
	public abstract void didAddOverlayViews(MKMapView mapView, List overlayViews);
}
