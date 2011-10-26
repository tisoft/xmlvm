package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSValueTransformer extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (void)setValueTransformer:(NSValueTransformer *)transformer forName:(NSString *)name;
	 */
	public static void setValueTransformer(NSValueTransformer transformer, String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSValueTransformer *)valueTransformerForName:(NSString *)name;
	 */
	public static NSValueTransformer valueTransformerForName(String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)valueTransformerNames;
	 */
	public static List valueTransformerNames(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (Class)transformedValueClass;
	 */
	public static Class transformedValueClass(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)allowsReverseTransformation;
	 */
	public static boolean allowsReverseTransformation(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSValueTransformer() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (id)transformedValue:(id)value;
	 */
	public Object transformedValue(Object value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)reverseTransformedValue:(id)value;
	 */
	public Object reverseTransformedValue(Object value){
		throw new RuntimeException("Stub");
	}
}
