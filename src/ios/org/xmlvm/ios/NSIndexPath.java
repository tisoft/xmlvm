package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSIndexPath extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)indexPathWithIndex:(NSUInteger)index;
	 */
	public static NSIndexPath indexPathWithIndex(int index){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)indexPathWithIndexes:(NSUInteger *)indexes length:(NSUInteger)length;
	 */
	public static NSIndexPath indexPathWithIndexes(int[] indexes, int length){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSIndexPath *)indexPathForRow:(NSUInteger)row inSection:(NSUInteger)section;
	 */
	public static NSIndexPath indexPathForRow(int row, int section){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithIndex:(NSUInteger)index;
	 */
	public NSIndexPath(int index) {}

	/**
	 * - (id)initWithIndexes:(NSUInteger *)indexes length:(NSUInteger)length;
	 */
	public NSIndexPath(int[] indexes, int length) {}

	/** Default constructor */
	public NSIndexPath() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly) NSUInteger section;
	 */
	public int getSection(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSUInteger row;
	 */
	public int getRow(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSIndexPath *)indexPathByAddingIndex:(NSUInteger)index;
	 */
	public NSIndexPath indexPathByAddingIndex(int index){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSIndexPath *)indexPathByRemovingLastIndex;
	 */
	public NSIndexPath indexPathByRemovingLastIndex(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexAtPosition:(NSUInteger)position;
	 */
	public int indexAtPosition(int position){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)length;
	 */
	public int length(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getIndexes:(NSUInteger *)indexes;
	 */
	public void getIndexes(int[] indexes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSComparisonResult)compare:(NSIndexPath *)otherObject;
	 */
	public int compare(NSIndexPath otherObject){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
