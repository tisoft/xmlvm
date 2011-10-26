package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIGestureRecognizerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer;
	 */
	public abstract boolean gestureRecognizerShouldBegin(UIGestureRecognizer gestureRecognizer);

	/**
	 * - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer;
	 */
	public abstract boolean shouldRecognizeSimultaneouslyWithGestureRecognizer(UIGestureRecognizer gestureRecognizer, UIGestureRecognizer otherGestureRecognizer);

	/**
	 * - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch;
	 */
	public abstract boolean shouldReceiveTouch(UIGestureRecognizer gestureRecognizer, UITouch touch);
}
