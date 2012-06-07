package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UITextInputTokenizer")
public interface UITextInputTokenizer {

	/*
	 * Instance methods
	 */

	/**
	 * - (UITextRange *)rangeEnclosingPosition:(UITextPosition *)position withGranularity:(UITextGranularity)granularity inDirection:(UITextDirection)direction;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "rangeEnclosingPosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "withGranularity"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "inDirection")
	})
	public abstract UITextRange rangeEnclosingPosition(UITextPosition position, int granularity, int direction);

	/**
	 * - (BOOL)isPosition:(UITextPosition *)position atBoundary:(UITextGranularity)granularity inDirection:(UITextDirection)direction;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "isPosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "atBoundary"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "inDirection")
	})
	public abstract boolean isPositionAtBoundary(UITextPosition position, int granularity, int direction);

	/**
	 * - (UITextPosition *)positionFromPosition:(UITextPosition *)position toBoundary:(UITextGranularity)granularity inDirection:(UITextDirection)direction;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "positionFromPosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "toBoundary"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "inDirection")
	})
	public abstract UITextPosition positionFromPosition(UITextPosition position, int granularity, int direction);

	/**
	 * - (BOOL)isPosition:(UITextPosition *)position withinTextUnit:(UITextGranularity)granularity inDirection:(UITextDirection)direction;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "isPosition", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextPosition"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "withinTextUnit"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "inDirection")
	})
	public abstract boolean isPositionWithinTextUnit(UITextPosition position, int granularity, int direction);
}
