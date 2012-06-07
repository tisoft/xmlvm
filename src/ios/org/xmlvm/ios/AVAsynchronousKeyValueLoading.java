package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "AVAsynchronousKeyValueLoading")
public interface AVAsynchronousKeyValueLoading {

	/*
	 * Instance methods
	 */

	/**
	 * - (AVKeyValueStatus)statusOfValueForKey:(NSString *)key error:(NSError **)outError;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "statusOfValueForKey", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true)
	})
	public abstract int statusOfValueForKey(String key, Reference<NSError> outError);

	/**
	 * - (void)loadValuesAsynchronouslyForKeys:(NSArray *)keys completionHandler:(void (^)(void))handler;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "loadValuesAsynchronouslyForKeys", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true)
	})
	public abstract void loadValuesAsynchronouslyForKeys(List keys, Object handler);
}
