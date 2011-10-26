package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface ABNewPersonViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)newPersonViewController:(ABNewPersonViewController *)newPersonView didCompleteWithNewPerson:(ABRecordRef)person;
	 */
	public abstract void newPersonViewController(ABNewPersonViewController newPersonView, ABRecord person);
}
