package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface ADInterstitialAdDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)interstitialAdDidUnload:(ADInterstitialAd *)interstitialAd;
	 */
	public abstract void interstitialAdDidUnload(ADInterstitialAd interstitialAd);

	/**
	 * - (void)interstitialAd:(ADInterstitialAd *)interstitialAd didFailWithError:(NSError *)error;
	 */
	public abstract void interstitialAd(ADInterstitialAd interstitialAd, NSError error);

	/**
	 * - (void)interstitialAdDidLoad:(ADInterstitialAd *)interstitialAd;
	 */
	public abstract void interstitialAdDidLoad(ADInterstitialAd interstitialAd);

	/**
	 * - (BOOL)interstitialAdActionShouldBegin:(ADInterstitialAd *)interstitialAd willLeaveApplication:(BOOL)willLeave;
	 */
	public abstract boolean interstitialAdActionShouldBegin(ADInterstitialAd interstitialAd, boolean willLeave);

	/**
	 * - (void)interstitialAdActionDidFinish:(ADInterstitialAd *)interstitialAd;
	 */
	public abstract void interstitialAdActionDidFinish(ADInterstitialAd interstitialAd);
}
