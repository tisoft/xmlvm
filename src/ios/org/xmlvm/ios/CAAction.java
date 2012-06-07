package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={NSDictionary.class})
@org.xmlvm.XMLVMDelegate(protocolType = "CAAction")
public interface CAAction {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)runActionForKey:(NSString *)event object:(id)anObject arguments:(NSDictionary *)dict;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "runActionForKey", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "object"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSDictionary", name = "arguments")
	})
	public abstract void runActionForKey(String event, Object anObject, Map dict);
}
