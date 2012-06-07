package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSSortDescriptor extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)sortDescriptorWithKey:(NSString *)key ascending:(BOOL)ascending ;
	 */
	public static NSSortDescriptor sortDescriptorWithKey(String key, boolean ascending){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)sortDescriptorWithKey:(NSString *)key ascending:(BOOL)ascending selector:(SEL)selector ;
	 */
	public static NSSortDescriptor sortDescriptorWithKey(String key, boolean ascending, SEL selector){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)sortDescriptorWithKey:(NSString *)key ascending:(BOOL)ascending comparator:(NSComparator)cmptr ;
	 */
	public static NSSortDescriptor sortDescriptorWithKey(String key, boolean ascending, Object cmptr){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithKey:(NSString *)key ascending:(BOOL)ascending;
	 */
	public NSSortDescriptor(String key, boolean ascending) {}

	/**
	 * - (id)initWithKey:(NSString *)key ascending:(BOOL)ascending selector:(SEL)selector;
	 */
	public NSSortDescriptor(String key, boolean ascending, SEL selector) {}

	/**
	 * - (id)initWithKey:(NSString *)key ascending:(BOOL)ascending comparator:(NSComparator)cmptr ;
	 */
	public NSSortDescriptor(String key, boolean ascending, Object cmptr) {}

	/** Default constructor */
	public NSSortDescriptor() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)key;
	 */
	public String key(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)ascending;
	 */
	public boolean ascending(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (SEL)selector;
	 */
	public SEL selector(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparator)comparator ;
	 */
	public Object comparator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonResult)compareObject:(id)object1 toObject:(id)object2;
	 */
	public int compareObject(Object object1, Object object2){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)reversedSortDescriptor;
	 */
	public Object reversedSortDescriptor(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
