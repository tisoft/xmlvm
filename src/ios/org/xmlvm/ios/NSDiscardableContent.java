package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSDiscardableContent {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)beginContentAccess;
	 */
	public abstract boolean beginContentAccess();

	/**
	 * - (void)endContentAccess;
	 */
	public abstract void endContentAccess();

	/**
	 * - (void)discardContentIfPossible;
	 */
	public abstract void discardContentIfPossible();

	/**
	 * - (BOOL)isContentDiscarded;
	 */
	public abstract boolean isContentDiscarded();
}
