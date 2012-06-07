package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSDecimalNumberBehaviors")
public interface NSDecimalNumberBehaviors {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSRoundingMode)roundingMode;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "roundingMode", params = {
	})
	public abstract int roundingMode();

	/**
	 * - (short)scale;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "scale", params = {
	})
	public abstract short scale();

	/**
	 * - (NSDecimalNumber *)exceptionDuringOperation:(SEL)operation error:(NSCalculationError)error leftOperand:(NSDecimalNumber *)leftOperand rightOperand:(NSDecimalNumber *)rightOperand;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "exceptionDuringOperation", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "SEL", isStruct = true),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "error"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSDecimalNumber", name = "leftOperand"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSDecimalNumber", name = "rightOperand")
	})
	public abstract NSDecimalNumber exceptionDuringOperation(SEL operation, int error, NSDecimalNumber leftOperand, NSDecimalNumber rightOperand);
}
