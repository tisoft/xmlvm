package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSLocking")
public interface NSLocking {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)lock;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "lock", params = {
	})
	public abstract void lock();

	/**
	 * - (void)unlock;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "unlock", params = {
	})
	public abstract void unlock();
}
