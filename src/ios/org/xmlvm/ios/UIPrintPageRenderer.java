package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIPrintPageRenderer extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	UIPrintPageRenderer() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) CGFloat headerHeight;
	 */
	public float getHeaderHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat headerHeight;
	 */
	public void setHeaderHeight(float headerHeight){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat footerHeight;
	 */
	public float getFooterHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat footerHeight;
	 */
	public void setFooterHeight(float footerHeight){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGRect paperRect;
	 */
	public CGRect getPaperRect(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGRect printableRect;
	 */
	public CGRect getPrintableRect(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *printFormatters;
	 */
	public List getPrintFormatters(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *printFormatters;
	 */
	public void setPrintFormatters(List printFormatters){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSArray *)printFormattersForPageAtIndex:(NSInteger)pageIndex;
	 */
	public List printFormattersForPageAtIndex(int pageIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addPrintFormatter:(UIPrintFormatter *)formatter startingAtPageAtIndex:(NSInteger)pageIndex;
	 */
	public void addPrintFormatter(UIPrintFormatter formatter, int pageIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)numberOfPages;
	 */
	public int numberOfPages(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)prepareForDrawingPages:(NSRange)range;
	 */
	public void prepareForDrawingPages(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawPageAtIndex:(NSInteger)pageIndex inRect:(CGRect)printableRect;
	 */
	public void drawPageAtIndex(int pageIndex, CGRect printableRect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawPrintFormatter:(UIPrintFormatter *)printFormatter forPageAtIndex:(NSInteger)pageIndex;
	 */
	public void drawPrintFormatter(UIPrintFormatter printFormatter, int pageIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawHeaderForPageAtIndex:(NSInteger)pageIndex inRect:(CGRect)headerRect;
	 */
	public void drawHeaderForPageAtIndex(int pageIndex, CGRect headerRect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawContentForPageAtIndex:(NSInteger)pageIndex inRect:(CGRect)contentRect;
	 */
	public void drawContentForPageAtIndex(int pageIndex, CGRect contentRect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawFooterForPageAtIndex:(NSInteger)pageIndex inRect:(CGRect)footerRect;
	 */
	public void drawFooterForPageAtIndex(int pageIndex, CGRect footerRect){
		throw new RuntimeException("Stub");
	}
}
