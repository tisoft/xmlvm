package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKAchievementDescription extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (void)loadAchievementDescriptionsWithCompletionHandler:(void(^)(NSArray *descriptions, NSError *error))completionHandler;
	 */
	public static void loadAchievementDescriptionsWithCompletionHandler(Object completionHandler){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIImage *)incompleteAchievementImage;
	 */
	public static UIImage incompleteAchievementImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIImage *)placeholderCompletedAchievementImage;
	 */
	public static UIImage placeholderCompletedAchievementImage(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	GKAchievementDescription() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, retain, readonly) NSString *identifier;
	 */
	public String getIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain, readonly) NSString *title;
	 */
	public String getTitle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain, readonly) NSString *achievedDescription;
	 */
	public String getAchievedDescription(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain, readonly) NSString *unachievedDescription;
	 */
	public String getUnachievedDescription(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign, readonly) NSInteger maximumPoints;
	 */
	public int getMaximumPoints(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter = isHidden, assign, readonly) BOOL hidden;
	 */
	public boolean isHidden(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain, readonly) UIImage *image;
	 */
	public UIImage getImage(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)loadImageWithCompletionHandler:(void(^)(UIImage *image, NSError *error))completionHandler;
	 */
	public void loadImageWithCompletionHandler(Object completionHandler){
		throw new RuntimeException("Stub");
	}
}
