package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSKeyedUnarchiverDelegate")
public interface NSKeyedUnarchiverDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (Class)unarchiver:(NSKeyedUnarchiver *)unarchiver cannotDecodeObjectOfClassName:(NSString *)name originalClasses:(NSArray *)classNames;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "unarchiver", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSKeyedUnarchiver"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "cannotDecodeObjectOfClassName"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "originalClasses")
	})
	public abstract Class cannotDecodeObjectOfClassName(NSKeyedUnarchiver unarchiver, String name, List classNames);

	/**
	 * - (id)unarchiver:(NSKeyedUnarchiver *)unarchiver didDecodeObject:(id)object;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "unarchiver", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSKeyedUnarchiver"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "didDecodeObject")
	})
	public abstract Object didDecodeObject(NSKeyedUnarchiver unarchiver, Object object);

	/**
	 * - (void)unarchiver:(NSKeyedUnarchiver *)unarchiver willReplaceObject:(id)object withObject:(id)newObject;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "unarchiver", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSKeyedUnarchiver"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "willReplaceObject"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "withObject")
	})
	public abstract void willReplaceObject(NSKeyedUnarchiver unarchiver, Object object, Object newObject);

	/**
	 * - (void)unarchiverWillFinish:(NSKeyedUnarchiver *)unarchiver;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "unarchiverWillFinish", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSKeyedUnarchiver")
	})
	public abstract void unarchiverWillFinish(NSKeyedUnarchiver unarchiver);

	/**
	 * - (void)unarchiverDidFinish:(NSKeyedUnarchiver *)unarchiver;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "unarchiverDidFinish", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSKeyedUnarchiver")
	})
	public abstract void unarchiverDidFinish(NSKeyedUnarchiver unarchiver);
}
