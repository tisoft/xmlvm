package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "EAAccessoryDelegate")
public interface EAAccessoryDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)accessoryDidDisconnect:(EAAccessory *)accessory ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "accessoryDidDisconnect", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "EAAccessory")
	})
	public abstract void accessoryDidDisconnect(EAAccessory accessory);
}
