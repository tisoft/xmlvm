package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSDecimal {

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSDecimal() {}

	/*
	 * Instance methods
	 */

	/**
	 * BOOL NSDecimalIsNotANumber(const NSDecimal *dcm);
	 */
	public boolean isNotANumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void NSDecimalCopy(NSDecimal *destination, const NSDecimal *source);
	 */
	public void copy(Reference<NSDecimal> source){
		throw new RuntimeException("Stub");
	}

	/**
	 * void NSDecimalCompact(NSDecimal *number);
	 */
	public void compact(){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSComparisonResult NSDecimalCompare(const NSDecimal *leftOperand, const NSDecimal *rightOperand);
	 */
	public int compare(Reference<NSDecimal> rightOperand){
		throw new RuntimeException("Stub");
	}

	/**
	 * void NSDecimalRound(NSDecimal *result, const NSDecimal *number, NSInteger scale, NSRoundingMode roundingMode);
	 */
	public void round(Reference<NSDecimal> number, int scale, int roundingMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSCalculationError NSDecimalNormalize(NSDecimal *number1, NSDecimal *number2, NSRoundingMode roundingMode);
	 */
	public int normalize(Reference<NSDecimal> number2, int roundingMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSCalculationError NSDecimalAdd(NSDecimal *result, const NSDecimal *leftOperand, const NSDecimal *rightOperand, NSRoundingMode roundingMode);
	 */
	public int add(Reference<NSDecimal> leftOperand, Reference<NSDecimal> rightOperand, int roundingMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSCalculationError NSDecimalSubtract(NSDecimal *result, const NSDecimal *leftOperand, const NSDecimal *rightOperand, NSRoundingMode roundingMode);
	 */
	public int subtract(Reference<NSDecimal> leftOperand, Reference<NSDecimal> rightOperand, int roundingMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSCalculationError NSDecimalMultiply(NSDecimal *result, const NSDecimal *leftOperand, const NSDecimal *rightOperand, NSRoundingMode roundingMode);
	 */
	public int multiply(Reference<NSDecimal> leftOperand, Reference<NSDecimal> rightOperand, int roundingMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSCalculationError NSDecimalDivide(NSDecimal *result, const NSDecimal *leftOperand, const NSDecimal *rightOperand, NSRoundingMode roundingMode);
	 */
	public int divide(Reference<NSDecimal> leftOperand, Reference<NSDecimal> rightOperand, int roundingMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSCalculationError NSDecimalPower(NSDecimal *result, const NSDecimal *number, NSUInteger power, NSRoundingMode roundingMode);
	 */
	public int power(Reference<NSDecimal> number, int power, int roundingMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSCalculationError NSDecimalMultiplyByPowerOf10(NSDecimal *result, const NSDecimal *number, short power, NSRoundingMode roundingMode);
	 */
	public int multiplyByPowerOf10(Reference<NSDecimal> number, short power, int roundingMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * NSString *NSDecimalString(const NSDecimal *dcm, id locale);
	 */
	public String string(Object locale){
		throw new RuntimeException("Stub");
	}
}
