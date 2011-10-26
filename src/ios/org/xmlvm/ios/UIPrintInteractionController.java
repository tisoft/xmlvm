package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIPrintInteractionController extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (BOOL)isPrintingAvailable;
	 */
	public static boolean isPrintingAvailable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSSet *)printableUTIs;
	 */
	public static Set printableUTIs(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)canPrintURL:(NSURL *)url;
	 */
	public static boolean canPrintURL(NSURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)canPrintData:(NSData *)data;
	 */
	public static boolean canPrintData(NSData data){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIPrintInteractionController *)sharedPrintController;
	 */
	public static UIPrintInteractionController sharedPrintController(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	UIPrintInteractionController() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,retain) UIPrintInfo *printInfo;
	 */
	public UIPrintInfo getPrintInfo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIPrintInfo *printInfo;
	 */
	public void setPrintInfo(UIPrintInfo printInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UIPrintInteractionControllerDelegate> delegate;
	 */
	public UIPrintInteractionControllerDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UIPrintInteractionControllerDelegate> delegate;
	 */
	public void setDelegate(UIPrintInteractionControllerDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsPageRange;
	 */
	public boolean getShowsPageRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsPageRange;
	 */
	public void setShowsPageRange(boolean showsPageRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIPrintPaper *printPaper;
	 */
	public UIPrintPaper getPrintPaper(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIPrintPageRenderer *printPageRenderer;
	 */
	public UIPrintPageRenderer getPrintPageRenderer(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIPrintPageRenderer *printPageRenderer;
	 */
	public void setPrintPageRenderer(UIPrintPageRenderer printPageRenderer){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIPrintFormatter *printFormatter;
	 */
	public UIPrintFormatter getPrintFormatter(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIPrintFormatter *printFormatter;
	 */
	public void setPrintFormatter(UIPrintFormatter printFormatter){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) id printingItem;
	 */
	public Object getPrintingItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) id printingItem;
	 */
	public void setPrintingItem(Object printingItem){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *printingItems;
	 */
	public List getPrintingItems(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *printingItems;
	 */
	public void setPrintingItems(List printingItems){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)presentAnimated:(BOOL)animated completionHandler:(UIPrintInteractionCompletionHandler)completion;
	 */
	public boolean presentAnimated(boolean animated, Object completion){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)presentFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated completionHandler:(UIPrintInteractionCompletionHandler)completion;
	 */
	public boolean presentFromRect(CGRect rect, UIView view, boolean animated, Object completion){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)presentFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated completionHandler:(UIPrintInteractionCompletionHandler)completion;
	 */
	public boolean presentFromBarButtonItem(UIBarButtonItem item, boolean animated, Object completion){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)dismissAnimated:(BOOL)animated;
	 */
	public void dismissAnimated(boolean animated){
		throw new RuntimeException("Stub");
	}
}
