package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIScrollViewDelegate")
public interface UIScrollViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)scrollViewDidScroll:(UIScrollView *)scrollView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "scrollViewDidScroll", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIScrollView")
	})
	public abstract void scrollViewDidScroll(UIScrollView scrollView);

	/**
	 * - (void)scrollViewDidZoom:(UIScrollView *)scrollView ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "scrollViewDidZoom", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIScrollView")
	})
	public abstract void scrollViewDidZoom(UIScrollView scrollView);

	/**
	 * - (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "scrollViewWillBeginDragging", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIScrollView")
	})
	public abstract void scrollViewWillBeginDragging(UIScrollView scrollView);

	/**
	 * - (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "scrollViewDidEndDragging", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIScrollView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "willDecelerate")
	})
	public abstract void scrollViewDidEndDragging(UIScrollView scrollView, boolean decelerate);

	/**
	 * - (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "scrollViewWillBeginDecelerating", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIScrollView")
	})
	public abstract void scrollViewWillBeginDecelerating(UIScrollView scrollView);

	/**
	 * - (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "scrollViewDidEndDecelerating", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIScrollView")
	})
	public abstract void scrollViewDidEndDecelerating(UIScrollView scrollView);

	/**
	 * - (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "scrollViewDidEndScrollingAnimation", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIScrollView")
	})
	public abstract void scrollViewDidEndScrollingAnimation(UIScrollView scrollView);

	/**
	 * - (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "viewForZoomingInScrollView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIScrollView")
	})
	public abstract UIView viewForZoomingInScrollView(UIScrollView scrollView);

	/**
	 * - (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "scrollViewWillBeginZooming", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIScrollView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIView", name = "withView")
	})
	public abstract void scrollViewWillBeginZooming(UIScrollView scrollView, UIView view);

	/**
	 * - (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(float)scale;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "scrollViewDidEndZooming", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIScrollView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIView", name = "withView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "float", isStruct = true, name = "atScale")
	})
	public abstract void scrollViewDidEndZooming(UIScrollView scrollView, UIView view, float scale);

	/**
	 * - (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "scrollViewShouldScrollToTop", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIScrollView")
	})
	public abstract boolean scrollViewShouldScrollToTop(UIScrollView scrollView);

	/**
	 * - (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "scrollViewDidScrollToTop", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIScrollView")
	})
	public abstract void scrollViewDidScrollToTop(UIScrollView scrollView);
}
