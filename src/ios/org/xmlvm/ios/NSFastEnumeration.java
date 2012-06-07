package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSFastEnumeration")
public interface NSFastEnumeration {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id *)stackbuf count:(NSUInteger)len;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "countByEnumeratingWithState", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSFastEnumerationState"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", name = "objects"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "count")
	})
	public abstract int countByEnumeratingWithState(Reference<NSFastEnumerationState> state, Object[] stackbuf, int len);
}
