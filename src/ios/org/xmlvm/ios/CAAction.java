package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface CAAction {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)runActionForKey:(NSString *)event object:(id)anObject arguments:(NSDictionary *)dict;
	 */
	public abstract void runActionForKey(String event, Object anObject, Map dict);
}
