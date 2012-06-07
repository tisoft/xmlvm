package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UILocalizedIndexedCollation extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)currentCollation;
	 */
	public static UILocalizedIndexedCollation currentCollation(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public UILocalizedIndexedCollation() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSArray *sectionTitles;
	 */
	public List getSectionTitles(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *sectionIndexTitles;
	 */
	public List getSectionIndexTitles(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)sectionForSectionIndexTitleAtIndex:(NSInteger)indexTitleIndex;
	 */
	public int sectionForSectionIndexTitleAtIndex(int indexTitleIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)sectionForObject:(id)object collationStringSelector:(SEL)selector;
	 */
	public int sectionForObject(Object object, SEL selector){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)sortedArrayFromArray:(NSArray *)array collationStringSelector:(SEL)selector;
	 */
	public List sortedArrayFromArray(List array, SEL selector){
		throw new RuntimeException("Stub");
	}
}
