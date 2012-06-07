package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class EKEvent extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (EKEvent *)eventWithEventStore:(EKEventStore *)eventStore;
	 */
	public static EKEvent eventWithEventStore(EKEventStore eventStore){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public EKEvent() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSString *eventIdentifier;
	 */
	public String getEventIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *title;
	 */
	public String getTitle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *title;
	 */
	public void setTitle(String title){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *location;
	 */
	public String getLocation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *location;
	 */
	public void setLocation(String location){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) EKCalendar *calendar;
	 */
	public EKCalendar getCalendar(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) EKCalendar *calendar;
	 */
	public void setCalendar(EKCalendar calendar){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *notes;
	 */
	public String getNotes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *notes;
	 */
	public void setNotes(String notes){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSDate *lastModifiedDate;
	 */
	public NSDate getLastModifiedDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSArray *alarms;
	 */
	public List getAlarms(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSArray *alarms;
	 */
	public void setAlarms(List alarms){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isAllDay) BOOL allDay;
	 */
	public boolean isAllDay(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isAllDay) BOOL allDay;
	 */
	public void setAllDay(boolean allDay){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSDate *startDate;
	 */
	public NSDate getStartDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSDate *startDate;
	 */
	public void setStartDate(NSDate startDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSDate *endDate;
	 */
	public NSDate getEndDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSDate *endDate;
	 */
	public void setEndDate(NSDate endDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *attendees;
	 */
	public List getAttendees(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) EKParticipant *organizer;
	 */
	public EKParticipant getOrganizer(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) EKRecurrenceRule *recurrenceRule;
	 */
	public EKRecurrenceRule getRecurrenceRule(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) EKRecurrenceRule *recurrenceRule;
	 */
	public void setRecurrenceRule(EKRecurrenceRule recurrenceRule){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) EKEventAvailability availability;
	 */
	public int getAvailability(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) EKEventAvailability availability;
	 */
	public void setAvailability(int availability){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) EKEventStatus status;
	 */
	public int getStatus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) BOOL isDetached;
	 */
	public boolean getIsDetached(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)addAlarm:(EKAlarm *)alarm;
	 */
	public void addAlarm(EKAlarm alarm){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeAlarm:(EKAlarm *)alarm;
	 */
	public void removeAlarm(EKAlarm alarm){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonResult)compareStartDateWithEvent:(EKEvent *)other;
	 */
	public int compareStartDateWithEvent(EKEvent other){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)refresh;
	 */
	public boolean refresh(){
		throw new RuntimeException("Stub");
	}
}
