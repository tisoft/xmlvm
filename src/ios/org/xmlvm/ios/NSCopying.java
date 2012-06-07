package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSCopying")
public interface NSCopying {

	/*
	 * Instance methods
	 */

	/**
	 * - (id)copyWithZone:(NSZone *)zone;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "copyWithZone", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSZone")
	})
	public abstract Object copyWithZone(NSZone zone);
}
