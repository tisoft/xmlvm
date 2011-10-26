package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UITextInputTokenizer {

	/*
	 * Instance methods
	 */

	/**
	 * - (UITextRange *)rangeEnclosingPosition:(UITextPosition *)position withGranularity:(UITextGranularity)granularity inDirection:(UITextDirection)direction;
	 */
	public abstract UITextRange rangeEnclosingPosition(UITextPosition position, int granularity, int direction);

	/**
	 * - (BOOL)isPosition:(UITextPosition *)position atBoundary:(UITextGranularity)granularity inDirection:(UITextDirection)direction;
	 */
	public abstract boolean isPositionAtBoundary(UITextPosition position, int granularity, int direction);

	/**
	 * - (UITextPosition *)positionFromPosition:(UITextPosition *)position toBoundary:(UITextGranularity)granularity inDirection:(UITextDirection)direction;
	 */
	public abstract UITextPosition positionFromPosition(UITextPosition position, int granularity, int direction);

	/**
	 * - (BOOL)isPosition:(UITextPosition *)position withinTextUnit:(UITextGranularity)granularity inDirection:(UITextDirection)direction;
	 */
	public abstract boolean isPositionWithinTextUnit(UITextPosition position, int granularity, int direction);
}
