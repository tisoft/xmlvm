package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ALAssetsGroup extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	ALAssetsGroup() {}

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
	 * - (CGImageRef)posterImage;
	 */
	public CGImage posterImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setAssetsFilter:(ALAssetsFilter *)filter;
	 */
	public void setAssetsFilter(ALAssetsFilter filter){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)numberOfAssets;
	 */
	public int numberOfAssets(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateAssetsUsingBlock:(ALAssetsGroupEnumerationResultsBlock)enumerationBlock;
	 */
	public void enumerateAssetsUsingBlock(Object enumerationBlock){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateAssetsWithOptions:(NSEnumerationOptions)options usingBlock:(ALAssetsGroupEnumerationResultsBlock)enumerationBlock;
	 */
	public void enumerateAssetsWithOptions(int options, Object enumerationBlock){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateAssetsAtIndexes:(NSIndexSet *)indexSet options:(NSEnumerationOptions)options usingBlock:(ALAssetsGroupEnumerationResultsBlock)enumerationBlock;
	 */
	public void enumerateAssetsAtIndexes(NSIndexSet indexSet, int options, Object enumerationBlock){
		throw new RuntimeException("Stub");
	}
}
