package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSKeyedUnarchiverDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (Class)unarchiver:(NSKeyedUnarchiver *)unarchiver cannotDecodeObjectOfClassName:(NSString *)name originalClasses:(NSArray *)classNames;
	 */
	public abstract Class cannotDecodeObjectOfClassName(NSKeyedUnarchiver unarchiver, String name, List classNames);

	/**
	 * - (id)unarchiver:(NSKeyedUnarchiver *)unarchiver didDecodeObject:(id)object;
	 */
	public abstract Object didDecodeObject(NSKeyedUnarchiver unarchiver, Object object);

	/**
	 * - (void)unarchiver:(NSKeyedUnarchiver *)unarchiver willReplaceObject:(id)object withObject:(id)newObject;
	 */
	public abstract void willReplaceObject(NSKeyedUnarchiver unarchiver, Object object, Object newObject);

	/**
	 * - (void)unarchiverWillFinish:(NSKeyedUnarchiver *)unarchiver;
	 */
	public abstract void unarchiverWillFinish(NSKeyedUnarchiver unarchiver);

	/**
	 * - (void)unarchiverDidFinish:(NSKeyedUnarchiver *)unarchiver;
	 */
	public abstract void unarchiverDidFinish(NSKeyedUnarchiver unarchiver);
}
