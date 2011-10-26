package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface MKMapViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated;
	 */
	public abstract void regionWillChangeAnimated(MKMapView mapView, boolean animated);

	/**
	 * - (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated;
	 */
	public abstract void regionDidChangeAnimated(MKMapView mapView, boolean animated);

	/**
	 * - (void)mapViewWillStartLoadingMap:(MKMapView *)mapView;
	 */
	public abstract void mapViewWillStartLoadingMap(MKMapView mapView);

	/**
	 * - (void)mapViewDidFinishLoadingMap:(MKMapView *)mapView;
	 */
	public abstract void mapViewDidFinishLoadingMap(MKMapView mapView);

	/**
	 * - (void)mapViewDidFailLoadingMap:(MKMapView *)mapView withError:(NSError *)error;
	 */
	public abstract void mapViewDidFailLoadingMap(MKMapView mapView, NSError error);

	/**
	 * - (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation;
	 */
	public abstract MKAnnotationView viewForAnnotation(MKMapView mapView, MKAnnotation annotation);

	/**
	 * - (void)mapView:(MKMapView *)mapView didAddAnnotationViews:(NSArray *)views;
	 */
	public abstract void didAddAnnotationViews(MKMapView mapView, List views);

	/**
	 * - (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control;
	 */
	public abstract void annotationViewCalloutAccessoryControlTapped(MKMapView mapView, MKAnnotationView view, UIControl control);

	/**
	 * - (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view ;
	 */
	public abstract void didSelectAnnotationView(MKMapView mapView, MKAnnotationView view);

	/**
	 * - (void)mapView:(MKMapView *)mapView didDeselectAnnotationView:(MKAnnotationView *)view ;
	 */
	public abstract void didDeselectAnnotationView(MKMapView mapView, MKAnnotationView view);

	/**
	 * - (void)mapViewWillStartLocatingUser:(MKMapView *)mapView ;
	 */
	public abstract void mapViewWillStartLocatingUser(MKMapView mapView);

	/**
	 * - (void)mapViewDidStopLocatingUser:(MKMapView *)mapView ;
	 */
	public abstract void mapViewDidStopLocatingUser(MKMapView mapView);

	/**
	 * - (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation ;
	 */
	public abstract void didUpdateUserLocation(MKMapView mapView, MKUserLocation userLocation);

	/**
	 * - (void)mapView:(MKMapView *)mapView didFailToLocateUserWithError:(NSError *)error ;
	 */
	public abstract void didFailToLocateUserWithError(MKMapView mapView, NSError error);

	/**
	 * - (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view didChangeDragState:(MKAnnotationViewDragState)newState fromOldState:(MKAnnotationViewDragState)oldState ;
	 */
	public abstract void annotationViewDidChangeDragState(MKMapView mapView, MKAnnotationView view, int newState, int oldState);

	/**
	 * - (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id <MKOverlay>)overlay ;
	 */
	public abstract MKOverlayView viewForOverlay(MKMapView mapView, MKOverlay overlay);

	/**
	 * - (void)mapView:(MKMapView *)mapView didAddOverlayViews:(NSArray *)overlayViews ;
	 */
	public abstract void didAddOverlayViews(MKMapView mapView, List overlayViews);
}
