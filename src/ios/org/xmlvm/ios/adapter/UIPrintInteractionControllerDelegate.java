package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIPrintInteractionControllerDelegate implements org.xmlvm.ios.UIPrintInteractionControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (UIViewController *)printInteractionControllerParentViewController:(UIPrintInteractionController *)printInteractionController;
	 */
	public UIViewController printInteractionControllerParentViewController(UIPrintInteractionController printInteractionController){
		return null;
	}
	/**
	 * - (UIPrintPaper *)printInteractionController:(UIPrintInteractionController *)printInteractionController choosePaper:(NSArray *)paperList;
	 */
	public UIPrintPaper printInteractionController(UIPrintInteractionController printInteractionController, List paperList){
		return null;
	}
	/**
	 * - (void)printInteractionControllerWillPresentPrinterOptions:(UIPrintInteractionController *)printInteractionController;
	 */
	public void printInteractionControllerWillPresentPrinterOptions(UIPrintInteractionController printInteractionController){};
	/**
	 * - (void)printInteractionControllerDidPresentPrinterOptions:(UIPrintInteractionController *)printInteractionController;
	 */
	public void printInteractionControllerDidPresentPrinterOptions(UIPrintInteractionController printInteractionController){};
	/**
	 * - (void)printInteractionControllerWillDismissPrinterOptions:(UIPrintInteractionController *)printInteractionController;
	 */
	public void printInteractionControllerWillDismissPrinterOptions(UIPrintInteractionController printInteractionController){};
	/**
	 * - (void)printInteractionControllerDidDismissPrinterOptions:(UIPrintInteractionController *)printInteractionController;
	 */
	public void printInteractionControllerDidDismissPrinterOptions(UIPrintInteractionController printInteractionController){};
	/**
	 * - (void)printInteractionControllerWillStartJob:(UIPrintInteractionController *)printInteractionController;
	 */
	public void printInteractionControllerWillStartJob(UIPrintInteractionController printInteractionController){};
	/**
	 * - (void)printInteractionControllerDidFinishJob:(UIPrintInteractionController *)printInteractionController;
	 */
	public void printInteractionControllerDidFinishJob(UIPrintInteractionController printInteractionController){};}
