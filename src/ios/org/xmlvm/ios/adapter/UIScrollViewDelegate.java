package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIScrollViewDelegate implements org.xmlvm.ios.UIScrollViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)scrollViewDidScroll:(UIScrollView *)scrollView;
	 */
	public void scrollViewDidScroll(UIScrollView scrollView){};
	/**
	 * - (void)scrollViewDidZoom:(UIScrollView *)scrollView ;
	 */
	public void scrollViewDidZoom(UIScrollView scrollView){};
	/**
	 * - (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView;
	 */
	public void scrollViewWillBeginDragging(UIScrollView scrollView){};
	/**
	 * - (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate;
	 */
	public void scrollViewDidEndDragging(UIScrollView scrollView, boolean decelerate){};
	/**
	 * - (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView;
	 */
	public void scrollViewWillBeginDecelerating(UIScrollView scrollView){};
	/**
	 * - (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView;
	 */
	public void scrollViewDidEndDecelerating(UIScrollView scrollView){};
	/**
	 * - (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView;
	 */
	public void scrollViewDidEndScrollingAnimation(UIScrollView scrollView){};
	/**
	 * - (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView;
	 */
	public UIView viewForZoomingInScrollView(UIScrollView scrollView){
		return null;
	}
	/**
	 * - (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view ;
	 */
	public void scrollViewWillBeginZooming(UIScrollView scrollView, UIView view){};
	/**
	 * - (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(float)scale;
	 */
	public void scrollViewDidEndZooming(UIScrollView scrollView, UIView view, float scale){};
	/**
	 * - (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView;
	 */
	public boolean scrollViewShouldScrollToTop(UIScrollView scrollView){
		return false;
	}
	/**
	 * - (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView;
	 */
	public void scrollViewDidScrollToTop(UIScrollView scrollView){};}
