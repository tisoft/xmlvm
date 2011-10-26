package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSPortDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)handlePortMessage:(NSPortMessage *)message;
	 */
	public abstract void handlePortMessage(NSPortMessage message);
}
