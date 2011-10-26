package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFAllocatorContext {

	/*
	 * Variables
	 */
	 public long version;
	 public byte[] info;
	 public Object retain;
	 public Object release;
	 public Object copyDescription;
	 public Object allocate;
	 public Object reallocate;
	 public Object deallocate;
	 public Object preferredSize;

	/*
	 * Constructors
	 */

	/** Default constructor */
	CFAllocatorContext() {}
}
