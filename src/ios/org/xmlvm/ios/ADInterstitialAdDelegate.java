package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "ADInterstitialAdDelegate")
public interface ADInterstitialAdDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)interstitialAdDidUnload:(ADInterstitialAd *)interstitialAd;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "interstitialAdDidUnload", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ADInterstitialAd")
	})
	public abstract void interstitialAdDidUnload(ADInterstitialAd interstitialAd);

	/**
	 * - (void)interstitialAd:(ADInterstitialAd *)interstitialAd didFailWithError:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "interstitialAd", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ADInterstitialAd"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "didFailWithError")
	})
	public abstract void interstitialAd(ADInterstitialAd interstitialAd, NSError error);

	/**
	 * - (void)interstitialAdDidLoad:(ADInterstitialAd *)interstitialAd;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "interstitialAdDidLoad", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ADInterstitialAd")
	})
	public abstract void interstitialAdDidLoad(ADInterstitialAd interstitialAd);

	/**
	 * - (BOOL)interstitialAdActionShouldBegin:(ADInterstitialAd *)interstitialAd willLeaveApplication:(BOOL)willLeave;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "interstitialAdActionShouldBegin", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ADInterstitialAd"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "willLeaveApplication")
	})
	public abstract boolean interstitialAdActionShouldBegin(ADInterstitialAd interstitialAd, boolean willLeave);

	/**
	 * - (void)interstitialAdActionDidFinish:(ADInterstitialAd *)interstitialAd;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "interstitialAdActionDidFinish", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ADInterstitialAd")
	})
	public abstract void interstitialAdActionDidFinish(ADInterstitialAd interstitialAd);
}
