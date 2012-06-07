package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class ADBannerViewDelegate implements org.xmlvm.ios.ADBannerViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)bannerViewDidLoadAd:(ADBannerView *)banner;
	 */
	public void bannerViewDidLoadAd(ADBannerView banner){};
	/**
	 * - (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error;
	 */
	public void bannerView(ADBannerView banner, NSError error){};
	/**
	 * - (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave;
	 */
	public boolean bannerViewActionShouldBegin(ADBannerView banner, boolean willLeave){
		return false;
	}
	/**
	 * - (void)bannerViewActionDidFinish:(ADBannerView *)banner;
	 */
	public void bannerViewActionDidFinish(ADBannerView banner){};}
