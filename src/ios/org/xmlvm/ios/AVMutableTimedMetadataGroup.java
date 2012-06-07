package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVMutableTimedMetadataGroup extends AVTimedMetadataGroup {

	/*
	 * Constructors
	 */
	public AVMutableTimedMetadataGroup(List items, CMTimeRange timeRange) {
		super(items, timeRange);
	}

	/** Default constructor */
	public AVMutableTimedMetadataGroup() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(readwrite) CMTimeRange timeRange;
	 */
	public CMTimeRange getTimeRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readwrite) CMTimeRange timeRange;
	 */
	public void setTimeRange(CMTimeRange timeRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readwrite, copy) NSArray *items;
	 */
	public List getItems(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readwrite, copy) NSArray *items;
	 */
	public void setItems(List items){
		throw new RuntimeException("Stub");
	}
}
