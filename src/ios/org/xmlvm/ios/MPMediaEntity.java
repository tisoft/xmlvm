package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MPMediaEntity extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (BOOL)canFilterByProperty:(NSString *)property;
	 */
	public static boolean canFilterByProperty(String property){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	MPMediaEntity() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (id)valueForProperty:(NSString *)property;
	 */
	public Object valueForProperty(String property){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateValuesForProperties:(NSSet *)properties usingBlock:(void (^)(NSString *property, id value, BOOL *stop))block ;
	 */
	public void enumerateValuesForProperties(Set properties, Object block){
		throw new RuntimeException("Stub");
	}
}
