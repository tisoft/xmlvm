package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSKeyedArchiverDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (id)archiver:(NSKeyedArchiver *)archiver willEncodeObject:(id)object;
	 */
	public abstract Object willEncodeObject(NSKeyedArchiver archiver, Object object);

	/**
	 * - (void)archiver:(NSKeyedArchiver *)archiver didEncodeObject:(id)object;
	 */
	public abstract void didEncodeObject(NSKeyedArchiver archiver, Object object);

	/**
	 * - (void)archiver:(NSKeyedArchiver *)archiver willReplaceObject:(id)object withObject:(id)newObject;
	 */
	public abstract void willReplaceObject(NSKeyedArchiver archiver, Object object, Object newObject);

	/**
	 * - (void)archiverWillFinish:(NSKeyedArchiver *)archiver;
	 */
	public abstract void archiverWillFinish(NSKeyedArchiver archiver);

	/**
	 * - (void)archiverDidFinish:(NSKeyedArchiver *)archiver;
	 */
	public abstract void archiverDidFinish(NSKeyedArchiver archiver);
}
