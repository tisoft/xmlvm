package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKAchievementViewController extends UINavigationController {

	/*
	 * Constructors
	 */
	public GKAchievementViewController(UIViewController rootViewController) {
		super(rootViewController);
	}
	public GKAchievementViewController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/** Default constructor */
	public GKAchievementViewController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) id<GKAchievementViewControllerDelegate> achievementDelegate;
	 */
	public org.xmlvm.ios.GKAchievementViewControllerDelegate getAchievementDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<GKAchievementViewControllerDelegate> achievementDelegate;
	 */
	public void setAchievementDelegate(org.xmlvm.ios.GKAchievementViewControllerDelegate achievementDelegate){
		throw new RuntimeException("Stub");
	}
}
