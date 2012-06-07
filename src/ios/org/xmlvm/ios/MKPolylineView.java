package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKPolylineView extends MKOverlayPathView {

	/*
	 * Constructors
	 */
	public MKPolylineView(org.xmlvm.ios.MKOverlay overlay) {
		super(overlay);
	}
	public MKPolylineView(CGRect frame) {
		super(frame);
	}

	/**
	 * - (id)initWithPolyline:(MKPolyline *)polyline;
	 */
	public MKPolylineView(MKPolyline polyline) {}

	/** Default constructor */
	public MKPolylineView() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) MKPolyline *polyline;
	 */
	public MKPolyline getPolyline(){
		throw new RuntimeException("Stub");
	}
}
