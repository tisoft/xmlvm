package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSCacheDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)cache:(NSCache *)cache willEvictObject:(id)obj;
	 */
	public abstract void cache(NSCache cache, Object obj);
}
