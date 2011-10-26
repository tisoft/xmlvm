package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSComparisonPredicate extends NSPredicate {

	/*
	 * Static methods
	 */

	/**
	 * + (NSPredicate *)predicateWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs modifier:(NSComparisonPredicateModifier)modifier type:(NSPredicateOperatorType)type options:(NSUInteger)options;
	 */
	public static NSPredicate predicateWithLeftExpression(NSExpression lhs, NSExpression rhs, int modifier, int type, int options){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSPredicate *)predicateWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs customSelector:(SEL)selector;
	 */
	public static NSPredicate predicateWithLeftExpression(NSExpression lhs, NSExpression rhs, SEL selector){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs modifier:(NSComparisonPredicateModifier)modifier type:(NSPredicateOperatorType)type options:(NSUInteger)options;
	 */
	public NSComparisonPredicate(NSExpression lhs, NSExpression rhs, int modifier, int type, int options) {}

	/**
	 * - (id)initWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs customSelector:(SEL)selector;
	 */
	public NSComparisonPredicate(NSExpression lhs, NSExpression rhs, SEL selector) {}

	/** Default constructor */
	NSComparisonPredicate() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSPredicateOperatorType)predicateOperatorType;
	 */
	public int predicateOperatorType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonPredicateModifier)comparisonPredicateModifier;
	 */
	public int comparisonPredicateModifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSExpression *)leftExpression;
	 */
	public NSExpression leftExpression(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSExpression *)rightExpression;
	 */
	public NSExpression rightExpression(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (SEL)customSelector;
	 */
	public SEL customSelector(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)options;
	 */
	public int options(){
		throw new RuntimeException("Stub");
	}
}
