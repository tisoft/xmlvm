package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UISegmentedControl extends UIControl {

	/*
	 * Constructors
	 */
	public UISegmentedControl(CGRect frame) {
		super(frame);
	}

	/**
	 * - (id)initWithItems:(NSArray *)items;
	 */
	public UISegmentedControl(List items) {}

	/** Default constructor */
	public UISegmentedControl() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) UISegmentedControlStyle segmentedControlStyle;
	 */
	public int getSegmentedControlStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UISegmentedControlStyle segmentedControlStyle;
	 */
	public void setSegmentedControlStyle(int segmentedControlStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isMomentary) BOOL momentary;
	 */
	public boolean isMomentary(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isMomentary) BOOL momentary;
	 */
	public void setMomentary(boolean momentary){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *tintColor;
	 */
	public UIColor getTintColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *tintColor;
	 */
	public void setTintColor(UIColor tintColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSUInteger numberOfSegments;
	 */
	public int getNumberOfSegments(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger selectedSegmentIndex;
	 */
	public int getSelectedSegmentIndex(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger selectedSegmentIndex;
	 */
	public void setSelectedSegmentIndex(int selectedSegmentIndex){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)insertSegmentWithTitle:(NSString *)title atIndex:(NSUInteger)segment animated:(BOOL)animated;
	 */
	public void insertSegmentWithTitle(String title, int segment, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertSegmentWithImage:(UIImage *)image atIndex:(NSUInteger)segment animated:(BOOL)animated;
	 */
	public void insertSegmentWithImage(UIImage image, int segment, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeSegmentAtIndex:(NSUInteger)segment animated:(BOOL)animated;
	 */
	public void removeSegmentAtIndex(int segment, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeAllSegments;
	 */
	public void removeAllSegments(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTitle:(NSString *)title forSegmentAtIndex:(NSUInteger)segment;
	 */
	public void setTitle(String title, int segment){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)titleForSegmentAtIndex:(NSUInteger)segment;
	 */
	public String titleForSegmentAtIndex(int segment){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setImage:(UIImage *)image forSegmentAtIndex:(NSUInteger)segment;
	 */
	public void setImage(UIImage image, int segment){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIImage *)imageForSegmentAtIndex:(NSUInteger)segment;
	 */
	public UIImage imageForSegmentAtIndex(int segment){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setWidth:(CGFloat)width forSegmentAtIndex:(NSUInteger)segment;
	 */
	public void setWidth(float width, int segment){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGFloat)widthForSegmentAtIndex:(NSUInteger)segment;
	 */
	public float widthForSegmentAtIndex(int segment){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setContentOffset:(CGSize)offset forSegmentAtIndex:(NSUInteger)segment;
	 */
	public void setContentOffset(CGSize offset, int segment){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)contentOffsetForSegmentAtIndex:(NSUInteger)segment;
	 */
	public CGSize contentOffsetForSegmentAtIndex(int segment){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setEnabled:(BOOL)enabled forSegmentAtIndex:(NSUInteger)segment;
	 */
	public void setEnabled(boolean enabled, int segment){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isEnabledForSegmentAtIndex:(NSUInteger)segment;
	 */
	public boolean isEnabledForSegmentAtIndex(int segment){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
