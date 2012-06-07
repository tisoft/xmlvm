package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIGestureRecognizerDelegate implements org.xmlvm.ios.UIGestureRecognizerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer;
	 */
	public boolean gestureRecognizerShouldBegin(UIGestureRecognizer gestureRecognizer){
		return false;
	}
	/**
	 * - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer;
	 */
	public boolean shouldRecognizeSimultaneouslyWithGestureRecognizer(UIGestureRecognizer gestureRecognizer, UIGestureRecognizer otherGestureRecognizer){
		return false;
	}
	/**
	 * - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch;
	 */
	public boolean shouldReceiveTouch(UIGestureRecognizer gestureRecognizer, UITouch touch){
		return false;
	}}
