package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIScrollViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)scrollViewDidScroll:(UIScrollView *)scrollView;
	 */
	public abstract void scrollViewDidScroll(UIScrollView scrollView);

	/**
	 * - (void)scrollViewDidZoom:(UIScrollView *)scrollView ;
	 */
	public abstract void scrollViewDidZoom(UIScrollView scrollView);

	/**
	 * - (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView;
	 */
	public abstract void scrollViewWillBeginDragging(UIScrollView scrollView);

	/**
	 * - (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate;
	 */
	public abstract void scrollViewDidEndDragging(UIScrollView scrollView, boolean decelerate);

	/**
	 * - (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView;
	 */
	public abstract void scrollViewWillBeginDecelerating(UIScrollView scrollView);

	/**
	 * - (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView;
	 */
	public abstract void scrollViewDidEndDecelerating(UIScrollView scrollView);

	/**
	 * - (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView;
	 */
	public abstract void scrollViewDidEndScrollingAnimation(UIScrollView scrollView);

	/**
	 * - (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView;
	 */
	public abstract UIView viewForZoomingInScrollView(UIScrollView scrollView);

	/**
	 * - (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view ;
	 */
	public abstract void scrollViewWillBeginZooming(UIScrollView scrollView, UIView view);

	/**
	 * - (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(float)scale;
	 */
	public abstract void scrollViewDidEndZooming(UIScrollView scrollView, UIView view, float scale);

	/**
	 * - (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView;
	 */
	public abstract boolean scrollViewShouldScrollToTop(UIScrollView scrollView);

	/**
	 * - (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView;
	 */
	public abstract void scrollViewDidScrollToTop(UIScrollView scrollView);
}
