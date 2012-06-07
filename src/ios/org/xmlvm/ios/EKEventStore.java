package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class EKEventStore extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public EKEventStore() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSString *eventStoreIdentifier;
	 */
	public String getEventStoreIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *calendars;
	 */
	public List getCalendars(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) EKCalendar *defaultCalendarForNewEvents;
	 */
	public EKCalendar getDefaultCalendarForNewEvents(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)saveEvent:(EKEvent *)event span:(EKSpan)span error:(NSError **)error;
	 */
	public boolean saveEvent(EKEvent event, int span, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)removeEvent:(EKEvent *)event span:(EKSpan)span error:(NSError **)error;
	 */
	public boolean removeEvent(EKEvent event, int span, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (EKEvent *)eventWithIdentifier:(NSString *)identifier;
	 */
	public EKEvent eventWithIdentifier(String identifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)eventsMatchingPredicate:(NSPredicate *)predicate;
	 */
	public List eventsMatchingPredicate(NSPredicate predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateEventsMatchingPredicate:(NSPredicate *)predicate usingBlock:(EKEventSearchCallback)block;
	 */
	public void enumerateEventsMatchingPredicate(NSPredicate predicate, Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSPredicate *)predicateForEventsWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate calendars:(NSArray *)calendars;
	 */
	public NSPredicate predicateForEventsWithStartDate(NSDate startDate, NSDate endDate, List calendars){
		throw new RuntimeException("Stub");
	}
}
