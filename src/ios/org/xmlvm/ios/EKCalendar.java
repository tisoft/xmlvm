package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class EKCalendar extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public EKCalendar() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSString *title;
	 */
	public String getTitle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) EKCalendarType type;
	 */
	public int getType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) BOOL allowsContentModifications;
	 */
	public boolean getAllowsContentModifications(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CGColorRef CGColor;
	 */
	public CGColor getCGColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) EKCalendarEventAvailabilityMask supportedEventAvailabilities;
	 */
	public int getSupportedEventAvailabilities(){
		throw new RuntimeException("Stub");
	}
}
