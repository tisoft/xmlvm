package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "EAGLDrawable")
public interface EAGLDrawable {

	/*
	 * Properties
	 */

	/**
	 * @property(copy) NSDictionary* drawableProperties;
	 */
	public abstract Map getDrawableProperties();

	/**
	 * @property(copy) NSDictionary* drawableProperties;
	 */
	public abstract void setDrawableProperties(Map drawableProperties);
}
