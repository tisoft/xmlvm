package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={UITouch.class})
@org.xmlvm.XMLVMDelegate
public class UIResponder extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public UIResponder() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly) NSUndoManager *undoManager ;
	 */
	public NSUndoManager getUndoManager(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, retain) UIView *inputView ;
	 */
	public UIView getInputView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, retain) UIView *inputAccessoryView ;
	 */
	public UIView getInputAccessoryView(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (UIResponder*)nextResponder;
	 */
	public UIResponder nextResponder(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canBecomeFirstResponder;
	 */
	public boolean canBecomeFirstResponder(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)becomeFirstResponder;
	 */
	public boolean becomeFirstResponder(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canResignFirstResponder;
	 */
	public boolean canResignFirstResponder(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)resignFirstResponder;
	 */
	public boolean resignFirstResponder(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isFirstResponder;
	 */
	public boolean isFirstResponder(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "touchesBegan", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSSet", convert = true),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIEvent", name = "withEvent")
	})
	public void touchesBegan(Set<UITouch> arg0, UIEvent arg1){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "touchesMoved", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSSet", convert = true),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIEvent", name = "withEvent")
	})
	public void touchesMoved(Set<UITouch> arg0, UIEvent arg1){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "touchesEnded", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSSet", convert = true),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIEvent", name = "withEvent")
	})
	public void touchesEnded(Set<UITouch> arg0, UIEvent arg1){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "touchesCancelled", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSSet", convert = true),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIEvent", name = "withEvent")
	})
	public void touchesCancelled(Set<UITouch> arg0, UIEvent arg1){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event ;
	 */
	public void motionBegan(int motion, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event ;
	 */
	public void motionEnded(int motion, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event ;
	 */
	public void motionCancelled(int motion, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)remoteControlReceivedWithEvent:(UIEvent *)event ;
	 */
	public void remoteControlReceivedWithEvent(UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canPerformAction:(SEL)action withSender:(id)sender ;
	 */
	public boolean canPerformAction(SEL action, Object sender){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)reloadInputViews ;
	 */
	public void reloadInputViews(){
		throw new RuntimeException("Stub");
	}
}
