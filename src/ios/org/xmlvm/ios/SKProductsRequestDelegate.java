package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "SKProductsRequestDelegate")
public interface SKProductsRequestDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "productsRequest", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "SKProductsRequest"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "SKProductsResponse", name = "didReceiveResponse")
	})
	public abstract void productsRequest(SKProductsRequest request, SKProductsResponse response);

	/*
	 * Interface Properties
	 */
}
