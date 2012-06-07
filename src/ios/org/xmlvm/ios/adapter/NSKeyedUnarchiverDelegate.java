package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class NSKeyedUnarchiverDelegate implements org.xmlvm.ios.NSKeyedUnarchiverDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (Class)unarchiver:(NSKeyedUnarchiver *)unarchiver cannotDecodeObjectOfClassName:(NSString *)name originalClasses:(NSArray *)classNames;
	 */
	public Class cannotDecodeObjectOfClassName(NSKeyedUnarchiver unarchiver, String name, List classNames){
		return null;
	}
	/**
	 * - (id)unarchiver:(NSKeyedUnarchiver *)unarchiver didDecodeObject:(id)object;
	 */
	public Object didDecodeObject(NSKeyedUnarchiver unarchiver, Object object){
		return null;
	}
	/**
	 * - (void)unarchiver:(NSKeyedUnarchiver *)unarchiver willReplaceObject:(id)object withObject:(id)newObject;
	 */
	public void willReplaceObject(NSKeyedUnarchiver unarchiver, Object object, Object newObject){};
	/**
	 * - (void)unarchiverWillFinish:(NSKeyedUnarchiver *)unarchiver;
	 */
	public void unarchiverWillFinish(NSKeyedUnarchiver unarchiver){};
	/**
	 * - (void)unarchiverDidFinish:(NSKeyedUnarchiver *)unarchiver;
	 */
	public void unarchiverDidFinish(NSKeyedUnarchiver unarchiver){};}
