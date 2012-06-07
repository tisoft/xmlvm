package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKOverlayView extends UIView {

	/*
	 * Constructors
	 */
	public MKOverlayView(CGRect frame) {
		super(frame);
	}

	/**
	 * - (id)initWithOverlay:(id <MKOverlay>)overlay;
	 */
	public MKOverlayView(org.xmlvm.ios.MKOverlay overlay) {}

	/** Default constructor */
	public MKOverlayView() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) id <MKOverlay> overlay;
	 */
	public org.xmlvm.ios.MKOverlay getOverlay(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (CGPoint)pointForMapPoint:(MKMapPoint)mapPoint;
	 */
	public CGPoint pointForMapPoint(MKMapPoint mapPoint){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (MKMapPoint)mapPointForPoint:(CGPoint)point;
	 */
	public MKMapPoint mapPointForPoint(CGPoint point){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)rectForMapRect:(MKMapRect)mapRect;
	 */
	public CGRect rectForMapRect(MKMapRect mapRect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (MKMapRect)mapRectForRect:(CGRect)rect;
	 */
	public MKMapRect mapRectForRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canDrawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale;
	 */
	public boolean canDrawMapRect(MKMapRect mapRect, float zoomScale){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale inContext:(CGContextRef)context;
	 */
	public void drawMapRect(MKMapRect mapRect, float zoomScale, CGContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNeedsDisplayInMapRect:(MKMapRect)mapRect;
	 */
	public void setNeedsDisplayInMapRect(MKMapRect mapRect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNeedsDisplayInMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale;
	 */
	public void setNeedsDisplayInMapRect(MKMapRect mapRect, float zoomScale){
		throw new RuntimeException("Stub");
	}
}
