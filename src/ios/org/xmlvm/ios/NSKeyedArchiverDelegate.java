package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSKeyedArchiverDelegate")
public interface NSKeyedArchiverDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (id)archiver:(NSKeyedArchiver *)archiver willEncodeObject:(id)object;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "archiver", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSKeyedArchiver"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "willEncodeObject")
	})
	public abstract Object willEncodeObject(NSKeyedArchiver archiver, Object object);

	/**
	 * - (void)archiver:(NSKeyedArchiver *)archiver didEncodeObject:(id)object;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "archiver", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSKeyedArchiver"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "didEncodeObject")
	})
	public abstract void didEncodeObject(NSKeyedArchiver archiver, Object object);

	/**
	 * - (void)archiver:(NSKeyedArchiver *)archiver willReplaceObject:(id)object withObject:(id)newObject;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "archiver", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSKeyedArchiver"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "willReplaceObject"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "withObject")
	})
	public abstract void willReplaceObject(NSKeyedArchiver archiver, Object object, Object newObject);

	/**
	 * - (void)archiverWillFinish:(NSKeyedArchiver *)archiver;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "archiverWillFinish", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSKeyedArchiver")
	})
	public abstract void archiverWillFinish(NSKeyedArchiver archiver);

	/**
	 * - (void)archiverDidFinish:(NSKeyedArchiver *)archiver;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "archiverDidFinish", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSKeyedArchiver")
	})
	public abstract void archiverDidFinish(NSKeyedArchiver archiver);
}
