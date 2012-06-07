package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIPrintFormatter extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public UIPrintFormatter() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly,assign) UIPrintPageRenderer *printPageRenderer;
	 */
	public UIPrintPageRenderer getPrintPageRenderer(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat maximumContentHeight;
	 */
	public float getMaximumContentHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat maximumContentHeight;
	 */
	public void setMaximumContentHeight(float maximumContentHeight){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat maximumContentWidth;
	 */
	public float getMaximumContentWidth(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat maximumContentWidth;
	 */
	public void setMaximumContentWidth(float maximumContentWidth){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIEdgeInsets contentInsets;
	 */
	public UIEdgeInsets getContentInsets(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIEdgeInsets contentInsets;
	 */
	public void setContentInsets(UIEdgeInsets contentInsets){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger startPage;
	 */
	public int getStartPage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger startPage;
	 */
	public void setStartPage(int startPage){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSInteger pageCount;
	 */
	public int getPageCount(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)removeFromPrintPageRenderer;
	 */
	public void removeFromPrintPageRenderer(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)rectForPageAtIndex:(NSInteger)pageIndex;
	 */
	public CGRect rectForPageAtIndex(int pageIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawInRect:(CGRect)rect forPageAtIndex:(NSInteger)pageIndex;
	 */
	public void drawInRect(CGRect rect, int pageIndex){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
