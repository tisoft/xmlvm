package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIAlertViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
	 */
	public abstract void clickedButtonAtIndex(UIAlertView alertView, int buttonIndex);

	/**
	 * - (void)alertViewCancel:(UIAlertView *)alertView;
	 */
	public abstract void alertViewCancel(UIAlertView alertView);

	/**
	 * - (void)willPresentAlertView:(UIAlertView *)alertView;
	 */
	public abstract void willPresentAlertView(UIAlertView alertView);

	/**
	 * - (void)didPresentAlertView:(UIAlertView *)alertView;
	 */
	public abstract void didPresentAlertView(UIAlertView alertView);

	/**
	 * - (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex;
	 */
	public abstract void willDismissWithButtonIndex(UIAlertView alertView, int buttonIndex);

	/**
	 * - (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex;
	 */
	public abstract void didDismissWithButtonIndex(UIAlertView alertView, int buttonIndex);
}
