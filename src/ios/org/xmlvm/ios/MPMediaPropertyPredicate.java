package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MPMediaPropertyPredicate extends MPMediaPredicate {

	/*
	 * Static methods
	 */

	/**
	 * + (MPMediaPropertyPredicate *)predicateWithValue:(id)value forProperty:(NSString *)property;
	 */
	public static MPMediaPropertyPredicate predicateWithValue(Object value, String property){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MPMediaPropertyPredicate *)predicateWithValue:(id)value forProperty:(NSString *)property comparisonType:(MPMediaPredicateComparison)comparisonType;
	 */
	public static MPMediaPropertyPredicate predicateWithValue(Object value, String property, int comparisonType){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	MPMediaPropertyPredicate() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly, copy) NSString *property;
	 */
	public String getProperty(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, copy) id value;
	 */
	public Object getValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) MPMediaPredicateComparison comparisonType;
	 */
	public int getComparisonType(){
		throw new RuntimeException("Stub");
	}
}
