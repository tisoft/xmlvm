package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface SKRequestDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)requestDidFinish:(SKRequest *)request ;
	 */
	public abstract void requestDidFinish(SKRequest request);

	/**
	 * - (void)request:(SKRequest *)request didFailWithError:(NSError *)error ;
	 */
	public abstract void request(SKRequest request, NSError error);
}
