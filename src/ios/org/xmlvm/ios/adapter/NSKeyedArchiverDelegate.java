package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class NSKeyedArchiverDelegate implements org.xmlvm.ios.NSKeyedArchiverDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (id)archiver:(NSKeyedArchiver *)archiver willEncodeObject:(id)object;
	 */
	public Object willEncodeObject(NSKeyedArchiver archiver, Object object){
		return null;
	}
	/**
	 * - (void)archiver:(NSKeyedArchiver *)archiver didEncodeObject:(id)object;
	 */
	public void didEncodeObject(NSKeyedArchiver archiver, Object object){};
	/**
	 * - (void)archiver:(NSKeyedArchiver *)archiver willReplaceObject:(id)object withObject:(id)newObject;
	 */
	public void willReplaceObject(NSKeyedArchiver archiver, Object object, Object newObject){};
	/**
	 * - (void)archiverWillFinish:(NSKeyedArchiver *)archiver;
	 */
	public void archiverWillFinish(NSKeyedArchiver archiver){};
	/**
	 * - (void)archiverDidFinish:(NSKeyedArchiver *)archiver;
	 */
	public void archiverDidFinish(NSKeyedArchiver archiver){};}
