package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKCircleView extends MKOverlayPathView {

	/*
	 * Constructors
	 */
	public MKCircleView(org.xmlvm.ios.MKOverlay overlay) {
		super(overlay);
	}
	public MKCircleView(CGRect frame) {
		super(frame);
	}

	/**
	 * - (id)initWithCircle:(MKCircle *)circle;
	 */
	public MKCircleView(MKCircle circle) {}

	/** Default constructor */
	public MKCircleView() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) MKCircle *circle;
	 */
	public MKCircle getCircle(){
		throw new RuntimeException("Stub");
	}
}
