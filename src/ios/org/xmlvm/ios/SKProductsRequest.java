package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SKProductsRequest extends SKRequest {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithProductIdentifiers:(NSSet *)productIdentifiers ;
	 */
	public SKProductsRequest(Set productIdentifiers) {}

	/** Default constructor */
	SKProductsRequest() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) id <SKProductsRequestDelegate> delegate ;
	 */
	public SKProductsRequestDelegate getRequestDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id <SKProductsRequestDelegate> delegate ;
	 */
	public void setDelegate(SKProductsRequestDelegate delegate){
		throw new RuntimeException("Stub");
	}
}
