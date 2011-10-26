package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSLocking {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)lock;
	 */
	public abstract void lock();

	/**
	 * - (void)unlock;
	 */
	public abstract void unlock();
}
