package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIAlertViewDelegate implements org.xmlvm.ios.UIAlertViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
	 */
	public void clickedButtonAtIndex(UIAlertView alertView, int buttonIndex){};
	/**
	 * - (void)alertViewCancel:(UIAlertView *)alertView;
	 */
	public void alertViewCancel(UIAlertView alertView){};
	/**
	 * - (void)willPresentAlertView:(UIAlertView *)alertView;
	 */
	public void willPresentAlertView(UIAlertView alertView){};
	/**
	 * - (void)didPresentAlertView:(UIAlertView *)alertView;
	 */
	public void didPresentAlertView(UIAlertView alertView){};
	/**
	 * - (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex;
	 */
	public void willDismissWithButtonIndex(UIAlertView alertView, int buttonIndex){};
	/**
	 * - (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex;
	 */
	public void didDismissWithButtonIndex(UIAlertView alertView, int buttonIndex){};}
