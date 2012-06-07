package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIControl extends UIView {

	/*
	 * Constructors
	 */
	public UIControl(CGRect frame) {
		super(frame);
	}

	/** Default constructor */
	public UIControl() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,getter=isEnabled) BOOL enabled;
	 */
	public boolean isEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isEnabled) BOOL enabled;
	 */
	public void setEnabled(boolean enabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isSelected) BOOL selected;
	 */
	public boolean isSelected(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isSelected) BOOL selected;
	 */
	public void setSelected(boolean selected){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isHighlighted) BOOL highlighted;
	 */
	public boolean isHighlighted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isHighlighted) BOOL highlighted;
	 */
	public void setHighlighted(boolean highlighted){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIControlContentVerticalAlignment contentVerticalAlignment;
	 */
	public int getContentVerticalAlignment(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIControlContentVerticalAlignment contentVerticalAlignment;
	 */
	public void setContentVerticalAlignment(int contentVerticalAlignment){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIControlContentHorizontalAlignment contentHorizontalAlignment;
	 */
	public int getContentHorizontalAlignment(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIControlContentHorizontalAlignment contentHorizontalAlignment;
	 */
	public void setContentHorizontalAlignment(int contentHorizontalAlignment){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIControlState state;
	 */
	public int getState(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isTracking) BOOL tracking;
	 */
	public boolean isTracking(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isTouchInside) BOOL touchInside;
	 */
	public boolean isTouchInside(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event;
	 */
	public boolean beginTrackingWithTouch(UITouch touch, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event;
	 */
	public boolean continueTrackingWithTouch(UITouch touch, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event;
	 */
	public void endTrackingWithTouch(UITouch touch, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelTrackingWithEvent:(UIEvent *)event;
	 */
	public void cancelTrackingWithEvent(UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
	 */
	public void addTarget(UIControlDelegate arg0, int arg1){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
	 */
	public void removeTarget(Object target, SEL action, int controlEvents){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)allTargets;
	 */
	public Set allTargets(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIControlEvents)allControlEvents;
	 */
	public int allControlEvents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)actionsForTarget:(id)target forControlEvent:(UIControlEvents)controlEvent;
	 */
	public List actionsForTarget(Object target, int controlEvent){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event;
	 */
	public void sendAction(SEL action, Object target, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)sendActionsForControlEvents:(UIControlEvents)controlEvents;
	 */
	public void sendActionsForControlEvents(int controlEvents){
		throw new RuntimeException("Stub");
	}
}
