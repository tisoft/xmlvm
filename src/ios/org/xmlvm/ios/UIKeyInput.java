package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIKeyInput {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)hasText;
	 */
	public abstract boolean hasText();

	/**
	 * - (void)insertText:(NSString *)text;
	 */
	public abstract void insertText(String text);

	/**
	 * - (void)deleteBackward;
	 */
	public abstract void deleteBackward();
}
