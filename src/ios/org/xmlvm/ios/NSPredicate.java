package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSPredicate extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSPredicate *)predicateWithFormat:(NSString *)predicateFormat argumentArray:(NSArray *)arguments;
	 */
	public static NSPredicate predicateWithFormat(String predicateFormat, List arguments){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSPredicate *)predicateWithFormat:(NSString *)predicateFormat, ...;
	 */
	public static NSPredicate predicateWithFormat(String... predicateFormat){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSPredicate *)predicateWithFormat:(NSString *)predicateFormat arguments:(va_list)argList;
	 */
	public static NSPredicate predicateWithFormat(String predicateFormat, byte[] argList){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSPredicate *)predicateWithValue:(BOOL)value;
	 */
	public static NSPredicate predicateWithValue(boolean value){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSPredicate*)predicateWithBlock:(BOOL (^)(id evaluatedObject, NSDictionary *bindings))block ;
	 */
	public static NSPredicate predicateWithBlock(Object block){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSPredicate() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)predicateFormat;
	 */
	public String predicateFormat(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSPredicate *)predicateWithSubstitutionVariables:(NSDictionary *)variables;
	 */
	public NSPredicate predicateWithSubstitutionVariables(Map variables){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)evaluateWithObject:(id)object;
	 */
	public boolean evaluateWithObject(Object object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)evaluateWithObject:(id)object substitutionVariables:(NSDictionary *)bindings ;
	 */
	public boolean evaluateWithObject(Object object, Map bindings){
		throw new RuntimeException("Stub");
	}
}
