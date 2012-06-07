package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "ABPersonViewControllerDelegate")
public interface ABPersonViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)personViewController:(ABPersonViewController *)personViewController shouldPerformDefaultActionForPerson:(ABRecordRef)person property:(ABPropertyID)property identifier:(ABMultiValueIdentifier)identifier;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "personViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ABPersonViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ABRecordRef", isStruct = true, name = "shouldPerformDefaultActionForPerson"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "property"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "identifier")
	})
	public abstract boolean personViewController(ABPersonViewController personViewController, ABRecord person, int property, int identifier);
}
