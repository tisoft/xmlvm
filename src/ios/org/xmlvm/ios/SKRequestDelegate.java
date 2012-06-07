package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "SKRequestDelegate")
public interface SKRequestDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)requestDidFinish:(SKRequest *)request ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "requestDidFinish", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "SKRequest")
	})
	public abstract void requestDidFinish(SKRequest request);

	/**
	 * - (void)request:(SKRequest *)request didFailWithError:(NSError *)error ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "request", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "SKRequest"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "didFailWithError")
	})
	public abstract void request(SKRequest request, NSError error);
}
