package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSPortDelegate")
public interface NSPortDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)handlePortMessage:(NSPortMessage *)message;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "handlePortMessage", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSPortMessage")
	})
	public abstract void handlePortMessage(NSPortMessage message);
}
