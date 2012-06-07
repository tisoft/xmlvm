package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSMutableCopying")
public interface NSMutableCopying {

	/*
	 * Instance methods
	 */

	/**
	 * - (id)mutableCopyWithZone:(NSZone *)zone;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mutableCopyWithZone", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSZone")
	})
	public abstract Object mutableCopyWithZone(NSZone zone);
}
