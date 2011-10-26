package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface ADBannerViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)bannerViewDidLoadAd:(ADBannerView *)banner;
	 */
	public abstract void bannerViewDidLoadAd(ADBannerView banner);

	/**
	 * - (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error;
	 */
	public abstract void bannerView(ADBannerView banner, NSError error);

	/**
	 * - (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave;
	 */
	public abstract boolean bannerViewActionShouldBegin(ADBannerView banner, boolean willLeave);

	/**
	 * - (void)bannerViewActionDidFinish:(ADBannerView *)banner;
	 */
	public abstract void bannerViewActionDidFinish(ADBannerView banner);
}
