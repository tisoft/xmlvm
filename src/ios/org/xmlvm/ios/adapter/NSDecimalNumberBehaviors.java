package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class NSDecimalNumberBehaviors implements org.xmlvm.ios.NSDecimalNumberBehaviors {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSRoundingMode)roundingMode;
	 */
	public int roundingMode(){
		return 0;
	}
	/**
	 * - (short)scale;
	 */
	public short scale(){
		return 0;
	}
	/**
	 * - (NSDecimalNumber *)exceptionDuringOperation:(SEL)operation error:(NSCalculationError)error leftOperand:(NSDecimalNumber *)leftOperand rightOperand:(NSDecimalNumber *)rightOperand;
	 */
	public NSDecimalNumber exceptionDuringOperation(SEL operation, int error, NSDecimalNumber leftOperand, NSDecimalNumber rightOperand){
		return null;
	}}
