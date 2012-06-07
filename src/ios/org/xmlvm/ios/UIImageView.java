package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIImageView extends UIView {

	/*
	 * Constructors
	 */
	public UIImageView(CGRect frame) {
		super(frame);
	}

	/**
	 * - (id)initWithImage:(UIImage *)image;
	 */
	public UIImageView(UIImage image) {}

	/**
	 * - (id)initWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage ;
	 */
	public UIImageView(UIImage image, UIImage highlightedImage) {}

	/** Default constructor */
	public UIImageView() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,retain) UIImage *image;
	 */
	public UIImage getImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *image;
	 */
	public void setImage(UIImage image){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *highlightedImage ;
	 */
	public UIImage getHighlightedImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *highlightedImage ;
	 */
	public void setHighlightedImage(UIImage highlightedImage){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isUserInteractionEnabled) BOOL userInteractionEnabled;
	 */
	public boolean isUserInteractionEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isUserInteractionEnabled) BOOL userInteractionEnabled;
	 */
	public void setUserInteractionEnabled(boolean userInteractionEnabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isHighlighted) BOOL highlighted ;
	 */
	public boolean isHighlighted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isHighlighted) BOOL highlighted ;
	 */
	public void setHighlighted(boolean highlighted){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *animationImages;
	 */
	public List getAnimationImages(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *animationImages;
	 */
	public void setAnimationImages(List animationImages){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *highlightedAnimationImages ;
	 */
	public List getHighlightedAnimationImages(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *highlightedAnimationImages ;
	 */
	public void setHighlightedAnimationImages(List highlightedAnimationImages){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval animationDuration;
	 */
	public double getAnimationDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval animationDuration;
	 */
	public void setImageAnimationDuration(double animationDuration){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger animationRepeatCount;
	 */
	public int getAnimationRepeatCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger animationRepeatCount;
	 */
	public void setAnimationRepeatCount(int animationRepeatCount){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)startAnimating;
	 */
	public void startAnimating(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopAnimating;
	 */
	public void stopAnimating(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isAnimating;
	 */
	public boolean isAnimating(){
		throw new RuntimeException("Stub");
	}
}
