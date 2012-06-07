package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSStreamDelegate")
public interface NSStreamDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)stream:(NSStream *)aStream handleEvent:(NSStreamEvent)eventCode;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "stream", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSStream"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "handleEvent")
	})
	public abstract void stream(NSStream aStream, int eventCode);
}
