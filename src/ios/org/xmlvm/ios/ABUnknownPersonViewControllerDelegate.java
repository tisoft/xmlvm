package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "ABUnknownPersonViewControllerDelegate")
public interface ABUnknownPersonViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)unknownPersonViewController:(ABUnknownPersonViewController *)unknownCardViewController didResolveToPerson:(ABRecordRef)person;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "unknownPersonViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ABUnknownPersonViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ABRecordRef", isStruct = true, name = "didResolveToPerson")
	})
	public abstract void didResolveToPerson(ABUnknownPersonViewController unknownCardViewController, ABRecord person);

	/**
	 * - (BOOL)unknownPersonViewController:(ABUnknownPersonViewController *)personViewController shouldPerformDefaultActionForPerson:(ABRecordRef)person property:(ABPropertyID)property identifier:(ABMultiValueIdentifier)identifier ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "unknownPersonViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ABUnknownPersonViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ABRecordRef", isStruct = true, name = "shouldPerformDefaultActionForPerson"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "property"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "identifier")
	})
	public abstract boolean shouldPerformDefaultActionForPerson(ABUnknownPersonViewController personViewController, ABRecord person, int property, int identifier);
}
