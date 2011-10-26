package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface SKProductsRequestDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response ;
	 */
	public abstract void productsRequest(SKProductsRequest request, SKProductsResponse response);
}
