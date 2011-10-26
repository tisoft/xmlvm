package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIPrintInteractionControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (UIViewController *)printInteractionControllerParentViewController:(UIPrintInteractionController *)printInteractionController;
	 */
	public abstract UIViewController printInteractionControllerParentViewController(UIPrintInteractionController printInteractionController);

	/**
	 * - (UIPrintPaper *)printInteractionController:(UIPrintInteractionController *)printInteractionController choosePaper:(NSArray *)paperList;
	 */
	public abstract UIPrintPaper printInteractionController(UIPrintInteractionController printInteractionController, List paperList);

	/**
	 * - (void)printInteractionControllerWillPresentPrinterOptions:(UIPrintInteractionController *)printInteractionController;
	 */
	public abstract void printInteractionControllerWillPresentPrinterOptions(UIPrintInteractionController printInteractionController);

	/**
	 * - (void)printInteractionControllerDidPresentPrinterOptions:(UIPrintInteractionController *)printInteractionController;
	 */
	public abstract void printInteractionControllerDidPresentPrinterOptions(UIPrintInteractionController printInteractionController);

	/**
	 * - (void)printInteractionControllerWillDismissPrinterOptions:(UIPrintInteractionController *)printInteractionController;
	 */
	public abstract void printInteractionControllerWillDismissPrinterOptions(UIPrintInteractionController printInteractionController);

	/**
	 * - (void)printInteractionControllerDidDismissPrinterOptions:(UIPrintInteractionController *)printInteractionController;
	 */
	public abstract void printInteractionControllerDidDismissPrinterOptions(UIPrintInteractionController printInteractionController);

	/**
	 * - (void)printInteractionControllerWillStartJob:(UIPrintInteractionController *)printInteractionController;
	 */
	public abstract void printInteractionControllerWillStartJob(UIPrintInteractionController printInteractionController);

	/**
	 * - (void)printInteractionControllerDidFinishJob:(UIPrintInteractionController *)printInteractionController;
	 */
	public abstract void printInteractionControllerDidFinishJob(UIPrintInteractionController printInteractionController);
}
