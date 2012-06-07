package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSCacheDelegate")
public interface NSCacheDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)cache:(NSCache *)cache willEvictObject:(id)obj;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "cache", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSCache"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "willEvictObject")
	})
	public abstract void cache(NSCache cache, Object obj);
}
