package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIGestureRecognizerDelegate")
public interface UIGestureRecognizerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "gestureRecognizerShouldBegin", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIGestureRecognizer")
	})
	public abstract boolean gestureRecognizerShouldBegin(UIGestureRecognizer gestureRecognizer);

	/**
	 * - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "gestureRecognizer", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIGestureRecognizer"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIGestureRecognizer", name = "shouldRecognizeSimultaneouslyWithGestureRecognizer")
	})
	public abstract boolean shouldRecognizeSimultaneouslyWithGestureRecognizer(UIGestureRecognizer gestureRecognizer, UIGestureRecognizer otherGestureRecognizer);

	/**
	 * - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "gestureRecognizer", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIGestureRecognizer"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITouch", name = "shouldReceiveTouch")
	})
	public abstract boolean shouldReceiveTouch(UIGestureRecognizer gestureRecognizer, UITouch touch);
}
