package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSFastEnumeration {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id *)stackbuf count:(NSUInteger)len;
	 */
	public abstract int countByEnumeratingWithState(Reference<NSFastEnumerationState> state, Object[] stackbuf, int len);
}
