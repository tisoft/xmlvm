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
	public SKProductsRequest() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) id <SKProductsRequestDelegate> delegate ;
	 */
	public org.xmlvm.ios.SKProductsRequestDelegate getRequestDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id <SKProductsRequestDelegate> delegate ;
	 */
	public void setDelegate(org.xmlvm.ios.SKProductsRequestDelegate delegate){
		throw new RuntimeException("Stub");
	}
}
