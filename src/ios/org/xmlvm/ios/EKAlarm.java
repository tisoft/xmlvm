package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class EKAlarm extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (EKAlarm *)alarmWithAbsoluteDate:(NSDate *)date;
	 */
	public static EKAlarm alarmWithAbsoluteDate(NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (EKAlarm *)alarmWithRelativeOffset:(NSTimeInterval)offset;
	 */
	public static EKAlarm alarmWithRelativeOffset(double offset){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public EKAlarm() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) NSTimeInterval relativeOffset;
	 */
	public double getRelativeOffset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval relativeOffset;
	 */
	public void setRelativeOffset(double relativeOffset){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSDate *absoluteDate;
	 */
	public NSDate getAbsoluteDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSDate *absoluteDate;
	 */
	public void setAbsoluteDate(NSDate absoluteDate){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
