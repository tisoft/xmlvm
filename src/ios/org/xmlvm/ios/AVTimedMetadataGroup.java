package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVTimedMetadataGroup extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithItems:(NSArray *)items timeRange:(CMTimeRange)timeRange;
	 */
	public AVTimedMetadataGroup(List items, CMTimeRange timeRange) {}

	/** Default constructor */
	public AVTimedMetadataGroup() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly) CMTimeRange timeRange;
	 */
	public CMTimeRange getTimeRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, copy) NSArray *items;
	 */
	public List getItems(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
