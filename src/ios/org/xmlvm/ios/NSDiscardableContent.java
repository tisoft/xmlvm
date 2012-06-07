package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSDiscardableContent")
public interface NSDiscardableContent {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)beginContentAccess;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "beginContentAccess", params = {
	})
	public abstract boolean beginContentAccess();

	/**
	 * - (void)endContentAccess;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "endContentAccess", params = {
	})
	public abstract void endContentAccess();

	/**
	 * - (void)discardContentIfPossible;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "discardContentIfPossible", params = {
	})
	public abstract void discardContentIfPossible();

	/**
	 * - (BOOL)isContentDiscarded;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "isContentDiscarded", params = {
	})
	public abstract boolean isContentDiscarded();
}
