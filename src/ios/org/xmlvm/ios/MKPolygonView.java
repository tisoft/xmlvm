package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKPolygonView extends MKOverlayPathView {

	/*
	 * Constructors
	 */
	public MKPolygonView(org.xmlvm.ios.MKOverlay overlay) {
		super(overlay);
	}
	public MKPolygonView(CGRect frame) {
		super(frame);
	}

	/**
	 * - (id)initWithPolygon:(MKPolygon *)polygon;
	 */
	public MKPolygonView(MKPolygon polygon) {}

	/** Default constructor */
	public MKPolygonView() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) MKPolygon *polygon;
	 */
	public MKPolygon getPolygon(){
		throw new RuntimeException("Stub");
	}
}
