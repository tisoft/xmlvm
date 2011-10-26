package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ADInterstitialAd extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	ADInterstitialAd() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) id <ADInterstitialAdDelegate> delegate;
	 */
	public ADInterstitialAdDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id <ADInterstitialAdDelegate> delegate;
	 */
	public void setDelegate(ADInterstitialAdDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isLoaded) BOOL loaded;
	 */
	public boolean isLoaded(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isActionInProgress) BOOL actionInProgress;
	 */
	public boolean isActionInProgress(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)cancelAction;
	 */
	public void cancelAction(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)presentInView:(UIView *)containerView;
	 */
	public boolean presentInView(UIView containerView){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)presentFromViewController:(UIViewController *)viewController;
	 */
	public void presentFromViewController(UIViewController viewController){
		throw new RuntimeException("Stub");
	}
}
