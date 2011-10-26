package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKScore extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithCategory:(NSString *)category;
	 */
	public GKScore(String category) {}

	/** Default constructor */
	GKScore() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) int64_t value;
	 */
	public long getValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) int64_t value;
	 */
	public void setValue(long value){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, retain) NSString *formattedValue;
	 */
	public String getFormattedValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) NSString *category;
	 */
	public String getCategory(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) NSString *category;
	 */
	public void setCategory(String category){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, retain) NSDate *date;
	 */
	public NSDate getDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, retain) NSString *playerID;
	 */
	public String getPlayerID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, assign) NSInteger rank;
	 */
	public int getRank(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)reportScoreWithCompletionHandler:(void(^)(NSError *error))completionHandler;
	 */
	public void reportScoreWithCompletionHandler(Object completionHandler){
		throw new RuntimeException("Stub");
	}
}
