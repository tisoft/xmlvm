package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSMachPortDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)handleMachMessage:(void *)msg;
	 */
	public abstract void handleMachMessage(byte[] msg);
}
