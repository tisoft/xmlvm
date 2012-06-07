package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class NSDiscardableContent implements org.xmlvm.ios.NSDiscardableContent {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)beginContentAccess;
	 */
	public boolean beginContentAccess(){
		return false;
	}
	/**
	 * - (void)endContentAccess;
	 */
	public void endContentAccess(){};
	/**
	 * - (void)discardContentIfPossible;
	 */
	public void discardContentIfPossible(){};
	/**
	 * - (BOOL)isContentDiscarded;
	 */
	public boolean isContentDiscarded(){
		return false;
	}}
