package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSMutableCopying {

	/*
	 * Instance methods
	 */

	/**
	 * - (id)mutableCopyWithZone:(NSZone *)zone;
	 */
	public abstract Object mutableCopyWithZone(NSZone zone);
}
