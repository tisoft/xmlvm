package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "ADBannerViewDelegate")
public interface ADBannerViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)bannerViewDidLoadAd:(ADBannerView *)banner;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "bannerViewDidLoadAd", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ADBannerView")
	})
	public abstract void bannerViewDidLoadAd(ADBannerView banner);

	/**
	 * - (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "bannerView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ADBannerView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "didFailToReceiveAdWithError")
	})
	public abstract void bannerView(ADBannerView banner, NSError error);

	/**
	 * - (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "bannerViewActionShouldBegin", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ADBannerView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "willLeaveApplication")
	})
	public abstract boolean bannerViewActionShouldBegin(ADBannerView banner, boolean willLeave);

	/**
	 * - (void)bannerViewActionDidFinish:(ADBannerView *)banner;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "bannerViewActionDidFinish", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ADBannerView")
	})
	public abstract void bannerViewActionDidFinish(ADBannerView banner);
}
