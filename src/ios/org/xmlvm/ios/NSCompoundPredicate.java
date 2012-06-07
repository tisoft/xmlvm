package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSCompoundPredicate extends NSPredicate {

	/*
	 * Static methods
	 */

	/**
	 * + (NSPredicate *)andPredicateWithSubpredicates:(NSArray *)subpredicates;
	 */
	public static NSPredicate andPredicateWithSubpredicates(List subpredicates){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSPredicate *)orPredicateWithSubpredicates:(NSArray *)subpredicates;
	 */
	public static NSPredicate orPredicateWithSubpredicates(List subpredicates){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSPredicate *)notPredicateWithSubpredicate:(NSPredicate *)predicate;
	 */
	public static NSPredicate notPredicateWithSubpredicate(NSPredicate predicate){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithType:(NSCompoundPredicateType)type subpredicates:(NSArray *)subpredicates;
	 */
	public NSCompoundPredicate(int type, List subpredicates) {}

	/** Default constructor */
	public NSCompoundPredicate() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSCompoundPredicateType)compoundPredicateType;
	 */
	public int compoundPredicateType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)subpredicates;
	 */
	public List subpredicates(){
		throw new RuntimeException("Stub");
	}
}
