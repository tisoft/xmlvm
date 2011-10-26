package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface AVAsynchronousKeyValueLoading {

	/*
	 * Instance methods
	 */

	/**
	 * - (AVKeyValueStatus)statusOfValueForKey:(NSString *)key error:(NSError **)outError;
	 */
	public abstract int statusOfValueForKey(String key, Reference<NSError> outError);

	/**
	 * - (void)loadValuesAsynchronouslyForKeys:(NSArray *)keys completionHandler:(void (^)(void))handler;
	 */
	public abstract void loadValuesAsynchronouslyForKeys(List keys, Object handler);
}
