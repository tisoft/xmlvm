package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class ADInterstitialAdDelegate implements org.xmlvm.ios.ADInterstitialAdDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)interstitialAdDidUnload:(ADInterstitialAd *)interstitialAd;
	 */
	public void interstitialAdDidUnload(ADInterstitialAd interstitialAd){};
	/**
	 * - (void)interstitialAd:(ADInterstitialAd *)interstitialAd didFailWithError:(NSError *)error;
	 */
	public void interstitialAd(ADInterstitialAd interstitialAd, NSError error){};
	/**
	 * - (void)interstitialAdDidLoad:(ADInterstitialAd *)interstitialAd;
	 */
	public void interstitialAdDidLoad(ADInterstitialAd interstitialAd){};
	/**
	 * - (BOOL)interstitialAdActionShouldBegin:(ADInterstitialAd *)interstitialAd willLeaveApplication:(BOOL)willLeave;
	 */
	public boolean interstitialAdActionShouldBegin(ADInterstitialAd interstitialAd, boolean willLeave){
		return false;
	}
	/**
	 * - (void)interstitialAdActionDidFinish:(ADInterstitialAd *)interstitialAd;
	 */
	public void interstitialAdActionDidFinish(ADInterstitialAd interstitialAd){};}
