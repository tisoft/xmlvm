package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class MKMapViewDelegate implements org.xmlvm.ios.MKMapViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated;
	 */
	public void regionWillChangeAnimated(MKMapView mapView, boolean animated){};
	/**
	 * - (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated;
	 */
	public void regionDidChangeAnimated(MKMapView mapView, boolean animated){};
	/**
	 * - (void)mapViewWillStartLoadingMap:(MKMapView *)mapView;
	 */
	public void mapViewWillStartLoadingMap(MKMapView mapView){};
	/**
	 * - (void)mapViewDidFinishLoadingMap:(MKMapView *)mapView;
	 */
	public void mapViewDidFinishLoadingMap(MKMapView mapView){};
	/**
	 * - (void)mapViewDidFailLoadingMap:(MKMapView *)mapView withError:(NSError *)error;
	 */
	public void mapViewDidFailLoadingMap(MKMapView mapView, NSError error){};
	/**
	 * - (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation;
	 */
	public MKAnnotationView viewForAnnotation(MKMapView mapView, org.xmlvm.ios.MKAnnotation annotation){
		return null;
	}
	/**
	 * - (void)mapView:(MKMapView *)mapView didAddAnnotationViews:(NSArray *)views;
	 */
	public void didAddAnnotationViews(MKMapView mapView, List views){};
	/**
	 * - (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control;
	 */
	public void annotationViewCalloutAccessoryControlTapped(MKMapView mapView, MKAnnotationView view, UIControl control){};
	/**
	 * - (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view ;
	 */
	public void didSelectAnnotationView(MKMapView mapView, MKAnnotationView view){};
	/**
	 * - (void)mapView:(MKMapView *)mapView didDeselectAnnotationView:(MKAnnotationView *)view ;
	 */
	public void didDeselectAnnotationView(MKMapView mapView, MKAnnotationView view){};
	/**
	 * - (void)mapViewWillStartLocatingUser:(MKMapView *)mapView ;
	 */
	public void mapViewWillStartLocatingUser(MKMapView mapView){};
	/**
	 * - (void)mapViewDidStopLocatingUser:(MKMapView *)mapView ;
	 */
	public void mapViewDidStopLocatingUser(MKMapView mapView){};
	/**
	 * - (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation ;
	 */
	public void didUpdateUserLocation(MKMapView mapView, MKUserLocation userLocation){};
	/**
	 * - (void)mapView:(MKMapView *)mapView didFailToLocateUserWithError:(NSError *)error ;
	 */
	public void didFailToLocateUserWithError(MKMapView mapView, NSError error){};
	/**
	 * - (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view didChangeDragState:(MKAnnotationViewDragState)newState fromOldState:(MKAnnotationViewDragState)oldState ;
	 */
	public void annotationViewDidChangeDragState(MKMapView mapView, MKAnnotationView view, int newState, int oldState){};
	/**
	 * - (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id <MKOverlay>)overlay ;
	 */
	public MKOverlayView viewForOverlay(MKMapView mapView, org.xmlvm.ios.MKOverlay overlay){
		return null;
	}
	/**
	 * - (void)mapView:(MKMapView *)mapView didAddOverlayViews:(NSArray *)overlayViews ;
	 */
	public void didAddOverlayViews(MKMapView mapView, List overlayViews){};}
