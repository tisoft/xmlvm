package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIPrintInteractionControllerDelegate")
public interface UIPrintInteractionControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (UIViewController *)printInteractionControllerParentViewController:(UIPrintInteractionController *)printInteractionController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "printInteractionControllerParentViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPrintInteractionController")
	})
	public abstract UIViewController printInteractionControllerParentViewController(UIPrintInteractionController printInteractionController);

	/**
	 * - (UIPrintPaper *)printInteractionController:(UIPrintInteractionController *)printInteractionController choosePaper:(NSArray *)paperList;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "printInteractionController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPrintInteractionController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "choosePaper")
	})
	public abstract UIPrintPaper printInteractionController(UIPrintInteractionController printInteractionController, List paperList);

	/**
	 * - (void)printInteractionControllerWillPresentPrinterOptions:(UIPrintInteractionController *)printInteractionController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "printInteractionControllerWillPresentPrinterOptions", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPrintInteractionController")
	})
	public abstract void printInteractionControllerWillPresentPrinterOptions(UIPrintInteractionController printInteractionController);

	/**
	 * - (void)printInteractionControllerDidPresentPrinterOptions:(UIPrintInteractionController *)printInteractionController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "printInteractionControllerDidPresentPrinterOptions", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPrintInteractionController")
	})
	public abstract void printInteractionControllerDidPresentPrinterOptions(UIPrintInteractionController printInteractionController);

	/**
	 * - (void)printInteractionControllerWillDismissPrinterOptions:(UIPrintInteractionController *)printInteractionController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "printInteractionControllerWillDismissPrinterOptions", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPrintInteractionController")
	})
	public abstract void printInteractionControllerWillDismissPrinterOptions(UIPrintInteractionController printInteractionController);

	/**
	 * - (void)printInteractionControllerDidDismissPrinterOptions:(UIPrintInteractionController *)printInteractionController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "printInteractionControllerDidDismissPrinterOptions", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPrintInteractionController")
	})
	public abstract void printInteractionControllerDidDismissPrinterOptions(UIPrintInteractionController printInteractionController);

	/**
	 * - (void)printInteractionControllerWillStartJob:(UIPrintInteractionController *)printInteractionController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "printInteractionControllerWillStartJob", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPrintInteractionController")
	})
	public abstract void printInteractionControllerWillStartJob(UIPrintInteractionController printInteractionController);

	/**
	 * - (void)printInteractionControllerDidFinishJob:(UIPrintInteractionController *)printInteractionController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "printInteractionControllerDidFinishJob", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPrintInteractionController")
	})
	public abstract void printInteractionControllerDidFinishJob(UIPrintInteractionController printInteractionController);
}
