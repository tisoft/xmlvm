package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class EKRecurrenceRule extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initRecurrenceWithFrequency:(EKRecurrenceFrequency)type interval:(NSUInteger)interval end:(EKRecurrenceEnd *)end;
	 */
	public EKRecurrenceRule(int type, int interval, EKRecurrenceEnd end) {}

	/**
	 * - (id)initRecurrenceWithFrequency:(EKRecurrenceFrequency)type interval:(NSInteger)interval daysOfTheWeek:(NSArray *)days daysOfTheMonth:(NSArray *)monthDays monthsOfTheYear:(NSArray *)months weeksOfTheYear:(NSArray *)weeksOfTheYear daysOfTheYear:(NSArray *)daysOfTheYear setPositions:(NSArray *)setPositions end:(EKRecurrenceEnd *)end;
	 */
	public EKRecurrenceRule(int type, int interval, List days, List monthDays, List months, List weeksOfTheYear, List daysOfTheYear, List setPositions, EKRecurrenceEnd end) {}

	/** Default constructor */
	EKRecurrenceRule() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSString *calendarIdentifier;
	 */
	public String getCalendarIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) EKRecurrenceEnd *recurrenceEnd;
	 */
	public EKRecurrenceEnd getRecurrenceEnd(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) EKRecurrenceEnd *recurrenceEnd;
	 */
	public void setRecurrenceEnd(EKRecurrenceEnd recurrenceEnd){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) EKRecurrenceFrequency frequency;
	 */
	public int getFrequency(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSInteger interval;
	 */
	public int getInterval(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSInteger firstDayOfTheWeek;
	 */
	public int getFirstDayOfTheWeek(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *daysOfTheWeek;
	 */
	public List getDaysOfTheWeek(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *daysOfTheMonth;
	 */
	public List getDaysOfTheMonth(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *daysOfTheYear;
	 */
	public List getDaysOfTheYear(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *weeksOfTheYear;
	 */
	public List getWeeksOfTheYear(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *monthsOfTheYear;
	 */
	public List getMonthsOfTheYear(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *setPositions;
	 */
	public List getSetPositions(){
		throw new RuntimeException("Stub");
	}
}
