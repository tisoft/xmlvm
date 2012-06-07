package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class AVAsynchronousKeyValueLoading implements org.xmlvm.ios.AVAsynchronousKeyValueLoading {

	/*
	 * Instance methods
	 */

	/**
	 * - (AVKeyValueStatus)statusOfValueForKey:(NSString *)key error:(NSError **)outError;
	 */
	public int statusOfValueForKey(String key, Reference<NSError> outError){
		return 0;
	}
	/**
	 * - (void)loadValuesAsynchronouslyForKeys:(NSArray *)keys completionHandler:(void (^)(void))handler;
	 */
	public void loadValuesAsynchronouslyForKeys(List keys, Object handler){};}
