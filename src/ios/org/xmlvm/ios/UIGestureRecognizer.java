package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIGestureRecognizer extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithTarget:(id)target action:(SEL)action;
	 */
	public UIGestureRecognizer(Object target, SEL action) {}

	/** Default constructor */
	public UIGestureRecognizer() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly) UIGestureRecognizerState state;
	 */
	public int getState(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id <UIGestureRecognizerDelegate> delegate;
	 */
	public UIGestureRecognizerDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id <UIGestureRecognizerDelegate> delegate;
	 */
	public void setDelegate(UIGestureRecognizerDelegate arg0){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isEnabled) BOOL enabled;
	 */
	public boolean isEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isEnabled) BOOL enabled;
	 */
	public void setEnabled(boolean enabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIView *view;
	 */
	public UIView getView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL cancelsTouchesInView;
	 */
	public boolean getCancelsTouchesInView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL cancelsTouchesInView;
	 */
	public void setCancelsTouchesInView(boolean cancelsTouchesInView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL delaysTouchesBegan;
	 */
	public boolean getDelaysTouchesBegan(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL delaysTouchesBegan;
	 */
	public void setDelaysTouchesBegan(boolean delaysTouchesBegan){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL delaysTouchesEnded;
	 */
	public boolean getDelaysTouchesEnded(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL delaysTouchesEnded;
	 */
	public void setDelaysTouchesEnded(boolean delaysTouchesEnded){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readwrite) UIGestureRecognizerState state;
	 */
	public void setState(int state){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)addTarget:(id)target action:(SEL)action;
	 */
	public void addTarget(Object target, SEL action){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeTarget:(id)target action:(SEL)action;
	 */
	public void removeTarget(Object target, SEL action){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)requireGestureRecognizerToFail:(UIGestureRecognizer *)otherGestureRecognizer;
	 */
	public void requireGestureRecognizerToFail(UIGestureRecognizer otherGestureRecognizer){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGPoint)locationInView:(UIView*)view;
	 */
	public CGPoint locationInView(UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)numberOfTouches;
	 */
	public int numberOfTouches(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGPoint)locationOfTouch:(NSUInteger)touchIndex inView:(UIView*)view;
	 */
	public CGPoint locationOfTouch(int touchIndex, UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)ignoreTouch:(UITouch*)touch forEvent:(UIEvent*)event;
	 */
	public void ignoreTouch(UITouch touch, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)reset;
	 */
	public void reset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canPreventGestureRecognizer:(UIGestureRecognizer *)preventedGestureRecognizer;
	 */
	public boolean canPreventGestureRecognizer(UIGestureRecognizer preventedGestureRecognizer){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canBePreventedByGestureRecognizer:(UIGestureRecognizer *)preventingGestureRecognizer;
	 */
	public boolean canBePreventedByGestureRecognizer(UIGestureRecognizer preventingGestureRecognizer){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
	 */
	public void touchesBegan(Set touches, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
	 */
	public void touchesMoved(Set touches, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
	 */
	public void touchesEnded(Set touches, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;
	 */
	public void touchesCancelled(Set touches, UIEvent event){
		throw new RuntimeException("Stub");
	}
}
