package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSCopying {

	/*
	 * Instance methods
	 */

	/**
	 * - (id)copyWithZone:(NSZone *)zone;
	 */
	public abstract Object copyWithZone(NSZone zone);
}
