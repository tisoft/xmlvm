package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ADBannerView extends UIView {

	/*
	 * Static methods
	 */

	/**
	 * + (CGSize)sizeFromBannerContentSizeIdentifier:(NSString *)contentSizeIdentifier;
	 */
	public static CGSize sizeFromBannerContentSizeIdentifier(String contentSizeIdentifier){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */
	public ADBannerView(CGRect frame) {
		super(frame);
	}

	/** Default constructor */
	public ADBannerView() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) id <ADBannerViewDelegate> delegate;
	 */
	public org.xmlvm.ios.ADBannerViewDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id <ADBannerViewDelegate> delegate;
	 */
	public void setDelegate(org.xmlvm.ios.ADBannerViewDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isBannerLoaded) BOOL bannerLoaded;
	 */
	public boolean isBannerLoaded(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSSet *requiredContentSizeIdentifiers;
	 */
	public Set getRequiredContentSizeIdentifiers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSSet *requiredContentSizeIdentifiers;
	 */
	public void setRequiredContentSizeIdentifiers(Set requiredContentSizeIdentifiers){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *currentContentSizeIdentifier;
	 */
	public String getCurrentContentSizeIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *currentContentSizeIdentifier;
	 */
	public void setCurrentContentSizeIdentifier(String currentContentSizeIdentifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *advertisingSection;
	 */
	public String getAdvertisingSection(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *advertisingSection;
	 */
	public void setAdvertisingSection(String advertisingSection){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isBannerViewActionInProgress) BOOL bannerViewActionInProgress;
	 */
	public boolean isBannerViewActionInProgress(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)cancelBannerViewAction;
	 */
	public void cancelBannerViewAction(){
		throw new RuntimeException("Stub");
	}
}
