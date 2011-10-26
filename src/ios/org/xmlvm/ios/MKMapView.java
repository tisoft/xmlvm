package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKMapView extends UIView {

	/*
	 * Constructors
	 */

	/** Default constructor */
	MKMapView() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) id <MKMapViewDelegate> delegate;
	 */
	public MKMapViewDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id <MKMapViewDelegate> delegate;
	 */
	public void setDelegate(MKMapViewDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MKMapType mapType;
	 */
	public int getMapType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MKMapType mapType;
	 */
	public void setMapType(int mapType){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MKCoordinateRegion region;
	 */
	public MKCoordinateRegion getRegion(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MKCoordinateRegion region;
	 */
	public void setRegion(MKCoordinateRegion region){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CLLocationCoordinate2D centerCoordinate;
	 */
	public CLLocationCoordinate2D getCenterCoordinate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CLLocationCoordinate2D centerCoordinate;
	 */
	public void setCenterCoordinate(CLLocationCoordinate2D centerCoordinate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MKMapRect visibleMapRect;
	 */
	public MKMapRect getVisibleMapRect(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MKMapRect visibleMapRect;
	 */
	public void setVisibleMapRect(MKMapRect visibleMapRect){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isZoomEnabled) BOOL zoomEnabled;
	 */
	public boolean isZoomEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isZoomEnabled) BOOL zoomEnabled;
	 */
	public void setZoomEnabled(boolean zoomEnabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isScrollEnabled) BOOL scrollEnabled;
	 */
	public boolean isScrollEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isScrollEnabled) BOOL scrollEnabled;
	 */
	public void setScrollEnabled(boolean scrollEnabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsUserLocation;
	 */
	public boolean getShowsUserLocation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsUserLocation;
	 */
	public void setShowsUserLocation(boolean showsUserLocation){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) MKUserLocation *userLocation;
	 */
	public MKUserLocation getUserLocation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isUserLocationVisible) BOOL userLocationVisible;
	 */
	public boolean isUserLocationVisible(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *annotations;
	 */
	public List getAnnotations(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSArray *selectedAnnotations;
	 */
	public List getSelectedAnnotations(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSArray *selectedAnnotations;
	 */
	public void setSelectedAnnotations(List selectedAnnotations){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CGRect annotationVisibleRect;
	 */
	public CGRect getAnnotationVisibleRect(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *overlays ;
	 */
	public List getOverlays(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setRegion:(MKCoordinateRegion)region animated:(BOOL)animated;
	 */
	public void setRegion(MKCoordinateRegion region, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated;
	 */
	public void setCenterCoordinate(CLLocationCoordinate2D coordinate, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (MKCoordinateRegion)regionThatFits:(MKCoordinateRegion)region;
	 */
	public MKCoordinateRegion regionThatFits(MKCoordinateRegion region){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setVisibleMapRect:(MKMapRect)mapRect animated:(BOOL)animate;
	 */
	public void setVisibleMapRect(MKMapRect mapRect, boolean animate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (MKMapRect)mapRectThatFits:(MKMapRect)mapRect;
	 */
	public MKMapRect mapRectThatFits(MKMapRect mapRect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setVisibleMapRect:(MKMapRect)mapRect edgePadding:(UIEdgeInsets)insets animated:(BOOL)animate;
	 */
	public void setVisibleMapRect(MKMapRect mapRect, UIEdgeInsets insets, boolean animate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (MKMapRect)mapRectThatFits:(MKMapRect)mapRect edgePadding:(UIEdgeInsets)insets;
	 */
	public MKMapRect mapRectThatFits(MKMapRect mapRect, UIEdgeInsets insets){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGPoint)convertCoordinate:(CLLocationCoordinate2D)coordinate toPointToView:(UIView *)view;
	 */
	public CGPoint convertCoordinate(CLLocationCoordinate2D coordinate, UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CLLocationCoordinate2D)convertPoint:(CGPoint)point toCoordinateFromView:(UIView *)view;
	 */
	public CLLocationCoordinate2D convertPoint(CGPoint point, UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)convertRegion:(MKCoordinateRegion)region toRectToView:(UIView *)view;
	 */
	public CGRect convertRegion(MKCoordinateRegion region, UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (MKCoordinateRegion)convertRect:(CGRect)rect toRegionFromView:(UIView *)view;
	 */
	public MKCoordinateRegion convertRect(CGRect rect, UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addAnnotation:(id <MKAnnotation>)annotation;
	 */
	public void addAnnotation(MKAnnotation annotation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addAnnotations:(NSArray *)annotations;
	 */
	public void addAnnotations(List annotations){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeAnnotation:(id <MKAnnotation>)annotation;
	 */
	public void removeAnnotation(MKAnnotation annotation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeAnnotations:(NSArray *)annotations;
	 */
	public void removeAnnotations(List annotations){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)annotationsInMapRect:(MKMapRect)mapRect ;
	 */
	public Set annotationsInMapRect(MKMapRect mapRect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (MKAnnotationView *)viewForAnnotation:(id <MKAnnotation>)annotation;
	 */
	public MKAnnotationView viewForAnnotation(MKAnnotation annotation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (MKAnnotationView *)dequeueReusableAnnotationViewWithIdentifier:(NSString *)identifier;
	 */
	public MKAnnotationView dequeueReusableAnnotationViewWithIdentifier(String identifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)selectAnnotation:(id <MKAnnotation>)annotation animated:(BOOL)animated;
	 */
	public void selectAnnotation(MKAnnotation annotation, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)deselectAnnotation:(id <MKAnnotation>)annotation animated:(BOOL)animated;
	 */
	public void deselectAnnotation(MKAnnotation annotation, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addOverlay:(id <MKOverlay>)overlay ;
	 */
	public void addOverlay(MKOverlay overlay){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addOverlays:(NSArray *)overlays ;
	 */
	public void addOverlays(List overlays){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeOverlay:(id <MKOverlay>)overlay ;
	 */
	public void removeOverlay(MKOverlay overlay){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeOverlays:(NSArray *)overlays ;
	 */
	public void removeOverlays(List overlays){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertOverlay:(id <MKOverlay>)overlay atIndex:(NSUInteger)index ;
	 */
	public void insertOverlay(MKOverlay overlay, int index){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)exchangeOverlayAtIndex:(NSUInteger)index1 withOverlayAtIndex:(NSUInteger)index2 ;
	 */
	public void exchangeOverlayAtIndex(int index1, int index2){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertOverlay:(id <MKOverlay>)overlay aboveOverlay:(id <MKOverlay>)sibling ;
	 */
	public void insertOverlayAboveOverlay(MKOverlay overlay, MKOverlay sibling){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertOverlay:(id <MKOverlay>)overlay belowOverlay:(id <MKOverlay>)sibling ;
	 */
	public void insertOverlayBelowOverlay(MKOverlay overlay, MKOverlay sibling){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (MKOverlayView *)viewForOverlay:(id <MKOverlay>)overlay ;
	 */
	public MKOverlayView viewForOverlay(MKOverlay overlay){
		throw new RuntimeException("Stub");
	}
}
