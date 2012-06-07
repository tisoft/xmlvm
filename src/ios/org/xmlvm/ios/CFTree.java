package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFTree {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFTreeGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFTreeRef CFTreeCreate(CFAllocatorRef allocator, const CFTreeContext *context);
	 */
	public CFTree(CFAllocator allocator, Reference<CFTreeContext> context) {}

	/** Default constructor */
	public CFTree() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFTreeRef CFTreeGetParent(CFTreeRef tree);
	 */
	public CFTree getParent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTreeRef CFTreeGetNextSibling(CFTreeRef tree);
	 */
	public CFTree getNextSibling(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTreeRef CFTreeGetFirstChild(CFTreeRef tree);
	 */
	public CFTree getFirstChild(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFTreeGetContext(CFTreeRef tree, CFTreeContext *context);
	 */
	public void getContext(Reference<CFTreeContext> context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFTreeGetChildCount(CFTreeRef tree);
	 */
	public long getChildCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTreeRef CFTreeGetChildAtIndex(CFTreeRef tree, CFIndex idx);
	 */
	public CFTree getChildAtIndex(long idx){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFTreeGetChildren(CFTreeRef tree, CFTreeRef *children);
	 */
	public void getChildren(Reference<CFTree> children){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFTreeApplyFunctionToChildren(CFTreeRef tree, CFTreeApplierFunction applier, void *context);
	 */
	public void applyFunctionToChildren(Object applier, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTreeRef CFTreeFindRoot(CFTreeRef tree);
	 */
	public CFTree findRoot(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFTreeSetContext(CFTreeRef tree, const CFTreeContext *context);
	 */
	public void setContext(Reference<CFTreeContext> context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFTreePrependChild(CFTreeRef tree, CFTreeRef newChild);
	 */
	public void prependChild(CFTree newChild){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFTreeAppendChild(CFTreeRef tree, CFTreeRef newChild);
	 */
	public void appendChild(CFTree newChild){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFTreeInsertSibling(CFTreeRef tree, CFTreeRef newSibling);
	 */
	public void insertSibling(CFTree newSibling){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFTreeRemove(CFTreeRef tree);
	 */
	public void remove(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFTreeRemoveAllChildren(CFTreeRef tree);
	 */
	public void removeAllChildren(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFTreeSortChildren(CFTreeRef tree, CFComparatorFunction comparator, void *context);
	 */
	public void sortChildren(Object comparator, byte[] context){
		throw new RuntimeException("Stub");
	}
}
