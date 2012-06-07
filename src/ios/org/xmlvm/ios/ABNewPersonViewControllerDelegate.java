package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "ABNewPersonViewControllerDelegate")
public interface ABNewPersonViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)newPersonViewController:(ABNewPersonViewController *)newPersonView didCompleteWithNewPerson:(ABRecordRef)person;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "newPersonViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ABNewPersonViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ABRecordRef", isStruct = true, name = "didCompleteWithNewPerson")
	})
	public abstract void newPersonViewController(ABNewPersonViewController newPersonView, ABRecord person);
}
