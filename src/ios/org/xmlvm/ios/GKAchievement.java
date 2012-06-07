package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKAchievement extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (void)loadAchievementsWithCompletionHandler:(void(^)(NSArray *achievements, NSError *error))completionHandler;
	 */
	public static void loadAchievementsWithCompletionHandler(Object completionHandler){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)resetAchievementsWithCompletionHandler:(void(^)(NSError *error))completionHandler;
	 */
	public static void resetAchievementsWithCompletionHandler(Object completionHandler){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithIdentifier:(NSString *)identifier;
	 */
	public GKAchievement(String identifier) {}

	/** Default constructor */
	public GKAchievement() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, retain) NSString *identifier;
	 */
	public String getIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) NSString *identifier;
	 */
	public void setIdentifier(String identifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) double percentComplete;
	 */
	public double getPercentComplete(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) double percentComplete;
	 */
	public void setPercentComplete(double percentComplete){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isCompleted) BOOL completed;
	 */
	public boolean isCompleted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign, getter=isHidden, readonly) BOOL hidden;
	 */
	public boolean isHidden(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain, readonly) NSDate *lastReportedDate;
	 */
	public NSDate getLastReportedDate(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)reportAchievementWithCompletionHandler:(void(^)(NSError *error))completionHandler;
	 */
	public void reportAchievementWithCompletionHandler(Object completionHandler){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
