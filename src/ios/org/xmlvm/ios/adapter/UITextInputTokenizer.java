package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UITextInputTokenizer implements org.xmlvm.ios.UITextInputTokenizer {

	/*
	 * Instance methods
	 */

	/**
	 * - (UITextRange *)rangeEnclosingPosition:(UITextPosition *)position withGranularity:(UITextGranularity)granularity inDirection:(UITextDirection)direction;
	 */
	public UITextRange rangeEnclosingPosition(UITextPosition position, int granularity, int direction){
		return null;
	}
	/**
	 * - (BOOL)isPosition:(UITextPosition *)position atBoundary:(UITextGranularity)granularity inDirection:(UITextDirection)direction;
	 */
	public boolean isPositionAtBoundary(UITextPosition position, int granularity, int direction){
		return false;
	}
	/**
	 * - (UITextPosition *)positionFromPosition:(UITextPosition *)position toBoundary:(UITextGranularity)granularity inDirection:(UITextDirection)direction;
	 */
	public UITextPosition positionFromPosition(UITextPosition position, int granularity, int direction){
		return null;
	}
	/**
	 * - (BOOL)isPosition:(UITextPosition *)position withinTextUnit:(UITextGranularity)granularity inDirection:(UITextDirection)direction;
	 */
	public boolean isPositionWithinTextUnit(UITextPosition position, int granularity, int direction){
		return false;
	}}
