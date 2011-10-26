package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIScrollView extends UIView {

	/*
	 * Constructors
	 */

	/** Default constructor */
	UIScrollView() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) CGPoint contentOffset;
	 */
	public CGPoint getContentOffset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGPoint contentOffset;
	 */
	public void setContentOffset(CGPoint contentOffset){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGSize contentSize;
	 */
	public CGSize getContentSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGSize contentSize;
	 */
	public void setContentSize(CGSize contentSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIEdgeInsets contentInset;
	 */
	public UIEdgeInsets getContentInset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIEdgeInsets contentInset;
	 */
	public void setContentInset(UIEdgeInsets contentInset){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UIScrollViewDelegate> delegate;
	 */
	public UIScrollViewDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UIScrollViewDelegate> delegate;
	 */
	public void setDelegate(UIScrollViewDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isDirectionalLockEnabled) BOOL directionalLockEnabled;
	 */
	public boolean isDirectionalLockEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isDirectionalLockEnabled) BOOL directionalLockEnabled;
	 */
	public void setDirectionalLockEnabled(boolean directionalLockEnabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL bounces;
	 */
	public boolean getBounces(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL bounces;
	 */
	public void setBounces(boolean bounces){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL alwaysBounceVertical;
	 */
	public boolean getAlwaysBounceVertical(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL alwaysBounceVertical;
	 */
	public void setAlwaysBounceVertical(boolean alwaysBounceVertical){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL alwaysBounceHorizontal;
	 */
	public boolean getAlwaysBounceHorizontal(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL alwaysBounceHorizontal;
	 */
	public void setAlwaysBounceHorizontal(boolean alwaysBounceHorizontal){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isPagingEnabled) BOOL pagingEnabled;
	 */
	public boolean isPagingEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isPagingEnabled) BOOL pagingEnabled;
	 */
	public void setPagingEnabled(boolean pagingEnabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isScrollEnabled) BOOL scrollEnabled;
	 */
	public boolean isScrollEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isScrollEnabled) BOOL scrollEnabled;
	 */
	public void setScrollEnabled(boolean scrollEnabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsHorizontalScrollIndicator;
	 */
	public boolean getShowsHorizontalScrollIndicator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsHorizontalScrollIndicator;
	 */
	public void setShowsHorizontalScrollIndicator(boolean showsHorizontalScrollIndicator){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsVerticalScrollIndicator;
	 */
	public boolean getShowsVerticalScrollIndicator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsVerticalScrollIndicator;
	 */
	public void setShowsVerticalScrollIndicator(boolean showsVerticalScrollIndicator){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIEdgeInsets scrollIndicatorInsets;
	 */
	public UIEdgeInsets getScrollIndicatorInsets(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIEdgeInsets scrollIndicatorInsets;
	 */
	public void setScrollIndicatorInsets(UIEdgeInsets scrollIndicatorInsets){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIScrollViewIndicatorStyle indicatorStyle;
	 */
	public int getIndicatorStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIScrollViewIndicatorStyle indicatorStyle;
	 */
	public void setIndicatorStyle(int indicatorStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float decelerationRate ;
	 */
	public float getDecelerationRate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float decelerationRate ;
	 */
	public void setDecelerationRate(float decelerationRate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isTracking) BOOL tracking;
	 */
	public boolean isTracking(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isDragging) BOOL dragging;
	 */
	public boolean isDragging(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isDecelerating) BOOL decelerating;
	 */
	public boolean isDecelerating(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL delaysContentTouches;
	 */
	public boolean getDelaysContentTouches(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL delaysContentTouches;
	 */
	public void setDelaysContentTouches(boolean delaysContentTouches){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL canCancelContentTouches;
	 */
	public boolean getCanCancelContentTouches(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL canCancelContentTouches;
	 */
	public void setCanCancelContentTouches(boolean canCancelContentTouches){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float minimumZoomScale;
	 */
	public float getMinimumZoomScale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float minimumZoomScale;
	 */
	public void setMinimumZoomScale(float minimumZoomScale){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float maximumZoomScale;
	 */
	public float getMaximumZoomScale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float maximumZoomScale;
	 */
	public void setMaximumZoomScale(float maximumZoomScale){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float zoomScale ;
	 */
	public float getZoomScale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float zoomScale ;
	 */
	public void setZoomScale(float zoomScale){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL bouncesZoom;
	 */
	public boolean getBouncesZoom(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL bouncesZoom;
	 */
	public void setBouncesZoom(boolean bouncesZoom){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isZooming) BOOL zooming;
	 */
	public boolean isZooming(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isZoomBouncing) BOOL zoomBouncing;
	 */
	public boolean isZoomBouncing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL scrollsToTop;
	 */
	public boolean getScrollsToTop(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL scrollsToTop;
	 */
	public void setScrollsToTop(boolean scrollsToTop){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated;
	 */
	public void setContentOffset(CGPoint contentOffset, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)scrollRectToVisible:(CGRect)rect animated:(BOOL)animated;
	 */
	public void scrollRectToVisible(CGRect rect, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)flashScrollIndicators;
	 */
	public void flashScrollIndicators(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)touchesShouldBegin:(NSSet *)touches withEvent:(UIEvent *)event inContentView:(UIView *)view;
	 */
	public boolean touchesShouldBegin(Set touches, UIEvent event, UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)touchesShouldCancelInContentView:(UIView *)view;
	 */
	public boolean touchesShouldCancelInContentView(UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setZoomScale:(float)scale animated:(BOOL)animated ;
	 */
	public void setZoomScale(float scale, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)zoomToRect:(CGRect)rect animated:(BOOL)animated ;
	 */
	public void zoomToRect(CGRect rect, boolean animated){
		throw new RuntimeException("Stub");
	}
}
