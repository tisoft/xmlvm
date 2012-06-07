package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSMachPortDelegate")
public interface NSMachPortDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)handleMachMessage:(void *)msg;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "handleMachMessage", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "void")
	})
	public abstract void handleMachMessage(byte[] msg);

	/*
	 * Interface Properties
	 */
}
