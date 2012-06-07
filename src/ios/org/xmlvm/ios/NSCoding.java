package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSCoding")
public interface NSCoding {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)encodeWithCoder:(NSCoder *)aCoder;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "encodeWithCoder", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSCoder")
	})
	public abstract void encodeWithCoder(NSCoder aCoder);
}
