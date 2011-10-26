package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSDecimalNumberBehaviors {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSRoundingMode)roundingMode;
	 */
	public abstract int roundingMode();

	/**
	 * - (short)scale;
	 */
	public abstract short scale();

	/**
	 * - (NSDecimalNumber *)exceptionDuringOperation:(SEL)operation error:(NSCalculationError)error leftOperand:(NSDecimalNumber *)leftOperand rightOperand:(NSDecimalNumber *)rightOperand;
	 */
	public abstract NSDecimalNumber exceptionDuringOperation(SEL operation, int error, NSDecimalNumber leftOperand, NSDecimalNumber rightOperand);
}
