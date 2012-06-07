package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UITabBarItem extends UIBarItem {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithTitle:(NSString *)title image:(UIImage *)image tag:(NSInteger)tag;
	 */
	public UITabBarItem(String title, UIImage image, int tag) {}

	/**
	 * - (id)initWithTabBarSystemItem:(UITabBarSystemItem)systemItem tag:(NSInteger)tag;
	 */
	public UITabBarItem(int systemItem, int tag) {}

	/** Default constructor */
	public UITabBarItem() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,copy) NSString *badgeValue;
	 */
	public String getBadgeValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *badgeValue;
	 */
	public void setBadgeValue(String badgeValue){
		throw new RuntimeException("Stub");
	}
}
